# frozen_string_literal: true

module RubyBill
  module ModelsCF
    # This class is used to represent an error returned by the SuperBill API.
    SBApiError = Struct.new(:code, :message)
  end
end
