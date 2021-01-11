require 'rails_helper'

RSpec.describe Cat, type: :model do
  it 'should validate name' do
    cat = Cat.create(age: 4, enjoys:'eating healthy food')
    expect(cat.errors[:name]).to_not be_empty
  end

  it 'should validate age' do
    cat = Cat.create(name: 'London', enjoys:'eating healthy food')
    expect(cat.errors[:age]).to_not be_empty
  end

  it 'should validate enjoys' do
    cat = Cat.create(name: 'Carrot', age: 6)
    expect(cat.errors[:enjoys]).to_not be_empty
  end

  it 'ensures that the enjoys value is at least 10 characters' do
    cat = Cat.create(name: 'Vanilla', age: 6, enjoys: 'bob')
    expect(cat.errors[:enjoys]).to_not be_empty
  end




end
