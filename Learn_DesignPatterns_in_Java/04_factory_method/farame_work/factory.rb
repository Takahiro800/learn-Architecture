require_relative 'product'

module Factory
  def create(owner)
    product = create_product(owner)
    register_product(product)
    product
  end

  %i[create_product register_product].each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end
end
