# require_relative '../list_factory/list_factory'

class Factory
  def self.get_factory(class_name)
    factory = nil
    begin
      factory = Object.const_get(class_name).new
    rescue NameError
      puts "クラス #{class_name}が見つかりません"
    rescue StandardError => e
      puts e.message
      puts e.backtrace
    end
    factory
  end

  %i[create_link, create_tray, create_page].each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end
end
