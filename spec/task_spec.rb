require('rspec')
require('task')

describe(Task) do
  describe('#task') do
    it('adds an item into a list') do
      test_task = Task.new('be lovely')
      expect(test_task.task()).to(eq('be lovely'))
    end
  end
end
