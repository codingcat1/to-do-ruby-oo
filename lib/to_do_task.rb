class Task
  def initialize(description, due_date, priority)
    @description = description
    @due_date = due_date
    @priority = priority
    @done = false
  end

  def is_done?
    @done
  end

  def yes_done
    @done = true
  end

  def description
    @description
  end

  def priority
    @priority
  end

  def due_date
    @due_date
  end
end


