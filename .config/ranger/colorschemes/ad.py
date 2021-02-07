 /home/ale/.config/ranger/colorschemes/ad.py, 821 bytes
 ---
[0;31m 1 [0m# Imports
[0;31m 2 [0mfrom ranger.gui.color import *
[0;31m 3 [0mfrom ranger.gui.color import default_colors, reverse, bold, normal, default
[0;31m 4 [0m
[0;31m 5 [0mclass Scheme(Default):
[0;31m 6 [0mprogress_bar_color = blue
[0;31m 7 [0mdef use(self, context):
[0;31m 8 [0mfg, bg, attr = Default.use(self, context)
[0;31m 9 [0m
[0;31m10 [0mif context.directory and not context.marked and not context.link:
[0;31m11 [0mfg = blue
[0;31m12 [0m
[0;31m13 [0mif context.in_titlebar:
[0;31m14 [0mif context.hostname:
[0;31m15 [0mif context.good:
[0;31m16 [0mfg = cyan
[0;31m17 [0melif context.bad:
[0;31m18 [0mfg = red
[0;31m19 [0melse:
[0;31m20 [0mfg = default
[0;31m21 [0m
[0;31m22 [0mif context.reset:
[0;31m23 [0mreturn default_colors
[0;31m24 [0m
[0;31m25 [0mif context.border:
[0;31m26 [0mfg = white
[0;31m27 [0m
[0;31m28 [0mif context.in_taskview:
[0;31m29 [0mfg = red
[0;31m30 [0m
[0;31m31 [0melif context.in_browser:
[0;31m32 [0mif context.image:
[0;31m33 [0mfg = blue
[0;31m34 [0mif context.video:
[0;31m35 [0mfg = blue
[0;31m36 [0mif context.audio:
[0;31m37 [0mfg = green
[0;31m38 [0mif context.document:
[0;31m39 [0mfg = blue
[0;31m40 [0m
[0;31m41 [0mif context.in_statusbar:
[0;31m42 [0mif context.permissions:
[0;31m43 [0mif context.good:
[0;31m44 [0mfg = blue
[0;31m45 [0melif context.bad:
[0;31m46 [0mfg = red
[0;31m47 [0mif context.message:
[0;31m48 [0mif context.good:
[0;31m49 [0mattr |= bold
[0;31m50 [0mfg = yellow
[0;31m51 [0melif context.bad:
[0;31m52 [0mattr |= bold
[0;31m53 [0mfg = red
[0;31m54 [0m
[0;31m55 [0mreturn fg, bg, attr
