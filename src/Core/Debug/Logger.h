#pragma once

#define __FILENAME__ \
  (strrchr(__FILE__, '/') ? strrchr(__FILE__, '/') + 1 : __FILE__)

//#include <Windows.h>
#include <bitset>
#include <cstdint>
#include <initializer_list>
#include <string>
#include "Core/Config/CVar.h"
#include "Core/Debug/Debug.h"
#include "Core/IsettaAlias.h"

namespace Isetta {
#define LOG Isetta::LogObject(__FILENAME__, __LINE__)
#define LOG_INFO \
  Isetta::LogObject(__FILENAME__, __LINE__, Isetta::Debug::Verbosity::Info)
#define LOG_WARNING \
  Isetta::LogObject(__FILENAME__, __LINE__, Isetta::Debug::Verbosity::Warning)
#define LOG_ERROR \
  Isetta::LogObject(__FILENAME__, __LINE__, Isetta::Debug::Verbosity::Error)

class  Logger {
 public:

  struct LoggerConfig {

    CVar<int> breakOnError{"break_on_error", 1};

    CVar<int> bytesToBuffer{"bytes_to_buffer", 10000};

    CVarString logFolder{"logger_folder", "Logs"};
  };

  static std::bitset<static_cast<int>(Debug::Channel::All)> channelMask;
  static std::bitset<static_cast<int>(Debug::Verbosity::All) - 1> verbosityMask;

  static Action<const char*> outputCallback;

  static bool CheckChannelMask(const Debug::Channel channel);

  static bool CheckVerbosity(const Debug::Verbosity verbosity);

  static void NewSession();

  static void ShutDown();

  static int DebugPrintF(const std::string file, const int line,
                         const Debug::Channel channel,
                         const Debug::Verbosity verbosity,
                         const std::string format, va_list argList);

 protected:

  static int VDebugPrintF(const Debug::Channel channel,
                          const Debug::Verbosity verbosity,
                          const std::string format, va_list argList);

 private:

  Logger() = default;

  /// The file path of the engine log file (with timestamp)
  static std::string engineFileName;
  /// The file path of the channel log file (with timestamp)
  static std::string channelFileName;
  /// The stream containing all the characters before pushing to the engine file
  static std::ostringstream engineStream;
  /// The stream containing the filtered channel characters before pushing to
  /// the channel file
  static std::ostringstream channelStream;


  static void BufferWrite(const std::string fileName,
                          std::ostringstream* stream, const char* buffer);
};  // namespace Isetta


struct  LogObject {

  std::string file;

  int line;

  Debug::Verbosity verbosity = Debug::Verbosity::Info;


  LogObject(const std::string file, const int line) : file{file}, line{line} {}

  LogObject(const std::string file, const int line, Debug::Verbosity verbosity)
      : file{file}, line{line}, verbosity{verbosity} {}


  void operator()(const Debug::Channel channel,
                  const Debug::Verbosity verbosity, const char* inFormat,
                  ...) const;

  void operator()(const Debug::Channel channel,
                  const Debug::Verbosity verbosity,
                  const std::string& inFormat) const;

  void operator()(const Debug::Channel channel,
                  const Debug::Verbosity verbosity,
                  const std::initializer_list<std::string>& inFormat) const;


  void operator()(const Debug::Channel channel, const char* inFormat,
                  ...) const;

  void operator()(const Debug::Channel channel,
                  const std::string& inFormat) const;

  void operator()(const Debug::Channel channel,
                  const std::initializer_list<std::string>& inFormat) const;


  void operator()(const char* inFormat, ...) const;

  void operator()(const std::string& inFormat) const;

  void operator()(const std::initializer_list<std::string>& inFormat) const;
};
}  // namespace Isetta
