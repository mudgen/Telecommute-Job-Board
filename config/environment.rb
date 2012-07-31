# Load the rails application
ENV['RAILS_RELATIVE_URL_ROOT'] = "/remotejobs"

require File.expand_path('../application', __FILE__)

# Initialize the rails application
Rjobs::Application.initialize!
