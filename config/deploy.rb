# -*- coding: utf-8 -*-
require "bundler/capistrano"

set :application, "Remote Jobs"
set :repository,  "https://github.com/mudgen/Telecommute-Job-Board.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, "/home/nick/blueparen.com/rjobs"

role :web, "nickmudge.info"                          # Your HTTP server, Apache/etc
role :app, "nickmudge.info"                          # This may be the same as your `Web` server
role :db,  "nickmudge.info", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

set :user, "nick"
set :scm_username, "mudgen"
set :use_sudo, false

set :rvm_ruby_string, '1.9.3'
require "rvm/capistrano"


# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
