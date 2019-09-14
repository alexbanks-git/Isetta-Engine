/*
 * Copyright (c) 2018 Isetta
 */
#pragma once

#include <functional>
#include "Core/Config/CVar.h"
#include "Core/DataStructures/Delegate.h"
#include "Core/DataStructures/RingBuffer.h"
#include "Core/Time/Clock.h"
#include "Networking/ClientInfo.h"
#include "Networking/Messages.h"

#include "yojimbo/yojimbo.h"

namespace Isetta {
/**
 * @brief Controls the networking side of the engine, including both client and
 * server logic. Uses yojimbo, netcode.io, and reliable.io. Any networking for
 * engine or game is done through this module via the NetworkManager class.
 */
class NetworkingModule {
 public:
  /**
   * @brief Networking configuration CVar struct
   *
   */
  struct NetworkConfig {
	  CVarString ipPrefix{"ip_prefix", "127"};
    /// Default client IP address
    CVarString defaultClientIP{"default_client_ip", "0.0.0.0"};
    /// Default server IP address
    CVarString defaultServerIP{"default_server_ip", "127.0.0.1"};
    /// Connects the local client to the remote server
    CVar<int> connectToServer{"connect_to_server", 1};
    /// Runs a local server
    CVar<int> runServer{"run_server", 0};
    /// Default port to use when creating a client.
    CVar<U16> clientPort{"client_port", 30000};
    /// Default port to use when creating a server.
    CVar<U16> serverPort{"server_port", 40000};
    /// Number of bytes used for a private key for the server.
    CVar<int> keyBytes{"key_bytes", 32};
    /// Maximum number of clients the server will support.
    CVar<int> maxClients{"max_clients", 4};
    /// Number of messages the client can have in its send queue before messages
    /// will be overwritten.
    CVar<int> clientQueueSize{"client_queue_size", 256};
    /// Number of messages the server can have in its send queue to an
    /// individual client before messages will be overwritten.
    CVar<int> serverQueueSizePerClient{"server_queue_size_per_client", 256};
    /// Number of possible networked IDs
    CVar<int> maxNetID{"max_network_id", 65000};
    /// Timeout for client disconnect
    CVar<int> timeout{"network_timeout", 20};
  };

 private:
  static CustomAdapter NetworkAdapter;


  Clock clock;

  yojimbo::ClientServerConfig yojimboConfig;
  U8* privateKey;
  // ------------------- Server Stuff -------------------
  yojimbo::Address serverAddress;
  yojimbo::Server* server;
  NetworkAllocator* serverAllocator;
  RingBuffer<yojimbo::Message*>* serverSendBufferArray;
  ClientInfo* clientInfos;
  Delegate<ClientInfo> onClientConnected;
  Delegate<ClientInfo> onClientDisconnected;
  bool* wasClientConnectedLastFrame;
  int clientConnectedCallbackHandle;
  // ------------------- Client Stuff -------------------
  yojimbo::Address clientAddress;
  yojimbo::Client* client;
  NetworkAllocator* clientAllocator;
  U64 clientId;
  RingBuffer<yojimbo::Message*>* clientSendBuffer;
  Delegate<> onConnectedToServer;
  Delegate<> onDisconnectedFromServer;
  bool wasClientRunningLastFrame;
  int loadLevelCallbackHandle;

  // Constructors
  NetworkingModule() = default;
  ~NetworkingModule() = default;

  // Module functions

  void StartUp();

  void Update(float deltaTime);

  void ShutDown();

  void AddClientToServerMessage(yojimbo::Message* message) const;

  void AddServerToClientMessage(int clientIdx, yojimbo::Message* message);

  void PumpClientServerUpdate(double time);

  void SendClientToServerMessages() const;

  void SendServerToClientMessages(int clientIdx) const;

  void ProcessClientToServerMessages(int clientIdx) const;

  void ProcessServerToClientMessages() const;

  void Connect(const char* serverAddress, int serverPort,Action<NetworkManager::ClientState> callback = nullptr);

  void Disconnect() const;

  void CreateServer(const char* address, int port);

  void CloseServer();

  bool IsClient() const;
  bool IsHost() const;
  bool IsServer() const;

  bool IsClientRunning() const;
  bool IsServerRunning() const;
  bool IsClientConnected(int clientIndex) const;

  // Other

  friend class NetworkManager;
  friend class EngineLoop;
  friend class StackAllocator;
};
}  // namespace Isetta
