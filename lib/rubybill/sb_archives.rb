# frozen_string_literal: true

# SuperBill Archives
module RubyBill
  # SuperBill Archives
  module SBArchives

    # List all archives
    # @return [JSON] List of archives
    def self.list_archives
      url = URI("https://superbill.datev.it/api/v1/ditte")
      https = Net::HTTP.new(url.host.to_s, url.port)
      https.use_ssl = true
      request = Net::HTTP::Get.new(url)
      request.content_type = "application/json"
      request["Authorization"] = "Bearer #{RubyBill.bearer}"
      request["Authorization-Key"] = RubyBill.tenant_id
      JSON.parse(https.request(request).body)
    end

    def self.list_archive(archive_id)
      url = URI("https://superbill.datev.it/api/v1/ditte/#{archive_id}")
      https = Net::HTTP.new(url.host.to_s, url.port)
      https.use_ssl = true
      request = Net::HTTP::Get.new(url)
      request.content_type = "application/json"
      request["Authorization"] = "Bearer #{RubyBill.bearer}"
      request["Authorization-Key"] = RubyBill.tenant_id
      JSON.parse(https.request(request).body)
    end
  end
end
