module HTTPong
  class Scheme
    attr_reader :data
    attr_reader :path
    attr_reader :cson_path
    alias :json_path :path

    def initialize(path)
      @path = path
      reload
      HTTPong.schemes << self
    end

    def name
      @data['name']
    end

    def reload
      if path.end_with? 'cson'
        json_path = "#{@path.chomp('cson')}json"
        `cson2json #{@path} > #{json_path}`
        @cson_path = @path
        @json_path = json_path
      else
        @json_path = @path
      end
      file = File.read(@json_path)
      @data = JSON.parse(file)
    end

    def to_json
      JSON.generate(@data)
    end
  end
end
