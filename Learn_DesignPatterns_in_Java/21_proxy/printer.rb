# frozen_string_literal: true

require_relative 'printable'

class Printer < Printable
  attr_accessor :name

  def initialize(name)
    @name = name
    heavy_job("Printerのインスタンス(#{name})を作成中")
  end

  def print_text(string)
    puts "=== #{name} ==="
    puts string
  end

  def heavy_job(msg)
    puts msg
    5.times.each do
      begin
        sleep(1)
      rescue
        Interrupt
      end
      print "."
    end
    puts "完了."
  end
end
