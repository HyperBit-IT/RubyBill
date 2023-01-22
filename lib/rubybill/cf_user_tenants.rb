# frozen_string_literal: true

# CFUserTenants
module RubyBill
  module CFUserTenants
    include http

    def list_tenants
      url = URI("https://superbill.datev.it/v10/user-tenants")
      https = Net::HTTP.new(url.host.to_s, url.port)
      https.use_ssl = true
      request = Net::HTTP::Get.new(url)
      request.content_type = "application/json"
      request["Authorization"] = "Bearer #{RubyBill.bearer}"
      request["Authorization-Key"] = RubyBill.tenant_id
      JSON.parse(https.request(request).body)
    end

    def list_tenants_by_id(user_id)
      url = URI("https://superbill.datev.it/v10/user-tenants/#{user_id}")
      https = Net::HTTP.new(url.host.to_s, url.port)
      https.use_ssl = true
      request = Net::HTTP::Get.new(url)
      request.content_type = "application/json"
      request["Authorization"] = "Bearer #{RubyBill.bearer}"
      request["Authorization-Key"] = RubyBill.tenant_id
      JSON.parse(https.request(request).body)
    end

    def list_active_tenants
      url = URI("https://superbill.datev.it/v10/user-tenants/active")
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
