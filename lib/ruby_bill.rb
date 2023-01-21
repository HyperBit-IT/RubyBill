# frozen_string_literal: true

require_relative "ruby_bill/version"

require "ruby_bill/SuperBill/sb_articles"

module Ruby_bill
  class Error < StandardError; end

  class << self
    attr_accessor :bearer, :tenant_id
  end

  def config
    yield self
  end

  # @author: Francesco Masala <fmasala@hyperbit.it>
  # @since: 2023-01-21
  # @version: 0.1.0
  # @return [JSON]
  # SuperBill Archives
  def self.get_archives
    sb_archives = SBArchives.new
    sb_archives.get_archives
  end

  def self.get_archive(archive_id)
    sb_archives = SBArchives.new
    sb_archives.get_archive(archive_id)
  end
end
