# frozen_string_literal: true

require_relative 'observer'

class GraphObserver < Observer
  def update(generator)
    print "GraphObserver:"

    count = generator.number
    count.times.each { print("*") }
    puts ""

    begin
      sleep(0.1)
    rescue Interrupt
    end
  end
end
