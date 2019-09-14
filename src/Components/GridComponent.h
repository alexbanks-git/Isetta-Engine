/*
 * Copyright (c) 2018 Isetta
 */
#pragma once
#include "Core/Math/Vector2.h"
#include "Scene/Component.h"

namespace Isetta {
/**
 * @brief Draws a debug grid and axis at the origin to help orient, hidden
 * without _EDITOR
 *
 */
DEFINE_COMPONENT(GridComponent, Component, false)
public:

void Update() override;

DEFINE_COMPONENT_END(GridComponent, Component)
}  // namespace Isetta
