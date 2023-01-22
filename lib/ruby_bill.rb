# frozen_string_literal: true

# frozen_string_literal: true

require_relative "rubybill/version"
require_relative "rubybill/models_cf"
require_relative "rubybill/models_is"
require_relative "rubybill/models_sb"
require_relative "rubybill/cf_user_tenants"
require_relative "rubybill/is_agreements"
require_relative "rubybill/is_invoices"
require_relative "rubybill/is_received_invoices"
require_relative "rubybill/sb_archives"
require_relative "rubybill/sb_articles"
require_relative "rubybill/sb_clients"
require_relative "rubybill/sb_documents"
require_relative "rubybill/sb_element"
require_relative "rubybill/sb_health"
require_relative "rubybill/sb_legal_nature"
require_relative "rubybill/sb_nations"
require_relative "rubybill/sb_payment_mode"
require_relative "rubybill/sb_payment_type"
require_relative "rubybill/sb_registers"
require_relative "rubybill/sb_unit_measure"
require_relative "rubybill/sb_vat_codes"
require_relative "rubybill/sb_vectors"

# Main module
# @author: Francesco Masala <HyperBit SRLs>
module RubyBill
  # Including modules
  include RubyBill::ModelsCF
  include RubyBill::ModelsIS
  include RubyBill::ModelsSB
  include RubyBill::CFUserTenants
  include RubyBill::ISAgreements
  include RubyBill::ISInvoices
  include RubyBill::ISReceivedInvoices
  include RubyBill::SBArchives
  include RubyBill::SBArticles
  include RubyBill::SBClients
  include RubyBill::SBDocuments
  include RubyBill::SBElement
  include RubyBill::SBHealth
  include RubyBill::SBLegalNature
  include RubyBill::SBNations
  include RubyBill::SBPaymentMode
  include RubyBill::SBPaymentType
  include RubyBill::SBRegisters
  include RubyBill::SBUnitMeasure
  include RubyBill::SBVatCodes
  include RubyBill::SBVectors
  # Adding specific dependencies
  require "net/http"
  require "uri"
  require "json"
  require "base64"

  class Error < StandardError; end

  class << self
    attr_accessor :bearer, :tenant_id
  end

  def config
    yield self
  end
end
