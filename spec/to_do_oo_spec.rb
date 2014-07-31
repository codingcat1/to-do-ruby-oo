require 'rspec'
require 'to_do_task'
require 'to_do_list'


describe List do
   it 'is initialized with a description' do
    test_list = List.new('Epicodus')
    test_list.should be_an_instance_of List
  end

  it 'lets you read the task description' do
    test_list = List.new('Epicodus')
    test_list.description.should eq 'Epicodus'
  end

  it("starts out with an empty list of tasks") do
    test_list = List.new("School stuff")
    test_list.tasks.should eq []
  end

  it("can add tasks") do
    test_list = List.new("School stuff")
    test_task = Task.new("Learn Ruby")
    test_list.add_task(test_task)
    test_list.tasks.should eq [test_task]
  end
end

describe Task do
  it 'is initialized with a description' do
    test_task = Task.new('study for Epicodus assessment')
    test_task.should be_an_instance_of Task
  end

  it 'lets you read the task description' do
    test_task = Task.new('study for Epicodus assessment')
    test_task.description.should eq 'study for Epicodus assessment'
  end
end



