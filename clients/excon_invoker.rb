require 'excon'
require_relative 'base'

module ExconInvoker
  include Base

  def self.get
    Excon.get(GET)
  end

  def self.post
    Excon.post(POST)
  end

  def self.put
    Excon.put(PUT)
  end

  def self.patch
    Excon.patch(PATCH)
  end

  def self.delete
    Excon.delete(DELETE)
  end
end
