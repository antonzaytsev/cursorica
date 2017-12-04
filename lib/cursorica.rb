require 'cursorica/config'
require 'cursorica/configuration_methods'
require 'cursorica/page_scope_methods'
require 'active_support/lazy_load_hooks'

ActiveSupport.on_load :active_record do
  require 'cursorica/active_record_extension'
  ::ActiveRecord::Base.send :include, Cursorica::ActiveRecordExtension
end