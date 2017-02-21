# config valid only for current version of Capistrano
lock '3.6.0'

set :application, 'my_app_name'
set :repo_url, 'git@example.com:me/my_repo.git'

server 'http://13.112.6.106/', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/home/app/.ssh/id_rsa'
