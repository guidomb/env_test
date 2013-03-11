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

################################ Install Ruby #################################
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby '1.9.3-p327' do
  global true
end

rbenv_gem "bundler" do
  ruby_version '1.9.3-p327'
end
###############################################################################
