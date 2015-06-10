module ToDo
  class Item
    def initialize(task)
      @task = task
      @finished_at = nil
    end

    attr_reader :task, :finished_at

    def finish(clock = Time)
      @finished_at = clock.now
    end
  end
end
