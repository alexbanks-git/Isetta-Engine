/*
 * Copyright (c) 2018 Isetta
 */
#pragma once
#include "Core/IsettaAlias.h"

namespace Isetta {
enum class KeyCode {
  NONE,
  SPACE,
  APOSTROPHE,
  COMMA,
  MINUS,
  PERIOD,
  SLASH,
  NUM0,
  NUM1,
  NUM2,
  NUM3,
  NUM4,
  NUM5,
  NUM6,
  NUM7,
  NUM8,
  NUM9,
  SEMICOLON,
  EQUAL,
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
  N,
  O,
  P,
  Q,
  R,
  S,
  T,
  U,
  V,
  W,
  X,
  Y,
  Z,
  LEFT_BRACKET,
  BACKSLASH,
  RIGHT_BRACKET,
  GRAVE_ACCENT,
  ESCAPE,
  ENTER,
  TAB,
  BACKSPACE,
  INSERT,
  DEL,
  RIGHT_ARROW,
  LEFT_ARROW,
  DOWN_ARROW,
  UP_ARROW,
  PAGE_UP,
  PAGE_DOWN,
  HOME,
  END,
  CAPS_LOCK,
  SCROLL_LOCK,
  NUM_LOCK,
  PRINT_SCREEN,
  PAUSE,
  F1,
  F2,
  F3,
  F4,
  F5,
  F6,
  F7,
  F8,
  F9,
  F10,
  F11,
  F12,
  F13,
  F14,
  F15,
  F16,
  F17,
  F18,
  F19,
  F20,
  F21,
  F22,
  F23,
  F24,
  F25,
  KP_0,
  KP_1,
  KP_2,
  KP_3,
  KP_4,
  KP_5,
  KP_6,
  KP_7,
  KP_8,
  KP_9,
  KP_DECIMAL,
  KP_DIVIDE,
  KP_MULTIPLY,
  KP_SUBTRACT,
  KP_ADD,
  KP_ENTER,
  KP_EQUAL,
  LEFT_SHIFT,
  LEFT_CONTROL,
  LEFT_ALT,
  LEFT_SUPER,
  RIGHT_SHIFT,
  RIGHT_CONTROL,
  RIGHT_ALT,
  RIGHT_SUPER,
  MENU
};
enum class MouseButton { LEFT, RIGHT, MIDDLE };
enum class ModifierKeys : U8 {
  SHIFT = 1 << 0,
  CTRL = 1 << 1,
  ALT = 1 << 2,
  SUPER = 1 << 3
};
inline ModifierKeys operator|(ModifierKeys lhs, ModifierKeys rhs) {
  return (ModifierKeys)(static_cast<U8>(lhs) | static_cast<U8>(rhs));
}

enum class GamepadAxis {
  L_HORIZONTAL,
  L_VERTICAL,
  R_HORIZONTAL,
  R_VERTICAL,
  L_TRIGGER,
  R_TRIGGER,
  ALL
};

enum class GamepadButton {
  A,
  B,
  X,
  Y,
  LEFT_BUMPER,
  RIGHT_BUMPER,
  BACK,
  START,
  GUIDE,
  LEFT_THUMB,
  RIGHT_THUMB,
  DPAD_UP,
  DPAD_RIGHT,
  DPAD_DOWN,
  DPAD_LEFT,
  ALL,
};
}  // namespace Isetta