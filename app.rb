require('sinatra')
require('sinatra/reloader')

get('/') do
  @friend = "Jessica"
  erb(:letter)
end

get('/australia') do
  @sender = "Jane"
  @recipient = "Jessica"
  erb(:australia)
end

get('/greeting_form') do
  erb(:form)
end

get('/greeting_card') do
  @sender = params.fetch('sender')
  @recipient = params.fetch('recipient')
  erb(:greeting_card)
end

get('/form') do
  erb(:form)
end

get('/story') do
  @person1 = params.fetch('person1')
  @person2 = params.fetch('person2')
  @animal = params.fetch('animal')
  @exclamation = params.fetch('exclamation')
  @verb = params.fetch('verb')
  @noun = params.fetch('noun')
  erb(:story)
end
