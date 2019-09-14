/*
 * Copyright (c) 2018 Isetta
 */
#pragma once
#include "imgui/libs/gl3w/GL/gl3w.h"
#include <string>
#include "Core/Config/CVar.h"
#include "GLFW/glfw3.h"
#include "Window.h"

namespace Isetta::Math {
class Vector2;
}

namespace Isetta {
class WindowModule {
 public:
  struct WindowConfig {
    CVar<int> windowWidth{"window_width", 1280};
    CVar<int> windowHeight{"window_height", 720};
    CVarString windowTitle{"window_title", "Game"};
    CVar<int> windowFullScreen{"window_fullscreen", 0};
    CVar<int> windowShowCursor{"window_show_cursor", 1};
  };

 private:
  WindowModule() = default;
  ~WindowModule() = default;

  int xPos, yPos, width, height;
  GLFWcursor* customCursor;
  Window::Cursor cursor;

  void StartUp();
  void Update(float deltaTime);
  void ShutDown();

  void InitWindow();
  // GLFWmonitor* GetCurrentMonitor() const;
  void SetFullscreen(bool fullscreen);

  GLFWwindow* winHandle;

  friend class EngineLoop;
  friend class StackAllocator;
  friend class Window;
};
}  // namespace Isetta
