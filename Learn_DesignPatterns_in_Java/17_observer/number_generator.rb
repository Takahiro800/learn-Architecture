# frozen_string_literal: true

class NumberGenerator
  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers.append(observer)
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end

  # Observerへ通知する
  def notify_observers
    @observers.each { |observer| observer.update(self)}
  end

  def execute
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end
end
