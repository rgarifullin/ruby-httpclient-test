require 'wrest'
require_relative 'base'

module WrestInvoker
  include Base

  Wrest.logger = Logger.new('/dev/null')

  def self.get
    GET.to_uri.get
  end

  def self.post
    POST.to_uri.post
  end

  def self.put
    PUT.to_uri.put
  end

  def self.patch
    PATCH.to_uri.patch
  end

  def self.delete
    DELETE.to_uri.delete
  end
end
