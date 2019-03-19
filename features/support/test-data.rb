require 'time'

NAME = Faker::Beer.name.freeze
DESCRIPTION = Faker::Beer.style
IMAGE = Faker::Avatar.image
AMOUNT = Faker::Commerce.price
QUANTITY = Faker::Number.within(1..20)
CREATED_AT = Time.now.iso8601 