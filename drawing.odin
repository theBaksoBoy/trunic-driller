package main

import rl "vendor:raylib"
import "core:fmt"



LINE_WIDTH : f32 : 0.005
ERASER_SIZE : f32 : 0.01

drawing_strokes: [dynamic]DrawingStroke

is_stroke_being_drawn: bool = false
drawing_stroke_start: rl.Vector2 // start position of the currently-being-drawn stroke
in_progress_drawing_stroke: DrawingStroke

eraser_mode: bool = false



DrawingStroke :: struct {
    start: rl.Vector2,
    end: rl.Vector2,
    is_line: bool, // true: is line. false: is ring
}



UpdateDrawing :: proc()
{
    if is_stroke_being_drawn do UpdateInProgressDrawingStroke()

    eraser_mode = rl.IsMouseButtonDown(.RIGHT)

    if eraser_mode do EraseStrokesTouchingEraser()
}



StartDrawingStroke :: proc()
{
    if program_state == .MENU do return
    
    is_stroke_being_drawn = true
    drawing_stroke_start = rl.GetMousePosition()
}



EndDrawingStroke :: proc()
{
    is_stroke_being_drawn = false
    append(&drawing_strokes, DrawingStroke{
        drawing_stroke_start,
        rl.GetMousePosition(),
        DoesLineMakeStroke(drawing_stroke_start, rl.GetMousePosition())})
}



UpdateInProgressDrawingStroke :: proc()
{
    in_progress_drawing_stroke = DrawingStroke{
        drawing_stroke_start,
        rl.GetMousePosition(),
        DoesLineMakeStroke(drawing_stroke_start, rl.GetMousePosition())
    }
}



// checks if a line should create a stroke or a ring depending on its length
DoesLineMakeStroke :: proc(start, end: rl.Vector2) -> bool
{
    dx := end.x - start.x
    dy := end.y - start.y
    return dx*dx + dy*dy > f32(rl.GetScreenWidth()) * 0.005
}



DrawAllDrawingStrokes :: proc()
{
    for &drawing_stroke in drawing_strokes {
        DrawDrawingStroke(&drawing_stroke, false)
    }

    if is_stroke_being_drawn {
        DrawDrawingStroke(&in_progress_drawing_stroke, true)
    }
}



DrawDrawingStroke :: proc(drawing_stroke: ^DrawingStroke, always_draw_as_line: bool)
{
    line_width := LINE_WIDTH * f32(rl.GetScreenWidth())
    
    if drawing_stroke.is_line || always_draw_as_line {
        rl.DrawLineEx(drawing_stroke.start, drawing_stroke.end, line_width, {255, 255, 255, 255})
        rl.DrawCircleV(drawing_stroke.start, line_width * 0.5, {255, 255, 255, 255})
        rl.DrawCircleV(drawing_stroke.end, line_width * 0.5, {255, 255, 255, 255})
    }
    else {
        rl.DrawRing(drawing_stroke.start, line_width * 0.5, line_width * 1.5, 0, 360, 32, {255, 255, 255, 255})
    }
}



DrawEraser :: proc()
{
    if !eraser_mode do return

    eraser_size := ERASER_SIZE * f32(rl.GetScreenWidth())
    line_width: f32 = (max(1, f32(rl.GetScreenWidth()) * 0.0005))
    
    rl.DrawRing(rl.GetMousePosition(), eraser_size, eraser_size - line_width, 0, 360, 32, {100, 100, 100, 255})
}



ClearDrawingStrokes :: proc()
{
    clear(&drawing_strokes)
}



EraseStrokesTouchingEraser :: proc()
{ 
    squared_distance_until_touching_line: f32 = (ERASER_SIZE + LINE_WIDTH*0.5) * f32(rl.GetScreenWidth()) * (ERASER_SIZE + LINE_WIDTH*0.5) * f32(rl.GetScreenWidth())
    squared_distance_until_touching_ring: f32 = (ERASER_SIZE + LINE_WIDTH*0.5)*1.5 * f32(rl.GetScreenWidth()) * (ERASER_SIZE + LINE_WIDTH*0.5)*1.5 * f32(rl.GetScreenWidth())

    for drawing_stroke, i in drawing_strokes {

        squared_distance_until_touching: f32
        if drawing_stroke.is_line do squared_distance_until_touching = squared_distance_until_touching_line
        else do squared_distance_until_touching = squared_distance_until_touching_ring
        
        if GetSquaredDistanceFromPointToLine(rl.GetMousePosition(), drawing_stroke.start, drawing_stroke.end) < squared_distance_until_touching {
            unordered_remove(&drawing_strokes, i)
        }
    }
}
