package main

import rl "vendor:raylib"



main :: proc()
{
    rl.SetConfigFlags({.WINDOW_RESIZABLE})
    rl.InitWindow(700, 700, "trunic driller")
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
