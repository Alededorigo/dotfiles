# Imports
from ranger.gui.color import *
from ranger.gui.color import default_colors, reverse, bold, normal, default

class Scheme(Default):
	progress_bar_color = blue
	def use(self, context):
		fg, bg, attr = Default.use(self, context)

		if context.directory and not context.marked and not context.link:
			fg = blue

		if context.in_titlebar:
			if context.hostname:
				if context.good:
					fg = cyan
				elif context.bad:
					fg = red
			else:
				fg = default

		if context.reset:
			return default_colors

		if context.border:
			fg = white

		if context.in_taskview:
			fg = red

        elif context.in_browser:
            if context.image:
                fg = blue
            if context.video:
                fg = blue
            if context.audio:
                fg = green
            if context.document:
                fg = blue

		if context.in_statusbar:
			if context.permissions:
				if context.good:
					fg = blue
				elif context.bad:
					fg = red
			if context.message:
				if context.good:
					attr |= bold
					fg = yellow
				elif context.bad:
					attr |= bold
					fg = red

		return fg, bg, attr
