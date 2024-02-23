# frozen_string_literal: true

# class StringNotEmpty
class StringNotEmpty < String
  def initialize
    self << 'empty'
  end
end
