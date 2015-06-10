module ToDo
  class Item
    def initialize(task)
      @task = task
    end

    attr_reader :task
  end
end
