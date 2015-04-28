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
  define_method(:store) do
    @@list.push(self)
  end
  define_singleton_method(:clear) do
    @@list = []
  end


end
