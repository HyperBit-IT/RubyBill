# frozen_string_literal: true

module RubyBill
  module SBArticles
    include RubyBill::ModelsSB

    def self.delete_article(element_id, id)
      url = URI("https://superbill.datev.it/api/v1/articoli/#{element_id}/#{id}")
      https = Net::HTTP.new(url.host.to_s, url.port)
      https.use_ssl = true
      request = Net::HTTP::Delete.new(url)
      request.content_type = "application/json"
      request["Authorization"] = "Bearer #{RubyBill.bearer}"
      request["Authorization-Key"] = RubyBill.tenant_id
      https.request(request).code
    end

    def self.return_article(element_id, id)
      url = URI("https://superbill.datev.it/api/v1/articoli/#{element_id}/#{id}")
      https = Net::HTTP.new(url.host.to_s, url.port)
      https.use_ssl = true
      request = Net::HTTP::Get.new(url)
      request.content_type = "application/json"
      request["Authorization"] = "Bearer #{RubyBill.bearer}"
      request["Authorization-Key"] = RubyBill.tenant_id
      JSON.parse(https.request(request).body)
    end

    def self.modify_article(element_id, id, itemData: SBArticleData)
      url = URI("https://superbill.datev.it/api/v1/articoli/#{element_id}/#{id}")
      https = Net::HTTP.new(url.host.to_s, url.port)
      https.use_ssl = true
      request = Net::HTTP::Put.new(url)
      request.content_type = "application/json"
      request.body = itemData.to_h.to_json
      request["Authorization"] = "Bearer #{RubyBill.bearer}"
      request["Authorization-Key"] = RubyBill.tenant_id
      https.request(request).code
    end
  end
end
