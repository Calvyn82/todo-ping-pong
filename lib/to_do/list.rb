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
  end
end
