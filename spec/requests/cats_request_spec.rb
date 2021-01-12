require 'rails_helper'

RSpec.describe "Cats", type: :request do
it 'gets a list of Cats' do

    Cat.create(name: 'Lucy', age: 3, enjoys: 'Eating food.')

    get '/cats'

    cats = JSON.parse(response.body)

    expect(response).to have_http_status(200)
    expect(cats.length).to eq 1
 end

 it 'creates a cat' do

    cat_params = {
        cat: {
            name: 'Rose',
            age: 5,
            enjoys: 'Enjoys watching the Titanic.'
        }
    }

    post '/cats', params: cat_params

    expect(response).to have_http_status(200)

    cat = Cat.first

    expect(cat.name).to eq 'Rose'
  end

# it 'updates a cat' do


#     put '/cats/:id', params: cat_params

it 'doesnt create a cat without a name' do
    cat_params = {
        cat: {
            age: 9,
            enjoys: 'Sleeping'
        }
    }

    post '/cats', params: cat_params

    expect(response.status).to eq 422

    json = JSON.parse(response.body)

    expect(json['name']).to include "can't be blank"

  end
    



end
