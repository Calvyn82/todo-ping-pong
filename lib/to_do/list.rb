module ToDo
  class List
    def initialize
      @not_done = []
      @done     = []
    end

    attr_reader :not_done, :done

    def add(item)
      not_done << item
    end

    def finish(item)
      not_done.delete(item)
      done << item.finish
    end
  end
end
