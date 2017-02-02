require 'json'
require 'elpong/version'
require 'elpong/scheme'

module Elpong
  @@schemes = []

  class << self
    def root
      File.dirname __dir__
    end

    def schemes
      @@schemes
    end

    def get(name)
      @@schemes.find{|scheme| scheme.name == name}
    end

    def default_scheme
      @@schemes.first
    end

    def reset
      @@schemes = []
    end
  end
end
