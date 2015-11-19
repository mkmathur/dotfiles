#!/usr/bin/env ruby

require 'fileutils'
require 'open-uri'


puts "cleaning up"
`rm -rf autoload`
`rm -rf bundle`


puts "installing Pathogen"
`mkdir -p autoload bundle`
`curl -LSso autoload/pathogen.vim https://tpo.pe/pathogen.vim`

plugins = IO.readlines("vim_plugins.txt").map { |p| p.strip }

bundles_dir = File.join(File.dirname(__FILE__), "bundle")
FileUtils.cd(bundles_dir)

plugins.each do |plugin|
  url = "https://github.com/#{plugin}.git"
  dir = plugin.split('/').last
  puts "unpacking #{url} into #{dir}"
  `git clone #{url} #{dir}`
end
