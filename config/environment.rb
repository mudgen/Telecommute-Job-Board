# Load the rails application
require File.expand_path('../application', __FILE__)

ENV['RAILS_RELATIVE_URL_ROOT'] = "/remotejobs"

# Initialize the rails application
Rjobs::Application.initialize!
