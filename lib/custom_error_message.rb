if defined?(ActiveModel::Error) # Rails 6.1+
  require 'rails/extensions/active_model61'
elsif defined?(ActiveModel)
  require 'rails/extensions/active_model'
else
  require 'rails/extensions/active_record'
end
