require 'time'

NAME = Faker::Beer.name.freeze
DESCRIPTION = Faker::Beer.style
IMAGE = Faker::Avatar.image
AMOUNT = Faker::Commerce.price
QUANTITY = Faker::Number.within(1..20)
CREATED_AT = Time.now.iso8601 

CHANGE_NAME = Faker::Beer.name.freeze
CHANGE_DESCRIPTION = Faker::Beer.style
CHANGE_IMAGE = Faker::Avatar.image
CHANGE_AMOUNT = Faker::Commerce.price
CHANGE_QUANTITY = Faker::Number.within(1..20)
CHANGE_CREATED_AT = Time.now.iso8601 

puts NAME
puts CHANGE_NAME