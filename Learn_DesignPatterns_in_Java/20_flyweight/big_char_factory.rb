# frozen_string_literal: true
#
require_relative 'big_char'

class BigCharFactory
  private_class_method :new
  def initialize
    @pool = {}
  end

  @@singleton = new

  attr_reader :pool


  def self.get_instance
    @@singleton ||= new
  end

  def get_big_char(charname)
    bc = @pool[charname] if @pool

    if bc.nil?
      bc = BigChar.new(charname)
      @pool[charname] = bc
    end

    bc
  end
end
