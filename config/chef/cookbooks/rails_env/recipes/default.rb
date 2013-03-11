#
# Cookbook Name:: rails_env
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#package "libxml2-dev"
#package "libxslt1-dev"
package "libsqlite3-dev"
# package "vim"
# package "git"
# package "curl"
#include_recipe 'rbenv::vagrant'
include_recipe 'ruby_build'
include_recipe 'rbenv::user_install'

################################ Install Ruby #################################
rbenv_ruby "1.9.3-p327" do
  user 'vagrant'
  action :install
end

rbenv_global "1.9.3-p327" do
  user 'vagrant'
  action :create
end

rbenv_gem "bundler" do
  rbenv_version   "1.9.3-p327"
  user 'vagrant'
  action          :install
end
# bash "install rbenv" do
#   user 'vagrant'
#   code <<-EOF
#   if test ! $(which rbenv)
#   then
#     curl https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
#     rbenv bootstrap-ubuntu-12-04
#     echo 'export RBENV_ROOT="${HOME}/.rbenv"
#     if [ -d "${RBENV_ROOT}" ]; then
#       export PATH="${RBENV_ROOT}/bin:${PATH}"
#       eval "$(rbenv init -)"
#     fi' | cat ~/.bashrc > /tmp/bashrc && /tmp/bashrc ~/.bashrc
#   fi
#   EOF
# end
###############################################################################
