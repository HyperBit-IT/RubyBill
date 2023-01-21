# frozen_string_literal: true

# CFUserTenants
class CFUserTenants
  include http

  def sb_headers
    HTTP.headers(
      "Authorization" => "Bearer #{Ruby_bill.bearer}",
      "Authorization-Key" => Ruby_bill.tenant_id.to_s
    )
  end

  def list_tenants
    response = HTTP.get("https://superbill.datev.it/v10/user-tenants", headers: sb_headers)
    response.parse.to_s
  end

  def list_tenants_by_id(user_id)
    response = HTTP.get("https://superbill.datev.it/v10/user-tenants/#{user_id}", headers: sb_headers)
    response.parse.to_s
  end

  def list_active_tenants
    response = HTTP.get("https://superbill.datev.it/v10/user-tenants/active", headers: sb_headers)
    response.parse.to_s
  end
end
