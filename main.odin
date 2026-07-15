package main

import rl "vendor:raylib"



test_trunic_rune := TrunicRune{
    0,
    'M',
    'Z',
    false,
}

TrunicRune :: struct {
    x_position: f32,
    consonant: rune,
    vowel: rune,
    has_ring: bool,
}



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

    DrawTrunicRune(test_trunic_rune, 1)







    rl.EndDrawing()
}



DrawTrunicRune :: proc(trunic_rune: TrunicRune, scale: f32)
{
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
        lines[0] = true; lines[1] = true; line[4] = true; line[5] = true;
    case 'j':
        lines[0] = true; lines[1] = true; line[4] = true;
    case 'v':
        lines[0] = true; lines[1] = true; line[5] = true;
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
}
