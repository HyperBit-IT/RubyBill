# frozen_string_literal: true

require_relative "ruby_bill/version"

require 'ruby_bill/sb_archives'

module Ruby_bill
  class Error < StandardError; end

  class << self
    attr_accessor :bearer, :tenant_id
  end

  def config
    yield self
  end

  def self.get_archives
    sb_archives = SBArchives.new
    sb_archives.get_archives
  end

  def self.get_archive(archive_id)
    sb_archives = SBArchives.new
    sb_archives.get_archive(archive_id)
  end
end
