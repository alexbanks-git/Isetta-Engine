#pragma once
#include "Scene/Component.h"

namespace Isetta {
DEFINE_COMPONENT(NetworkMonitor,Component,false)
public:
		void GuiUpdate() override;
DEFINE_COMPONENT_END(NetworkMonitor, Component)

}
