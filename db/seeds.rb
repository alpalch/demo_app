# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


(1..100000).each do |i|
  Post.create!(title: %{'Lorem ipsum'}, content: %{'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
               Praesent egestas lobortis blandit. Nunc at tortor nibh. Sed eget
               commodo erat. Nam laoreet auctor lacus, sed vehicula tortor accumsan ut.
               Nulla facilisi. Sed et leo quis quam ornare tempus. Vestibulum mi velit,
               euismod non vehicula quis, dictum sit amet orci. Curabitur dui justo,
                nec tempor ac, ultrices a odio. Nunc quis libero at risus suscipit suscipit a ut eros.'})
end