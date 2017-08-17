# require 'rubygems'
require 'excon'
require_relative 'base'

module ExconInvoker
  include Base

  def self.call
    Excon.get(GET)
    Excon.post(POST)
    Excon.put(PUT)
    Excon.patch(PATCH)
    Excon.delete(DELETE)
  end
end
