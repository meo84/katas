module FileDb
  class Table
  	attr_accessor :data, :name
    def initialize(data, name)
    	@data = data
    	@name = name
    end

    def select
      data[name]
    end

  end
end
