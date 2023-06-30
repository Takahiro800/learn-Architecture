# frozen_string_literal: true

require_relative 'printable'
require_relative 'printer'

class PrintProxy < Printable
  attr_accessor :name, :real

  def initialize(name)
    @name = name
    @real = nil
  end

  def set_printer_nmae(name)
    @real.name = name unless @real.nil?

    @name = name
  end

  def print_text(string)
    realize
    real.print_text(string)
  end

  def realize
    return unless real.nil?

    @real = Printer.new(name)
  end
end
