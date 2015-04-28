require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/task')

get('/') do
  @list = Task.all()
  erb(:index)
end

post('/tasks') do
  item = params.fetch('list')
  add_task = Task.new(item)
  add_task.store()
erb(:success)
end
