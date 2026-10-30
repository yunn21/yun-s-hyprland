--░█░█░█▀▀░█░█░█▀▄░▀█▀░█▀█░█▀▄░█▀▀
--░█▀▄░█▀▀░░█░░█▀▄░░█░░█░█░█░█░▀▀█
--░▀░▀░▀▀▀░░▀░░▀▀░░▀▀▀░▀░▀░▀▀░░▀▀▀


local menu        = "rofi -show drun"
local terminal    = "alacritty"
local fileManager = "thunar"
local mainMod     = "SUPER"
local browser     = "helium-browser" 

hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + ESCAPE", hl.dsp.exec_cmd("~/.config/rofi/scripts/powermenu.sh"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("spotify"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("obsidian"))

hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + TAB", hl.dsp.exec_cmd("swaync-client -t"))

hl.bind(mainMod .. " + T", function()
  hl.dispatch(hl.dsp.window.set_prop({
    prop = "opaque",
    value = "toggle",
  }))
end)

hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("cliphist list | wofi --dmenu | cliphist decode | wl-copy"))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("cliphist wipe"))

hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | swappy -f -"))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.exec_cmd("grim -o \"$(hyprctl activeworkspace -j | jq -r '.monitor')\" - | swappy -f -"))

hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ action = "toggle"}))

hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })


hl.bind(mainMod .. " + Prior", hl.dsp.exec_cmd("swayosd-client --output-volume raise"))
hl.bind(mainMod .. " + Next", hl.dsp.exec_cmd("swayosd-client --output-volume lower"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume raise"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume lower"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("swayosd-client --brightness raise"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("swayosd-client --brightness lower"),                  { locked = true, repeating = true })

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

