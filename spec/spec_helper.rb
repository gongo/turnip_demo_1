require 'rubygems'
require 'bundler/setup'
require_relative './helper/patiently'

class BraverDeadError < StandardError ; end

Dir.glob('spec/steps/**/*steps.rb') { |f| load f, true }
