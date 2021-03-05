# ~/.config/qutebrowser/config.py

config.load_autoconfig(False)

config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')

# User agents
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version} Edg/{upstream_browser_version}', 'https://accounts.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 (compatible, MSIE 11, Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko', 'https://youtube.com/')

config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')

c.aliases = {'q': 'quit', 'w': 'session-save', 'wq': 'quit --save'}
config.bind('M', 'hint links spawn mpv {hint url}')

c.url.default_page = 'file:///home/ale/dev/start/index.html'
c.url.start_pages = ["file:///home/ale/dev/start/index.html"] 
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}', 'ar': 'https://wiki.archlinux.org/?search={}', 'gg': 'https://www.google.com/search?q={}', 'wh': 'https://it.wikipedia.org/wiki/{}', 'yt': 'https://www.youtube.com/results?search_query={}'}

# Color scheme -----------------------------------------
c.colors.completion.fg = ['#ffffff', 'white', 'white']
c.colors.completion.odd.bg = '#111217'
c.colors.completion.even.bg = '#111217'
c.colors.completion.category.fg = '#111217'
c.colors.completion.category.bg = '#ba8991'
c.colors.completion.category.border.top = '#20242a'
c.colors.completion.category.border.bottom = '#20242a'
c.colors.completion.item.selected.fg = '#ffffff'
c.colors.completion.item.selected.bg = '#20242a'
c.colors.completion.item.selected.border.top = '#20242a'
c.colors.completion.item.selected.border.bottom = '#20242a'
c.colors.completion.item.selected.match.fg = '#ba8991'
c.colors.completion.match.fg = '#ba8991'
c.colors.completion.scrollbar.fg = '#20242a'
c.colors.downloads.bar.bg = '#111217'
c.colors.downloads.error.bg = '#ff4444'
c.colors.hints.fg = '#ffffff'
c.colors.hints.match.fg = '#ba8991'
c.colors.messages.info.bg = '#ffffff'

c.colors.statusbar.normal.bg = '#111217'
c.colors.statusbar.insert.fg = '#ffffff'
c.colors.statusbar.passthrough.bg = '#111217'
c.colors.statusbar.command.bg = '#111217'
c.colors.statusbar.url.warn.fg = '#ff4444'

c.colors.tabs.bar.bg = '#111217'
c.colors.tabs.odd.bg = '#111217'
c.colors.tabs.even.bg = '#111217'
c.colors.tabs.selected.odd.bg = '#20242a'
c.colors.tabs.selected.even.bg = '#20242a'
c.colors.tabs.pinned.odd.bg = '#ba8991'
c.colors.tabs.pinned.even.bg = '#ba8991'
c.colors.tabs.pinned.selected.odd.bg = '#ba8991'
c.colors.tabs.pinned.selected.even.bg = '#ba8991'

c.fonts.default_family = 'mplus Nerd Font Mono'
c.fonts.default_size = '10pt'
config.bind('xs', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
