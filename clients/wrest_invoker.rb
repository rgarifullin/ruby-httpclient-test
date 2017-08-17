require 'wrest'
require_relative 'base'

module WrestInvoker
  include Base

  def self.call
    Wrest.logger = Logger.new('/dev/null')

    GET.to_uri.get
    POST.to_uri.post
    PUT.to_uri.put
    PATCH.to_uri.patch
    DELETE.to_uri.delete
  end
end
