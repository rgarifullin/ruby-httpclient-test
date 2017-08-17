require 'patron'
require_relative 'base'

module PatronInvoker
  include Base

  def self.call
    http = Patron::Session.new
    http.get(GET)
    http.post(POST, {})
    http.put(PUT, {})
    http.patch(PATCH, {})
    http.delete(DELETE)
  end
end
