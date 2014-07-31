class List

  def initialize(description)
    @description = description
    @tasks = []
  end

  def tasks
    @tasks
  end

  def description
    @description
  end

  def add_task(new_task)
    @tasks << new_task
  end
end
