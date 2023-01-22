# frozen_string_literal: true

# SuperBill Health
module RubyBill
  # SuperBill Health
  module SBHealth
    # Health check
    # @return [String] Health check
    def self.health_check
      url = URI("https://superbillapi.datev.it/health")
      https = Net::HTTP.new(url.host.to_s, url.port)
      https.use_ssl = true
      request = Net::HTTP::Get.new(url)
      request.content_type = "application/json"
      https.request(request).code
    end
  end
end
