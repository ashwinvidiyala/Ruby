require_relative 'project'

RSpec.describe Project do
  before(:each) do
    @project1 = Project.new('Project 1', 'Description 1', 'John Doe')

    # @project2 = Project.new('Project 2', 'Description 2', 'Suzy McCombs')
  end

  it 'has a getter and setter for the name attribute' do
    @project1.name = 'Changed Name'
    expect(@project1.name).to eq('Changed Name')
  end

  it 'has a getter and setter for the description attribute' do
    @project1.description = 'Changed Description'
    expect(@project1.description).to eq('Changed Description')
  end

  it 'has a getter and setter for the owner attribute' do
    @project1.owner = 'Ashwin Vidiyala'
    expect(@project1.owner).to eq('Ashwin Vidiyala')
  end

  it 'has a method elevator pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq('Project 1, Description 1')
    # expect(@project2.elevator_pitch).to eq('Project 2, Description 2')
  end

  it 'has a method tasks that returns tasks' do
    expect(@project1.tasks.class == Array).to eq(true)
  end

  it 'has a method add tasks that pushes single tasks to tasks attribute' do
    @project1.add_tasks 'Clean The Dishes'
    expect(@project1.tasks.include? 'Clean The Dishes').to eq(true)
  end

  it 'has a method print tasks that prints out tasks' do
    @project1.add_tasks 'Clean Dishes'
    # expect { my_method }.to output("my message").to_stdout
    expect { @project1.print_tasks }.to output("Clean Dishes\n").to_stdout
  end

end
