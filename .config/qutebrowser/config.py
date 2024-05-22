#!/usr/bin/env python3

# Border layout
c.tabs.position = 'right'
c.tabs.favicons.show = 'always'
c.tabs.width = '5%'
c.tabs.indicator.width = 3

c.tabs.mode_on_change = 'restore'
c.tabs.close_mouse_button = 'right'
c.tabs.close_mouse_button_on_bar = 'close-current'
# c.tabs.show = 'switching'
c.url.start_pages = 'https://fauux.neocities.org/login'

# c.statusbar.widgets = '
c.scrolling.bar = 'overlay'
c.zoom.default = '90%'
c.search.ignore_case = 'smart'

c.completion.shrink = True
c.url.open_base_url = True

c.content.autoplay = True
c.content.blocking.method = 'both'
c.content.cookies.accept = 'all'

c.statusbar.show = 'in-mode'


# File managing
c.fileselect.handler = "external"
c.fileselect.single_file.command = ["wezterm", "-e", "yazi", "--chooser-file={}"]
c.fileselect.multiple_files.command = ["wezterm", "-e", "yazi", "--chooser-file={}"]
c.fileselect.folder.command = ["wezterm", "-e", "yazi", "--chooser-file={}"]


c.url.searchengines = {
    'DEFAULT':    'https://search.atlas.engineer/searxng/search?q={}&language=all&categories=general',
    'Shodan':     'https://www.shodan.io/search?query={}',
    'Yahoo':      'https://search.yahoo.com/search?p={}',
    'Mankier':    'https://www.mankier.com/8/{}',
    'Niopt': 'https://search.nixos.org/options?channel=unstable&from=0&size=120&sort=relevance&type=packages&query={}',
    'Hmopt':              'https://home-manager-options.extranix.com/?query={}&release=master',
    'Nixpkgs':            'https://lazamar.co.uk/nix-versions/?channel=nixpkgs-unstable&package={}',
    'Yandex.Translate':   'https://translate.yandex.ru/?text={}',
    'DeepL':              'https://www.deepl.com/translator#zh/ru/{}',
    # OSINT
    'Aleph': 'https://aleph.occrp.org/search?q={}'
    # '': ''
}
c.content.blocking.adblock.lists = [
    'https://easylist.to/easylist/easylist.txt',
    'https://easylist.to/easylist/easyprivacy.txt',

    'https://ublockorigin.github.io/uAssetsCDN/filters/filters.min.txt',
    'https://cdn.jsdelivr.net/gh/uBlockOrigin/uAssetsCDN@main/filters/privacy.min.txt',
    'https://ublockorigin.pages.dev/filters/unbreak.min.txt',

    'https://malware-filter.gitlab.io/malware-filter/urlhaus-filter-online.txt',
    'https://easylist.to/easylist/fanboy-social.txt',

    'https://github.com/birhaman/custom-filters.adblock.js/blob/master/main.txt',

    'https://github.com/uBlockOrigin/uAssets/blob/master/filters/filters-2024.txt',
    'https://github.com/uBlockOrigin/uAssets/blob/master/filters/privacy.txt',
    'https://github.com/uBlockOrigin/uAssets/blob/master/filters/ubol-filters.txt',
    'https://github.com/uBlockOrigin/uAssets/blob/master/filters/quick-fixes.txt'
    # '',

]
c.content.blocking.hosts.lists = [

]

proxy_current = 'http://DXf2sxr5:2EVysff7@103.163.53.91:64692/'
c.content.proxy = proxy_current

c.changelog_after_upgrade = 'minor'
c.auto_save.session = True
config.load_autoconfig()

config.set("colors.webpage.darkmode.enabled", True)


# Keymappings
config.bind(',m', 'spawn mpv {url}')
config.bind(',M', 'hint links spawn mpv {hint-url}')

# Reading configuration from nested .yml
# import yaml
# with (config.configdir / 'config.yml').open() as f:
#     yaml_data = yaml.safe_load(f)
# def dict_attrs(obj, path=''):
#     if isinstance(obj, dict):
#         for k, v in obj.items():
#             yield from dict_attrs(v, '{}.{}'.format(path, k) if path else k)
#     else:
#         yield path, obj
# for k,v in dict_attrs(yaml_data): # yaml_data.items(): for generic .yml - no read nesting
#     config.set(k, v)

# WIP = Schemed config
# config = {
#   tabs.position = 'right'
#   scrolling.bar = 'overlay'
#   search.ignore_case = 'smart'

#   completion.shrink = True
#   content.proxy = proxy_current
#   zoom.default = '90%'
# }
