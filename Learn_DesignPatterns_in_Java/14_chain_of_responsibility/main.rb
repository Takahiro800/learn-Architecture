require_relative 'trouble'
require_relative 'no_support'
require_relative 'limit_support'
require_relative 'special_support'
require_relative 'odd_support'

alice = NoSupport.new("Alice")
bob = LimitSupport.new("Bob", 100)
charlie = SpecialSupport.new("Charlie", 429)
diana = LimitSupport.new("Diana", 200)
elmo = OddSupport.new("Elmo")
fred = LimitSupport.new("Fred", 300)

alice.set_next(bob).set_next(charlie).set_next(diana).set_next(elmo).set_next(fred)
trouble = Trouble.new(500)

15.times.each do
  i = rand(500)
  alice.support(Trouble.new(i))
end
