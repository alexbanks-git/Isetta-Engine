#pragma once
#include "Graphics/RectTransform.h"
#include "Scene/Component.h"

namespace Isetta {
/**
 * @brief Inspector shows debug information of selected transform including:
 * transformational information (position/rotation/scale), components, entity
 * information
 *
 */
DEFINE_COMPONENT(Inspector, Component, false)
public:

class Transform* target;

Inspector(std::string title, bool isOpen, bool isStatic = false,class Transform* target = nullptr);
void GuiUpdate() override;

void Open();
bool IsSelected(const Transform* const transform) const;
void SetAsInstance(bool isStatic = true);

static const Inspector* Instance();

private:
std::string title;
bool isOpen = true;
static Inspector* instance;
RectTransform rectTransform{{30, 300, 350, 300}};
DEFINE_COMPONENT_END(Inspector, Component)
}  // namespace Isetta
