# frozen_string_literal: true

require 'string_not_empty'

describe String do
  describe StringNotEmpty do
    it 'intern value' do
      expect(subject).not_to eq('')
    end
  end
end
