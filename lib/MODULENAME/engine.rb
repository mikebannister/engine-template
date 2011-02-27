require 'rails'
require 'MODULENAME'

begin
  module MODULENAME
    class Engine < Rails::Engine
    end
  end
rescue
  p $!, $!.message
  raise $!
end
