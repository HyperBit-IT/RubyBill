# frozen_string_literal: true

# CFApiError
# Class for handling errors from the Config API of SuperBill
class CFApiError
  code :String
  message :String

  def initialize(code, message)
    @code = code
    @message = message
  end

  def to_s
    "CFApiError: #{@code} #{@message}"
  end

  def to_h
    { code: @code, message: @message }
  end
end
