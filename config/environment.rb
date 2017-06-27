# Load the Rails application.
require_relative 'application'
require 'flickraw'

# Initialize the Rails application.
Rails.application.initialize!
FlickRaw.api_key       = ENV["flickr_api_key"]
FlickRaw.shared_secret = ENV["flickr_secret_key"]
