# frozen_string_literal: true

require_relative 'safe_frame'

frame = SafeFrame.new("State Sample")

24.times.each do |hour|
  frame.set_clock(hour)

  begin
    sleep(1)
  rescue Interrupt
  end
end
