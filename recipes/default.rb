package "git-core"
package "git"
package "qgit" if node.recipes.include?('desktop')

[ '/root', "/home/#{node[:user]}" ].each do |home|
  template "#{home}/.gitconfig" do
    source "gitconfig.erb"
    owner node[:user]
    group node[:user]
  end
end

if platform?('debian', 'ubuntu')
  package 'odt2txt'
end
