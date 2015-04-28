require('rspec')
require('task')

describe(Task) do

  before Task do
    Task.clear()
  end

  describe('#task') do
    it('adds an item into a list') do
      test_task = Task.new('be lovely')
      expect(test_task.task()).to(eq('be lovely'))
    end
  end
  describe('.all') do
    it('is empty at first') do
      expect(Task.all()).to(eq([]))
    end
  end
  describe('#store') do
    it('Stores task into list') do
    test_task = Task.new('be lovely')
    test_task.store()
    expect(Task.all()).to(eq(['be lovely']))
    end
  end

  describe('#store') do
    it('Stores task into list') do
      test_task = Task.new('give your mom a kiss')
      test_task.store()
      expect(Task.all()).to(eq(['give your mom a kiss']))
    end
  end


  describe('.clear') do
    it('clears stored items') do
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end

end
