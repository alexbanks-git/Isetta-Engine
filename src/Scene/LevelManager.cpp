/*
 * Copyright (c) 2018 Isetta
 */
#include "Scene/LevelManager.h"
#include "Core/Config/Config.h"
#include "Core/Debug/Logger.h"
#include "Scene/Level.h"

namespace Isetta {
LevelManager& LevelManager::Instance() {
  static LevelManager instance;
  return instance;
}

bool LevelManager::Register(const std::string_view name, Func<Level*> level) {
  std::cout << "LevelManager::Register"<< std::endl;
  levels.insert_or_assign(SID(name.data()), level);
  levelNames.push_back(name.data());
  return true;
}

std::vector<std::string> LevelManager::GetLevelNames() const {
  return levelNames;
}

void LevelManager::LoadLevel() {

  if (pendingLoadLevel != nullptr) {
	  LOG("pendingLoadLevel != nullptr");
    if (loadedLevel != nullptr) {
    	LOG("LoadedLevel != nullptr");
      UnloadLevel();
    }

    loadedLevel = pendingLoadLevel;

    pendingLoadLevel = nullptr;
    LOG("Loading......%s", loadedLevel->GetName().c_str());
    std::cout << "LevelManager:lOADlEVEL: "<< loadedLevel->GetName().c_str() << std::endl;
    loadedLevel->Load();

    LOG("Loading Complete");

    loadedLevel->isLevelLoaded = true;
  }
}

void LevelManager::UnloadLevel() {
  if (loadedLevel != nullptr) {
    loadedLevel->Unload();
    LOG("Unloaded: %s", loadedLevel->GetName().c_str());
    loadedLevel->~Level();
    loadedLevel = nullptr;
  }
}

void LevelManager::LoadLevel(std::string_view levelName) {
  std::cout << "method LoadLevel begin :" << levelName << std::endl;
  StringId id = SID(levelName.data());
  std::cout << "method LoadLevel SID:" << id << std::endl;
  pendingLoadLevel = levels.at(id)();

  //pendingLoadLevel = levels.at(SID(levelName.data()))();
  std::cout << "method LoadLevel end :" << levelName << std::endl;
}

}  // namespace Isetta
