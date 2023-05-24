require_relative 'id_card/id_card_factory'

fac = IdCardFactory.new()
card1 = fac.create("design patterns")
card1.use
