class Task
  @@list = []
  define_method(:initialize) do |input_task|
    @input_task = input_task
  end

  define_method(:task) do
    @input_task
  end

  define_singleton_method(:all) do
    @@list
  end

end
