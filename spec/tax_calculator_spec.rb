require 'tax_calculator'
require 'product'

RSpec.describe TaxCalculator do
  context 'Quando o preço do produto está acima de 500 mangos' do
    it 'deve calcular uma taxa não isenta' do
      product = Product.new(501)
      calculator = TaxCalculator.new
      tax = calculator.calculate(product)

      expect(tax).to eq(50.1)
    end
  end

  context 'Quando o preço do produto está abaixo de 500 mangos' do
    it 'deve calcular uma taxa isenta' do
      product = Product.new(499)
      calculator = TaxCalculator.new
      tax = calculator.calculate(product)

      expect(tax).to eq(0)
    end
  end

  # context 'Quando o preço do produto é de 500 mangos' do
  #   it 'deve calcular uma taxa não isenta' do
  #     product = Product.new(500)
  #     calculator = TaxCalculator.new
  #     tax = calculator.calculate(product)

  #     expect(tax).to eq(50)
  #   end
  # end
end
