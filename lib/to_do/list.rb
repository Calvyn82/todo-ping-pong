module ToDo
  class List
    def initialize
      @items = []
    end

    attr_reader :items

    def not_done
      items
    end

    def done
      items
    end

    def add(item)
      @items << item
    end
  end
end
