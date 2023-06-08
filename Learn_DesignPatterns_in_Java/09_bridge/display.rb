require_relative 'display_impl'

class Display
  # NOTE: コンストラクタには、実装を表すクラスのインスタンスを渡す
  # このフィールドが２つのクラス階層の橋となる
  def initialize(impl)
    @impl = impl
  end

  def open
    @impl.raw_open
  end

  def close
    @impl.raw_close
    puts ""
  end

  def print
    @impl.raw_print
  end

  def display
    open
    print
    close
  end
end
