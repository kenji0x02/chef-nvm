#
# Cookbook Name:: chef-nvm
# Recipe:: default
#
# Copyright 2015 
#
# All rights reserved - Do Not Redistribute
#

# システム全体にnvmをインストールする
# rbenvと同じような構成にする
git "/usr/local/nvm" do
  repository "git://github.com/creationix/nvm.git"
  reference "master"
  action :sync
end

template "/etc/profile.d/nvm.sh" do
  source "nvm.sh.erb"
  mode 00644
end

# nvm listしたときにalias/ディレクトリがないとおこられるので、、
directory '/usr/local/nvm/alias' do
  action :create
end

bash "install nodejs" do
  code <<-EOC
    source /usr/local/nvm/nvm.sh
    nvm install #{node['nodejs']['version']}
  EOC
  # ここにnodeの本体がいる
  creates "/usr/local/nvm/#{node['nodejs']['version']}"
end

