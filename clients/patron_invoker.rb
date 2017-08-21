require 'patron'
require_relative 'base'

module PatronInvoker
  include Base

  def self.get
    http.get(GET)
  end

  def self.post
    http.post(POST, {})
  end

  def self.put
    http.put(PUT, {})
  end

  def self.patch
    http.patch(PATCH, {})
  end

  def self.delete
    http.delete(DELETE)
  end

  private

  class << self
    def http
      @http ||= Patron::Session.new
    end
  end
end
