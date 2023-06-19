# frozen_string_literal: true

require_relative 'observer'

class DigitObserver < Observer
  def update(generator)
    puts "DigitObserver:" + generator.number.to_s

    begin
      sleep(0.1)
    rescue Interrupt
    end
  end
end
