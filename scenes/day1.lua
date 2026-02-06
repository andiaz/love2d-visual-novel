return {    
    bg = "office_day",
    bgm = "theme", -- this will loop and play the theme.ogg file

    dialogue = {
        { speaker = "Dev", text = "Hello, Dev!", image = "dev_neutral" },
        { speaker = "PM", text = "We need that redesign by lunch.", image = "pm_neutral" },
        { speaker = "Dev", text = "That's... today?", image = "dev_neutral" },
        { text = "", goto = "day2" } -- trigger scene switch
    }
}