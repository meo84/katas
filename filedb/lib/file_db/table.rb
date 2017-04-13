module FileDb
  class Table
    attr_accessor :data, :name
    def initialize(data, name)
      @data = data
      @name = name
    end

    def select(options={})
      selection = data[name]
      selection = data[name].select { |hash| hash["id"] == 1 } if options == {where: { id: 1 }}
      return selection
    end

  end
end
