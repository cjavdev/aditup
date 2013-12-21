# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rspec'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false
end
#load "#{Rails.root}/db/seeds.rb"

def account_manager_sign_up(email)
  sleep 1
  visit "/account_managers/sign_up"
  fill_in "Email", with: email
  fill_in "Password", with: 'abcdef11'
  fill_in "Password confirmation", with: 'abcdef11'
  execute_script("$('#account_manager_agency_id').val($('#account_manager_agency_id option:last').val())")
  click_button 'Sign up'

  sleep 3
  puts AccountManager.count
  puts email
  puts AccountManager.last.email
  c_token = AccountManager.last.confirmation_token
  puts AccountManager.last.c_token
  puts c_token
  visit "/account_managers/confirmation?confirmation_token=#{ c_token }"
end

def sign_up(email)
  account_manager_sign_up(email)
end

def sign_in(email)
  account_manager_sign_in(email)
end

def account_manager_sign_in(email)
  visit "/account_managers/sign_in"
  fill_in "Email", with: email
  fill_in "Password", with: 'abcdef11'
  click_button 'Sign in'
end
