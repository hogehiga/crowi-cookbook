
# crowi
default["crowi"]["version"] = "master"
default["crowi"]["base_dir"] = "/srv/www"
default["crowi"]["owner"] = "crowi"
default["crowi"]["group"] = "www-data"

default["crowi"]["env"] = "production"
default["crowi"]["port"] = 3000
default["crowi"]["seed"] = "ThisIsPsswordSeed"
default["crowi"]["token"] = "ThisIsSecretToken"

# mongodb
default['crowi']['mongodb']['username'] = 'crowi'
default['crowi']['mongodb']['password'] = 'crowipass'
default['crowi']['mongodb']['roles'] = %w(readWrite)
default['crowi']['mongodb']['database'] = 'crowi'

default['crowi']['mongodb']['config']['host'] = 'localhost'
default['crowi']['mongodb']['config']['port'] = node['mongodb']['config']['port']

# mongo users override
override['apt']['compile_time_update'] = true
override['build-essential']['compile_time'] = true
override['mongodb']['ruby_gems']['mongo'] = '~> 1.12'

# redis
default['crowi']['redis']['host'] = 'localhost'
default['crowi']['redis']['port'] = '6379' # redis default port.

# nginx
default['crowi']['fqdn'] = node['fqdn']

# nodejs
default['nodejs']['version'] = '6.10.3'
default['nodejs']['binary']['checksum']['linux_x64'] = '00d0aea8e47a68da6e3278d7c2fc1504de46a34d97b4b2fa5610b04a64fce04c'
default['nodejs']['binary']['checksum']['linux_x86'] = '0cd9bd4c68ed8aa062961bbe1f914cd62c004fd5d53dbec5800eb067bdd33807'
default['nodejs']['binary']['checksum']['linux_arm64'] = '8b0ea8f0616f0c9dbd953bcb330d22b253cc1e3f3c657885e8476427462169c0'
