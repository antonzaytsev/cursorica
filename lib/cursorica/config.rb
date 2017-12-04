module Cursorica
  # Configures global settings for Cursorica
  #   Cursorica.configure do |config|
  #     config.default_per_page = 10
  #   end
  class << self
    def configure
      yield config
    end

    def config
      @_config ||= Config.new
    end
  end

  class Config
    attr_accessor :default_per_page

    def initialize
      @default_per_page = 25
    end
  end
end