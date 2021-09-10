class TaxCalculator
  def calculate(product)
    if product.price > 500
      return product.price * 0.1
    end

    0
  end
end
