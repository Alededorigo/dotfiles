#  _____ ____
# |  _  |    \
# |     |  |  |
# |__|__|____/
#
# Alededorigo Qtile Configuration
# Place this file into ~/.config/qtile/config.py
# https://github.com/alededorigo/dotfiles
# https://gitlab.com/alededorigo/dotfiles
#

from typing import List  # noqa: F401

from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

mod = "mod4"
terminal = guess_terminal()

keys = [
    # Switch between windows in current stack pane
    Key([mod], "k", lazy.layout.down(),
        desc="Move focus down in stack pane"),
    Key([mod], "j", lazy.layout.up(),
        desc="Move focus up in stack pane"),

    # Spawn rofi
    Key([mod], "d", lazy.spawn("rofi -show drun -lines 10 -theme AD"), desc="Launch rofi"),

    # Move windows up or down in current stack
    Key([mod, "control"], "k", lazy.layout.shuffle_down(),
        desc="Move window down in current stack "),
    Key([mod, "control"], "j", lazy.layout.shuffle_up(),
        desc="Move window up in current stack "),

    # Switch window focus to other pane(s) of stack
    Key([mod], "space", lazy.layout.next(),
        desc="Switch window focus to other pane(s) of stack"),

    # Swap panes of split stack
    Key([mod, "shift"], "space", lazy.layout.rotate(),
        desc="Swap panes of split stack"),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"),
    Key([mod], "Return", lazy.spawn("xterm"), desc="Launch terminal"),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod, "shift"], "q", lazy.window.kill(), desc="Kill focused window"),

    Key([mod, "shift"], "r", lazy.restart(), desc="Restart qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown qtile"),
    Key([mod], "r", lazy.spawncmd(),
        desc="Spawn a command using a prompt widget"),
]

group_names = [("TER", {'layout': 'monadtall'}),
               ("WEB", {'layout': 'monadtall'}),
               ("DEV", {'layout': 'monadtall'}),
               ("FIL", {'layout': 'monadtall'}),
               ("OTH", {'layout': 'monadtall'}),
               ("OTH", {'layout': 'monadtall'}),
               ("REC", {'layout': 'monadtall'})]

groups = [Group(name, **kwargs) for name, kwargs in group_names]

for i, (name, kwargs) in enumerate(group_names, 1):
    keys.append(Key([mod], str(i), lazy.group[name].toscreen()))        # Switch to another group
    keys.append(Key([mod, "shift"], str(i), lazy.window.togroup(name))) # Send current window to another group

layouts = [
    layout.Tile(border_focus="#bd93f9", border_normal="#44475a", border_width=2, margin=5),
    layout.Max(),
]

widget_defaults = dict(
    font='sans',
    fontsize=12,
    padding=3,
)
extension_defaults = widget_defaults.copy()

colors = [["#292d3e", "#292d3e"], # black
          ["#44475a", "#44475a"], # black-alt
          ["#f8f8f2", "#f8f8f2"], # white
          ["#ff5555", "#ff5555"], # red
          ["#bd93f9", "#bd93f9"], # purple
          ["#6272a4", "#6272a4"], # cyan
          ["#bd93f9", "#bd93f9"], # window name
          ["#44475a", "#44475a"]] # decolored bg

screens = [
    Screen(
        top=bar.Bar(
            [
              widget.Sep(
                       linewidth = 0,
                       padding = 6,
                       foreground = colors[2],
                       background = colors[0]
                       ),
              widget.GroupBox(
                       font = "Fira Code Mono",
                       fontsize = 11,
                       margin_x = 0,
                       padding_y = 0,
                       padding_x = 3,
                       active = colors[2],
                       inactive = colors[2],
                       rounded = False,
                       highlight_color = colors[0],
                       highlight_method = "line",
                       this_current_screen_border = colors[4],
                       this_screen_border = colors [4],
                       other_current_screen_border = colors[0],
                       other_screen_border = colors[0],
                       foreground = colors[2],
                       background = colors[0]
                       ),
              widget.Sep(
                       linewidth = 0,
                       padding = 10,
                       background = colors[0]
                       ),
              widget.WindowName(
                       foreground = colors[6],
                       background = colors[0],
                       padding = 0
                       ),
              widget.TextBox(
                       text = "  TMP",
                       background = colors[0],
                       foreground = colors[7],
                       padding = 0,
                       fontsize = 14
                       ),
              widget.ThermalSensor(
                       foreground = colors[2],
                       background = colors[0],
                       threshold = 90,
                       padding = 5,
                       fontsize = 14
                       ),
              widget.TextBox(
                       text = "  PAC",
                       padding = 4,
                       foreground = colors[7],
                       background = colors[0],
                       fontsize = 14
                       ),
              widget.Pacman(
                       update_interval = 1800,
                       foreground = colors[2],
                       mouse_callbacks = {'Button1': lambda qtile: qtile.cmd_spawn(myTerm + ' -e sudo pacman -Syu')},
                       background = colors[0],
                       fontsize = 14
                       ),
              widget.TextBox(
                       text = "U",
                       fontsize = 14,
                       padding = 0,
                       mouse_callbacks = {'Button1': lambda qtile: qtile.cmd_spawn(myTerm + ' -e sudo pacman -Syu')},
                       foreground = colors[2],
                       background = colors[0]
                       ),
              widget.TextBox(
                       text = "  VOL",
                       foreground = colors[7],
                       background = colors[0],
                       padding = 4,
                       fontsize = 14
                       ),
              widget.Volume(
                       foreground = colors[2],
                       background = colors[0],
                       padding = 5,
                       fontsize = 14
                       ),
              widget.TextBox(
                       text = "  LAY",
                       foreground = colors[7],
                       background = colors[0],
                       padding = 4,
                       fontsize = 14
                       ),
              widget.CurrentLayout(
                       foreground = colors[2],
                       background = colors[0],
                       padding = 5,
                       fontsize = 14
                       ),
              widget.Clock(
                       foreground = colors[4],
                       background = colors[0],
                       format = "   %d-%m-%y %H:%M",
                       fontsize = 14
                       ),
              widget.Sep(
                       linewidth = 0,
                       padding = 20,
                       foreground = colors[0],
                       background = colors[0]
                       ),
              widget.QuickExit(
                       foreground = colors[2],
                       background = colors[0],
                       padding = 5
              ),
            ],
            24,
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None  # WARNING: this is deprecated and will be removed soon
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    {'wmclass': 'confirm'},
    {'wmclass': 'dialog'},
    {'wmclass': 'download'},
    {'wmclass': 'error'},
    {'wmclass': 'file_progress'},
    {'wmclass': 'notification'},
    {'wmclass': 'splash'},
    {'wmclass': 'toolbar'},
    {'wmclass': 'confirmreset'},  # gitk
    {'wmclass': 'makebranch'},  # gitk
    {'wmclass': 'maketag'},  # gitk
    {'wname': 'branchdialog'},  # gitk
    {'wname': 'pinentry'},  # GPG key password entry
    {'wmclass': 'ssh-askpass'},  # ssh-askpass
])
auto_fullscreen = True
focus_on_window_activation = "smart"

wmname = "LG3D"
