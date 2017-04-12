require 'json'

module FileDb
  class Database
    attr_accessor :data

    def initialize(data_file)
      file = File.read(data_file)
      @data = JSON.parse(file)
    end
    def table_names
      @data.keys.sort
    end
    def table(name)
      FileDb::Table.new(@data, name)
    end
  end
end
