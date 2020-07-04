#pragma once
#include "WindowContainer.h"
#include <ctime>
class Engine : WindowContainer
{
public:
	bool Initialize(HINSTANCE hInstance, std::string window_title, std::string window_class, int width, int height);
	bool ProcessMessages();
	void Update();
	void RenderFrame();
	ULONG ticks = 0;
private:

};