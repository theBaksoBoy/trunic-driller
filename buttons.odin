package main

import rl "vendor:raylib"


MARGIN_SIZE_MULTIPLIER : f32 : 0.2



word_selection_button := Button{
    {"common words", "common words (cluster)", "random words", "random words (cluster)", "sentences"},
    {.WORDS_COMMON_WORDS, .WORDS_COMMON_WORDS_CLUSTER, .WORDS_RANDOM_WORDS, .WORDS_RANDOM_WORDS_CLUSTER, .WORDS_SENTENCES},
    0,
    {0, 0, 0, 0},
    0,
}

practice_type_button := Button{
    {"practice reading", "practice writing", "practice both"},
    {.PRACTICE_READING, .PRACTICE_WRITING, .PRACTICE_BOTH},
    0,
    {0, 0, 0, 0},
    0,
}

start_button := Button{
    {"start"},
    {},
    0,
    {0, 0, 0, 0},
    0,
}

proceed_button := Button{
    {"   reveal   ", "    next    "},
    {},
    0,
    {0, 0, 0, 0},
    0,
}


Button :: struct {
    labels: []cstring, // all the different strings that can be displayed in the button. If the button doesn't change label when pressed, just have one item in here
    states: []ButtonStates, // what button state the button has. The index is synced with the above labels item. Can be empty if the button doesn't have multiple states
    state_index: int, // what state of the button it is currently set on. Not relevant for buttons that don't have changing labels, where the value should just be 0

    rect: rl.Rectangle, // determined during runtime
    font_size: f32, // determined during runtime
}



ButtonStates :: enum {
    WORDS_COMMON_WORDS,
    WORDS_COMMON_WORDS_CLUSTER,
    WORDS_RANDOM_WORDS,
    WORDS_RANDOM_WORDS_CLUSTER,
    WORDS_SENTENCES,

    PRACTICE_READING,
    PRACTICE_WRITING,
    PRACTICE_BOTH,
}



DrawButton :: proc(button: ^Button)
{
    rl.DrawTextEx(
        odin_rounded_font,
        button.labels[button.state_index],
        {button.rect.x, button.rect.y} + MARGIN_SIZE_MULTIPLIER * button.font_size,
        button.font_size,
        1,
        {255, 255, 255, 255})
 
    rl.DrawRectangleLinesEx(
        button.rect,
        button.font_size / 15,
        {255, 255, 255, 255})
}



UpdateButtonSize :: proc(button: ^Button)
{
    button.font_size = f32(rl.GetMonitorWidth(monitor)) * 0.03

    text_dimensions := rl.MeasureTextEx(
        odin_rounded_font,
        button.labels[button.state_index],
        button.font_size,
        1)
    
    button.rect.width = text_dimensions.x + MARGIN_SIZE_MULTIPLIER * button.font_size * 2
    button.rect.height = text_dimensions.y + MARGIN_SIZE_MULTIPLIER * button.font_size * 2
}



IncrementButtonState :: proc(button: ^Button)
{
    button.state_index += 1
    if button.state_index >= len(button.labels) do button.state_index = 0
}
