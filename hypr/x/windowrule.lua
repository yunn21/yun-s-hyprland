--░█░█░▀█▀░█▀█░█▀▄░█▀█░█░█░█▀▄░█░█░█░░░█▀▀
--░█▄█░░█░░█░█░█░█░█░█░█▄█░█▀▄░█░█░█░░░█▀▀
--░▀░▀░▀▀▀░▀░▀░▀▀░░▀▀▀░▀░▀░▀░▀░▀▀▀░▀▀▀░▀▀▀



local suppressMaximizeRule = hl.window_rule({

    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})


hl.window_rule({
   
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.layer_rule({
  name = "waybar-blur",
  match = { namespace = "waybar" },
  blur = true,
  ignore_alpha = 0,
})

hl.layer_rule({
  name = "rofi-blur",
  match = { namespace = "rofi" },
  blur = true,
  ignore_alpha = 0,
})

hl.layer_rule({
  name = "swaync-notification-blur",
  match = { namespace = "swaync-notification-window" },
  blur = true,
  ignore_alpha = 0,
})

hl.layer_rule({
  name = "swaync-control-center-blur",
  match = { namespace = "swaync-control-center" },
  blur = true,
  ignore_alpha = 0,
})

hl.window_rule({
  name = "center-alacritty",
  match = { class = "Alacritty" },
  float = true,
  center = true,
  size = "1100 700",
})
