# encoding: UTF-8

default[:healthdev].tap do |healthdev|
  healthdev[:proxy][:http] = ENV['http_proxy']
  healthdev[:proxy][:no_proxy] = ENV['no_proxy']
end

default[:vagrant].tap do |vagrant|
  vagrant[:version] = '1.7.4'
  vagrant[:msi_version] = '1.7.4'
  vagrant[:user] = ENV['USER'] || ENV['USERNAME']
  vagrant[:url] = 'https://releases.hashicorp.com/vagrant/1.7.4/vagrant_1.7.4.dmg'
  vagrant[:checksum] = '3d2e680cc206ac1d480726052e42e193eabce56ed65fc79b91bc85e4c7d2deb8'
end
