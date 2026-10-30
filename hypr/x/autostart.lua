--░█▀█░█░█░▀█▀░█▀█░█▀▀░▀█▀░█▀█░█▀▄░▀█▀
--░█▀█░█░█░░█░░█░█░▀▀█░░█░░█▀█░█▀▄░░█░
--░▀░▀░▀▀▀░░▀░░▀▀▀░▀▀▀░░▀░░▀░▀░▀░▀░░▀░



hl.on("hyprland.start", function()
  

  hl.exec_cmd("awww-daemon")
  hl.exec_cmd("swayosd-server")
  hl.exec_cmd("swaync")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("waybar")

end)

hl.on("hyprland.start", function()
 
  hl.exec_cmd("ghostty --gtk-single-instance=true --quit-after-last-window-closed=false --initial-window=false")
  
end)

hl.on("hyprland.start", function()
  hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")
end)
