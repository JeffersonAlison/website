# Load the rails application
require File.expand_path('../application', __FILE__)

# Arruma erro de inicializacao no webrik
ActiveSupport::Deprecation.silenced = true 
# Initialize the rails application
Website::Application.initialize!
