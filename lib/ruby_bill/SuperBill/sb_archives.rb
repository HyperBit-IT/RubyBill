# frozen_string_literal: true

class SBArchives
  include http

  def sb_headers
    HTTP.headers(
      "Authorization" => "Bearer #{Ruby_bill.bearer}",
      "Authorization-Key" => Ruby_bill.tenant_id.to_s
    )
  end

  def get_archives
    response = HTTP.get("https://superbill.datev.it/api/v1/ditte", headers: sb_headers)
    response.parse.to_s
  end

  def get_archive(archive_id)
    # ...
  end
end
