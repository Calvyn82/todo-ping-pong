module ToDo
  class Item
    def initialize(task)
      @task = task
      @finished_at = nil
    end

    attr_reader :task, :finished_at

    def finish
      @finished_at = Time.now
    end
  end
end
