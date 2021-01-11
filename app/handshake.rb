# frozen_string_literal: true

# This class is for search or decode messages from binary numbers
class Handshake
  MESSAGES = {
    0 => ->(result) { result << 'wink' },
    1 => ->(result) { result << 'double blink' },
    2 => ->(result) { result << 'close your eyes' },
    3 => ->(result) { result << 'jump' },
    4 => ->(result) { result.reverse! }
  }.freeze

  def initialize(number)
    @number_binary = number.to_s(2).reverse
  end

  def search_message
    MESSAGES.each_with_object([]) do |(index, block), result|
      block.call(result) if @number_binary[index] == '1'
    end.compact
  end
end