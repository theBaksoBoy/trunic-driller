package main

import rl "vendor:raylib"



main :: proc()
{
    // this is just used so that the window can be initialized with the same resolution as the active monitor
    monitor := rl.GetCurrentMonitor()
    rl.InitWindow(rl.GetMonitorWidth(monitor), rl.GetMonitorHeight(monitor), "trunic driller")
    rl.ToggleFullscreen()
    //rl.SetExitKey(.KEY_NULL) // this is done to make ESC not quit the game. Stupid default setting
    rl.SetTargetFPS(60)

    for !rl.WindowShouldClose() {
        Update()
        Draw()
    }
    rl.CloseWindow()
}



Update :: proc()
{
    
}



Draw :: proc()
{
    rl.BeginDrawing()
    rl.ClearBackground({20, 15, 15, 255}) // set background to this









    rl.EndDrawing()
}
