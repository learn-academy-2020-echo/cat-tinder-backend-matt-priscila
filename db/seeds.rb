cats = [
  {
    name: 'Felix',
    age: 2,
    enjoys: 'Long naps on the couch, and a warm fire.'
  },
  {
    name: 'Homer',
    age: 12,
    enjoys: 'Food mostly, really just food.'
  },
  {
    name: 'Jack',
    age: 5,
    enjoys: 'Furrrrociously hunting bugs.'
  },
  {
    name: 'Ninja',
    age: 6,
    enjoys: 'Kills with a single stike to the throat.'
  },
  {
    name: 'Bertha',
    age: 6,
    enjoys: 'Cooks lovely pies.'
  }
]

cats.each do |attributes|
  Cat.create attributes
  puts "creating cat #{attributes}"
end