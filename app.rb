
require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/parcel') do
  @length = params.fetch('length').to_i
  @width = params.fetch('width').to_i
  @height = params.fetch('height').to_i
  @weight = params.fetch('weight').to_i
  @distance = params.fetch('distance').to_i
  @speed = params.fetch('speed')
  new_parcel = Parcel.new(@length, @width, @height, @weight)
  @cost = new_parcel.cost(@distance, @speed)
  erb(:parcel)
end
