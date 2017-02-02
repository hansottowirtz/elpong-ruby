module Elpong
  class Scheme
    attr_reader :data
    attr_reader :path

    def initialize(path)
      @path = path
      reload
      Elpong.schemes << self
    end

    def name
      @data['name']
    end

    def reload
      file = File.read(@path)
      @data = JSON.parse(file)
    end

    def to_json
      JSON.generate(@data)
    end
  end
end
