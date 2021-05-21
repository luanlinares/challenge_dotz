# frozen_string_literal: true

require 'capybara/cucumber'
require 'capybara/rspec'
require 'httparty'
require 'byebug'
require 'report_builder'

AMBIENTE = ENV['AMBIENTE']
