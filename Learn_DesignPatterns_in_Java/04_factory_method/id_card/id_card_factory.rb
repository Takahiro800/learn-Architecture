require_relative '../farame_work/factory'
require_relative 'id_card'

class IdCardFactory
  include Factory

  def create_product(owner)
    IdCard.new(owner)
  end

  def register_product(product)
    puts "#{product} を登録しました"
  end
end
