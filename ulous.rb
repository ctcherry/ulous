require "rubygems"
require "bundler/setup"

Bundler.require

require 'active_support/dependencies'
include ActiveSupport

Dependencies.autoload_paths << 'lib'