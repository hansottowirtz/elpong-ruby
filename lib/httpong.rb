require 'json'
require 'httpong/version'
require 'httpong/scheme'

module HTTPong
  @@schemes = []

  class << self
    def root
      File.dirname __dir__
    end

    def schemes
      @@schemes
    end

    def get_scheme(name)
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
