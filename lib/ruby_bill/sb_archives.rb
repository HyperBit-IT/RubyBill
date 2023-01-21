# frozen_string_literal: true

class SBArchives
  include http
  protected sb_headers =

              def sb_headers
                HTTP::headers("Authorization" => "Bearer #{Ruby_bill.bearer}",
                              "Authorization-Key" => "#{Ruby_bill.tenant_id}")
              end

  def get_archives
    response = HTTP.get("https://superbill.datev.it/api/v1/ditte", headers: sb_headers)
    response.parse
  end

  def get_archive(archive_id)
    # ...
  end
end
