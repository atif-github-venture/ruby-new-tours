require 'selenium-webdriver'
require 'rspec'
require 'yml_reader'
require 'ffaker'
require 'cucumber'
require 'rake'
require 'rubygems'
require 'cucumber/rake/task'


load(File.open(File.dirname(__FILE__)+'/utils.rb'))
load(File.open(File.dirname(__FILE__)+'/common_functions.rb'))
read_environment_variables
read_static_data
include RSpec::Matchers