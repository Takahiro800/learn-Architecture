require_relative 'random_number_generator'
require_relative 'digit_observer'
require_relative 'graph_observer'

generator = RandomNumberGenerator.new
observer1 = DigitObserver.new
observer2 = GraphObserver.new

generator.add_observer(observer1)
generator.add_observer(observer2)
generator.execute
