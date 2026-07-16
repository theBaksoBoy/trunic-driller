package main

import rl "vendor:raylib"
import "core:os"
import "core:fmt"



SPACE_WIDTH: f32 = 0.5
SYMBOL_WIDTH: f32 = 0.5
RUNE_WIDTH: f32 = 1
RUNE_MIDDLE_HEIGHT: f32 = 0.35
RUNE_TOP_HEIGHT: f32 = 0.60
RUNE_LINE_RADIUS: f32 = 0.05


// contents of this variable is the trunic that will be drawn on the screen
trunic_to_display: ^TrunicRuneRow



TrunicRune :: struct {
    x_position: f32,
    vowel: rune,
    consonant: rune,
    symbol: rune, // if a symbol like .,!" should be used then fill that in here. Otherwise leave it as a space: ' '
    vowel_first: bool,
}



TrunicRuneRow :: struct {
    trunic_rune_array: [dynamic]TrunicRune,
    width: f32,
}



// these are based off of how the symbols are interpreted as the trunic rune, and not the english alphabet
CharType :: enum {
    VOWEL,
    CONSONANT,
    SYMBOL,
}
GetCharType :: proc(char: rune) -> CharType
{
    switch (char) {
    case 'o', 'U', 'a', 'G', 'F', 'e', 'L', 'B', 'I', 'V', 'R', 'Y', 'E', 'A', 'Z', 'i', 'x', 'W':
        return .VOWEL
    case 'N', 'H', 'T', 'S', 't', 'w', 's', 'r', 'k', 'p', 'f', 'g', 'd', 'n', 'm', 'z', 'j', 'v', 'c', 'h', 'M', 'y', 'l', 'b':
        return .CONSONANT
    case:
        return .SYMBOL
    }
}



main :: proc()
{
    rl.SetConfigFlags({.WINDOW_RESIZABLE})
    rl.InitWindow(700, 700, "trunic driller")
    rl.SetTargetFPS(60)

    // TESTING
    test_trunic_string: string = "test striN?! pFnis BnZs."
    trunic_rune_row := TrunicStringToTrunicRuneRow(test_trunic_string)
    defer delete(trunic_rune_row.trunic_rune_array)
    trunic_to_display = &trunic_rune_row

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

    for trunic_rune in trunic_to_display.trunic_rune_array {
        DrawTrunicRune(trunic_rune, 100, trunic_to_display.width)
    }







    rl.EndDrawing()
}



