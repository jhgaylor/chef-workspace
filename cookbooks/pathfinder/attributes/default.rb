default['nginx']['init_style'] = 'upstart'
default['nginx']['upstart']['foreground'] = false
default['nginx']['upstart']['respawn_limit'] = 10
default['nginx']['default_site_enabled'] = false


default['pathfinder']['api']['name'] = 'pathfinder-character-tool-api'
default['pathfinder']['api']['version'] = '0.2.0'

default['pathfinder']['ui']['name'] = 'pathfinder-character-tool-ui'
default['pathfinder']['ui']['version'] = '0.2.0'