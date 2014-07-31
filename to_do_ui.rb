require './lib/to_do_task'
require './lib/to_do_list'

@lists = []
@current_list_index = 0

def main_menu
  loop do
    puts "Press 'l' to add list, 't' to add task, or 'v' to view lists"
    puts "Press 'x' to exit."
    main_choice = gets.chomp
    if main_choice == 'l'
      add_list
    elsif main_choice == 't'
      add_task
    elsif main_choice == 'v'
      list_lists
    elsif main_choice == 'x'
      puts "Ok bye"
      exit

    end
  end
end


def add_list
  puts "Add a list item"
  input_list_description = gets.chomp
  @lists << List.new(input_list_description)
  @current_list_index = @lists.length-1
end

def list_lists
  @lists.each_with_index do |list, index|
    puts "#{index+1}. " + list.description
  end

  #choose the number of the list you want to be your current list
  choice = gets.chomp.to_i
  @current_list_index = choice
end

def add_task

  input_task_description = ""
  while input_task_description != "q"
    puts "Add a task; input 'q' when finished"
    input_task_description = gets.chomp
    if input_task_description != "q"
      puts "Enter priority"
      input_task_priority = gets.chomp.to_i
      while input_task_priority < 1 || input_task_priority > 5
        puts "Not a valid priority range"
        input_task_priority = gets.chomp.to_i
      end
      puts "Enter due date"
      input_due_date = gets.chomp
      new_task = Task.new (input_task_description, input_due_date, input_task_priority)
      @lists[@current_list_item].tasks << new_task
    end
  end
end


main_menu
