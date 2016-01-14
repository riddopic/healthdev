# encoding: UTF-8

['/usr/local', '/opt/homebrew-cask/Caskroom'].each do |dir|
  directory dir do
    owner ENV['SUDO_USER'] || ENV['USER']
  end
end

include_recipe 'homebrew'
include_recipe 'homebrew::cask'

%w[
  git
  coreutils
  findutils
  bash
  vault
  node
  direnv
  binutils
  bash-completion
  gnutls
  htop
  hub
  jq
  packer
  tree
  wget
  watch
].each { |pkg| package pkg }

homebrew_cask 'iterm2'
homebrew_cask 'vagrant'
homebrew_cask 'virtualbox'

homebrew_tap 'homebrew/dupes'

package 'homebrew/dupes/grep'
package 'homebrew/dupes/rsync'
