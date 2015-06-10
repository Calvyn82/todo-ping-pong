module ToDo
  class List
    def initialize
      @unfinished_items = []
      @finished_items   = []
    end

    attr_reader :unfinished_items, :finished_items

    def not_done
      unfinished_items
    end

    def done
      finished_items
    end

    def add(item)
      @unfinished_items << item
    end

    def finish(item)
      @unfinished_items.delete(item)
      @finished_items << item
    end
  end
end
