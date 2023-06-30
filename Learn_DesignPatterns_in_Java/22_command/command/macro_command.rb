# frozen_string_literal: true

require_relative 'command'

class MacroCommand < Command
  def initialize
    @commands = []
  end

  def execute
    @commands.each{ |cmd| cmd.execute }
  end

  # 追加
  def append(cmd)
    raise ArgumentError if cmd == self

    @commands.push(cmd)
  end

  # 最後の命令を削除
  def undo
    return if @commands.empty?

    @commands.pop
  end

  def clear
    @commands.clear
  end
end
