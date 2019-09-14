#pragma once
#include <list>
#include <queue>
#include <set>
#include <string>
#include "Scene/IsettaLevel.h"

#include "Core/Memory/TemplatePoolAllocator.h"
#include "Core/IsettaAlias.h"
namespace Isetta {

class XLevel : public Isetta::Level, public Isetta::LevelRegistry<XLevel> {
public:
	bool IsRegisteredInLevelManager() const { return registered;}
	static inline Isetta::Func<XLevel*> CreateMethod = []() {
		return Isetta::MemoryManager::NewOnStack<XLevel>();
	};
	static std::string GetLevelName() { return "XLevel"; }
	std::string GetName() const override { return "XLevel"; }
private:
	void Load() override;
};


}
