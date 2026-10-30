--░█░░░█▀█░█▀█░█░█░█▀█░█▀▀░█▀▀░█▀▀░█░░
--░█░░░█░█░█░█░█▀▄░█░█░█▀▀░█▀▀░█▀▀░█░░
--░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀░▀░▀░░░▀▀▀░▀▀▀░▀▀▀


hl.config({
  general = {
    gaps_in = 2,
    gaps_out = 3,
    border_size = 0,
    col = {
      active_border = "rgba(ffffff40)",
      inactive_border = "rgba(ffffff14)",
    },
    layout = "dwindle",
  },
  decoration = {
    rounding = 3,
    rounding_power = 2,
    active_opacity = 0.92,
    inactive_opacity = 0.82,
    dim_inactive = true,
    dim_strength = 0.15,
    dim_special = 0.2,
    blur = {
      enabled = true,
      size = 10,
      passes = 4,
      new_optimizations = true,
      xray = false,
      ignore_opacity = true,
      noise = 0.01,
      contrast = 1.0,
      brightness = 0.8,
      vibrancy = 0.2,
      special = true,
      popups = true,
    },
    shadow = {
      enabled = true,
      range = 20,
      render_power = 4,
      color = "rgba(000000aa)",
    },
  },
})


hl.curve("retroBounce", { type = "spring", mass = 1, stiffness = 180, dampening = 18 })
hl.curve("retroSnap",   { type = "bezier", points = { {0, 0}, {1, 1} } })

hl.animation({ leaf = "global",        enabled = true,  speed = 3,    bezier = "retroSnap" })
hl.animation({ leaf = "border",        enabled = true,  speed = 1.5,  spring = "retroBounce" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 1.8,  spring = "retroBounce" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 1.5,  spring = "retroBounce", style = "popin 80%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 0.8,  bezier = "retroSnap",   style = "popin 85%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.0,  bezier = "retroSnap" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 0.7,  bezier = "retroSnap" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 1.0,  bezier = "retroSnap" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 1.6,  spring = "retroBounce" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 1.5,  spring = "retroBounce", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 0.8,  bezier = "retroSnap",   style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.0,  bezier = "retroSnap" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 0.7,  bezier = "retroSnap" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.6,  spring = "retroBounce", style = "slide" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.5,  spring = "retroBounce", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 0.8,  bezier = "retroSnap",   style = "slide" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 1.5,  spring = "retroBounce" })


hl.config({
    dwindle = {
        preserve_split = true,
    },
})


hl.config({
    master = {
        new_status = "master",
    },
})


hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

