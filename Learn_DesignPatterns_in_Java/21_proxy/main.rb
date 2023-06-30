# frozen_string_literal: true

require_relative 'print_proxy'

p = PrintProxy.new("Alice")
puts "名前は現在#{p.name}です"

p.set_printer_nmae("Bob")
puts "名前は現在#{p.name}です"
p.print_text("Hello, world")
