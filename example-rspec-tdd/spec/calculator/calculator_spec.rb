# frozen_string_literal: true

require 'calculator'

RSpec.describe Calculator do # Once rspec called the class, it inialize an instance as subject
  context '#sum' do
    subject(:calc) { described_class.new }

    it '2 positive numbers' do
      result = calc.sum(5, 7)
      expect(result).to eq(12)
    end

    it '1 negative and 1 positive numbers' do
      result = calc.sum(-5, 7)
      expect(result).to eq(2)
    end

    xit '2 negative numbers' do # 'x' makes it pending
      result = calc.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end
end