DrawTrunicRune :: proc(trunic_rune: TrunicRune, scale: f32, row_width: f32)
{
    pos: rl.Vector2 = {trunic_rune.x_position * scale, 500} + {f32(rl.GetScreenWidth())*0.5 - row_width*0.5 * scale, 0}

    if trunic_rune.symbol != ' ' {
        switch (trunic_rune.symbol) {
        case '.':
            rl.DrawCircleV(pos + {RUNE_WIDTH * 0.3 * scale, (RUNE_MIDDLE_HEIGHT + RUNE_TOP_HEIGHT) * scale}, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
        case ',':
            mid := pos + {RUNE_WIDTH * 0.3 * scale, (RUNE_MIDDLE_HEIGHT + RUNE_TOP_HEIGHT) * scale}
            rl.DrawTriangle(mid + {0.1 * RUNE_WIDTH * scale, -0.1 * RUNE_WIDTH * scale}, mid + {-0.1 * RUNE_WIDTH * scale, -0.1 * RUNE_WIDTH * scale}, mid + {-0.15 * RUNE_WIDTH * scale, 0.1 * RUNE_WIDTH * scale}, {255, 255, 255, 255})
        case '!':
            rl.DrawCircleV(pos + {RUNE_WIDTH * 0.3 * scale, (RUNE_MIDDLE_HEIGHT + RUNE_TOP_HEIGHT*2) * scale}, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})

            p0: rl.Vector2 = pos + {RUNE_WIDTH * 0.3 * scale, (RUNE_MIDDLE_HEIGHT*2 + RUNE_TOP_HEIGHT) * scale}
            p1: rl.Vector2 = pos + {RUNE_WIDTH * 0.3 * scale, RUNE_TOP_HEIGHT*0.5 * scale}
            
            rl.DrawLineEx(p0, p1, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
            rl.DrawCircleV(p0, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
            rl.DrawCircleV(p1, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
        case '?':
            rl.DrawCircleV(pos + {RUNE_WIDTH * 0.3 * scale, (RUNE_MIDDLE_HEIGHT + RUNE_TOP_HEIGHT*2) * scale}, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})

            p0: rl.Vector2 = pos + {RUNE_WIDTH * 0.1 * scale, (RUNE_TOP_HEIGHT*0.5) * scale}
            p1: rl.Vector2 = pos + {RUNE_WIDTH * 0.5 * scale, (RUNE_TOP_HEIGHT*0.5) * scale}
            p2: rl.Vector2 = pos + {RUNE_WIDTH * 0.5 * scale, (RUNE_TOP_HEIGHT*0.5 + RUNE_MIDDLE_HEIGHT) * scale}
            p3: rl.Vector2 = pos + {RUNE_WIDTH * 0.2 * scale, (RUNE_TOP_HEIGHT*0.5 + RUNE_MIDDLE_HEIGHT*1.5) * scale}
            p4: rl.Vector2 = pos + {RUNE_WIDTH * 0.3 * scale, (RUNE_MIDDLE_HEIGHT*2 + RUNE_TOP_HEIGHT) * scale}

            rl.DrawLineEx(p0, p1, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
            rl.DrawLineEx(p1, p2, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
            rl.DrawLineEx(p2, p3, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
            rl.DrawLineEx(p3, p4, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
            rl.DrawCircleV(p0, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
            rl.DrawCircleV(p1, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
            rl.DrawCircleV(p2, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
            rl.DrawCircleV(p3, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
            rl.DrawCircleV(p4, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
        case: // crash if the symbol is unknown
            fmt.println("no support for rendering of the following symbol:", trunic_rune.symbol)
            os.exit(1)
        }
        return
    }

    // render the rune as a typical rune and not a symbol
    
    // figure out what lines in the trunic rune should be visible and not
    lines: []bool = { false, false, false, false, false, false, false, false, false, false, false }
    // index order (good luck deciphering this mess)
    //   /|\    7|6
    //  |\|/   |012
    //  +---   8---
    //  |/|\   |345
    //   \|/    9|10

    switch (trunic_rune.consonant) {
    case 'N':
        lines[0] = true; lines[1] = true; lines[2] = true; lines[3] = true; lines[4] = true; lines[5] = true; 
    case 'H':
        lines[0] = true; lines[1] = true; lines[2] = true; lines[3] = true; lines[5] = true; 
    case 'T':
        lines[0] = true; lines[1] = true; lines[2] = true; lines[4] = true;
    case 'S':
        lines[0] = true; lines[2] = true; lines[3] = true; lines[4] = true; lines[5] = true; 
    case 't':
        lines[0] = true; lines[2] = true; lines[4] = true;
    case 'w':
        lines[0] = true; lines[2] = true;
    case 's':
        lines[1] = true; lines[2] = true; lines[3] = true; lines[4] = true;
    case 'r':
        lines[1] = true; lines[2] = true; lines[4] = true;
    case 'k':
        lines[1] = true; lines[2] = true; lines[5] = true;
    case 'p':
        lines[2] = true; lines[4] = true;
    case 'f':
        lines[2] = true; lines[3] = true; lines[4] = true;
    case 'g':
        lines[2] = true; lines[4] = true; lines[5] = true;
    case 'd':
        lines[1] = true; lines[3] = true; lines[5] = true;
    case 'n':
        lines[0] = true; lines[3] = true; lines[5] = true;
    case 'm':
        lines[3] = true; lines[5] = true;
    case 'z':
        lines[0] = true; lines[1] = true; lines[4] = true; lines[5] = true;
    case 'j':
        lines[0] = true; lines[1] = true; lines[4] = true;
    case 'v':
        lines[0] = true; lines[1] = true; lines[5] = true;
    case 'c':
        lines[0] = true; lines[4] = true;
    case 'h':
        lines[1] = true; lines[4] = true; lines[5] = true;
    case 'M':
        lines[1] = true; lines[3] = true; lines[4] = true; lines[5] = true;
    case 'y':
        lines[1] = true; lines[3] = true;
    case 'l':
        lines[1] = true; lines[4] = true;
    case 'b':
        lines[1] = true; lines[5] = true;
    }

    switch (trunic_rune.vowel) {
    case 'o':
        lines[6] = true; lines[7] = true; lines[8] = true; lines[9] = true; lines[10] = true; 
    case 'U':
        lines[6] = true; lines[7] = true; lines[8] = true; lines[9] = true;
    case 'a':
        lines[6] = true; lines[7] = true; lines[8] = true;
    case 'G':
        lines[7] = true; lines[8] = true;
    case 'F':
        lines[7] = true; lines[8] = true; lines[9] = true; lines[10] = true; 
    case 'e':
        lines[8] = true; lines[9] = true; lines[10] = true; 
    case 'L':
        lines[8] = true; lines[9] = true;
    case 'B':
        lines[7] = true;
    case 'I':
        lines[6] = true;
    case 'V':
        lines[6] = true; lines[8] = true; lines[9] = true; lines[10] = true; 
    case 'R':
        lines[6] = true; lines[7] = true; lines[8] = true; lines[10] = true; 
    case 'Y':
        lines[7] = true; lines[8] = true; lines[10] = true; 
    case 'E':
        lines[8] = true; lines[10] = true; 
    case 'A':
        lines[6] = true; lines[7] = true; lines[9] = true; lines[10] = true; 
    case 'Z':
        lines[6] = true; lines[7] = true;
    case 'i':
        lines[9] = true; lines[10] = true; 
    case 'x':
        lines[9] = true;
    case 'W':
        lines[10] = true; 
    }

    // define the positions of all the points that make up the rune
    point_0: rl.Vector2 = pos + {RUNE_WIDTH * 0.5 * scale, 0}
    point_1: rl.Vector2 = pos + {0, RUNE_TOP_HEIGHT * 0.5 * scale}
    point_2: rl.Vector2 = pos + {RUNE_WIDTH * scale, RUNE_TOP_HEIGHT * 0.5 * scale}
    point_3: rl.Vector2 = pos + {RUNE_WIDTH * 0.5 * scale, RUNE_TOP_HEIGHT * scale}
    point_4: rl.Vector2 = pos + {0, (RUNE_TOP_HEIGHT + RUNE_MIDDLE_HEIGHT) * scale}
    point_5: rl.Vector2 = pos + {RUNE_WIDTH * scale * 0.5, (RUNE_TOP_HEIGHT + RUNE_MIDDLE_HEIGHT) * scale}
    point_6: rl.Vector2 = pos + {RUNE_WIDTH * scale, (RUNE_TOP_HEIGHT + RUNE_MIDDLE_HEIGHT) * scale}
    point_7: rl.Vector2 = pos + {0, (RUNE_TOP_HEIGHT + RUNE_MIDDLE_HEIGHT * 2) * scale}
    point_8: rl.Vector2 = pos + {RUNE_WIDTH * scale * 0.5, (RUNE_TOP_HEIGHT + RUNE_MIDDLE_HEIGHT * 2) * scale}
    point_9: rl.Vector2 = pos + {0, (RUNE_TOP_HEIGHT * 1.5 + RUNE_MIDDLE_HEIGHT * 2) * scale}
    point_10: rl.Vector2 = pos + {RUNE_WIDTH * scale, (RUNE_TOP_HEIGHT * 1.5 + RUNE_MIDDLE_HEIGHT * 2) * scale}
    point_11: rl.Vector2 = pos + {RUNE_WIDTH * 0.5 * scale, (RUNE_TOP_HEIGHT * 2 + RUNE_MIDDLE_HEIGHT * 2) * scale}


    // draw horizontal line in the middle of the rune
    rl.DrawLineEx(point_4, point_6, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})

    // draw the lines directly corresponding to the rune
    if lines[0] do rl.DrawLineEx(point_1, point_3, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
    if lines[1] do rl.DrawLineEx(point_0, point_3, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
    if lines[2] do rl.DrawLineEx(point_2, point_3, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
    if lines[3] do rl.DrawLineEx(point_8, point_9, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
    if lines[4] do rl.DrawLineEx(point_8, point_11, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
    if lines[5] do rl.DrawLineEx(point_8, point_10, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
    if lines[6] do rl.DrawLineEx(point_0, point_2, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
    if lines[7] do rl.DrawLineEx(point_0, point_1, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
    if lines[8] {
        rl.DrawLineEx(point_1, point_4, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
        rl.DrawLineEx(point_7, point_9, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
    }
    if lines[9] do rl.DrawLineEx(point_9, point_11, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
    if lines[10] do rl.DrawLineEx(point_10, point_11, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
    // draw central vertical line if the correct lines are present
    if lines[1] || (lines[4] && (lines[0] || lines[2])) do rl.DrawLineEx(point_3, point_5, RUNE_LINE_RADIUS*2 * scale, {255, 255, 255, 255})
    

    // draw circles at the end of the lines to avoid ugly gaps

    // draw the ends of the horizontal line
    rl.DrawCircleV(point_4, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
    rl.DrawCircleV(point_6, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})

    // draw circles on the ends of existing lines
    if lines[1] || lines[6] || lines[7] do rl.DrawCircleV(point_0, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
    if lines[0] || lines[7] || lines[8] do rl.DrawCircleV(point_1, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
    if lines[2] || lines[6] do rl.DrawCircleV(point_2, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
    if lines[0] || lines[2] do rl.DrawCircleV(point_3, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
    if lines[8] do rl.DrawCircleV(point_7, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
    if lines[3] || lines[4] || lines[5] do rl.DrawCircleV(point_8, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
    if lines[3] || lines[8] || lines[9] do rl.DrawCircleV(point_9, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
    if lines[5] || lines[10] do rl.DrawCircleV(point_10, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})
    if lines[4] || lines[9] || lines[10] do rl.DrawCircleV(point_11, RUNE_LINE_RADIUS * scale, {255, 255, 255, 255})


    // draw the ring at the bottom
    if trunic_rune.vowel_first do rl.DrawRing(point_11 + {0, RUNE_LINE_RADIUS*2 * scale}, RUNE_LINE_RADIUS * scale, RUNE_LINE_RADIUS*3 * scale, 0, 360, 32, {255, 255, 255, 255})
}



TrunicStringToTrunicRuneRow :: proc(trunic_string: string) -> TrunicRuneRow
{
    trunic_rune_array := make([dynamic]TrunicRune)
    x_position: f32 = 0
    
    for i := 0; i < len(trunic_string); i += 1 {

        switch (GetCharType(rune(trunic_string[i]))) {
        case .VOWEL:
            new_rune := TrunicRune{
                x_position,
                rune(trunic_string[i]),
                ' ',
                ' ',
                false,
            }
            // check the next symbol if there is one, for if it can be merged together with the newly made trunic rune
            if i+1 < len(trunic_string) && GetCharType(rune(trunic_string[i+1])) == .CONSONANT {
                new_rune.consonant = rune(trunic_string[i+1])
                new_rune.vowel_first = true
                i += 1 // increment i with one extra in the loop, as the next char was just handeled
            }
            append(&trunic_rune_array, new_rune)
            x_position += RUNE_WIDTH

        case .CONSONANT:
            new_rune := TrunicRune{
                x_position,
                ' ',
                rune(trunic_string[i]),
                ' ',
                false,
            }
            // check the next symbol if there is one, for if it can be merged together with the newly made trunic rune
            if i+1 < len(trunic_string) && GetCharType(rune(trunic_string[i+1])) == .VOWEL {
                new_rune.vowel = rune(trunic_string[i+1])
                i += 1 // increment i with one extra in the loop, as the next char was just handeled
            }
            append(&trunic_rune_array, new_rune)
            x_position += RUNE_WIDTH

        case .SYMBOL:
            if rune(trunic_string[i]) == ' ' {
                x_position += SPACE_WIDTH
                continue
            }
            new_rune := TrunicRune{
                x_position,
                ' ',
                ' ',
                rune(trunic_string[i]),
                false,
            }
            append(&trunic_rune_array, new_rune)
            x_position += SYMBOL_WIDTH
        }
    }

    return TrunicRuneRow{
        trunic_rune_array,
        x_position
    }
}
