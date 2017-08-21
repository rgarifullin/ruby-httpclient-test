module Base
  BASE_URL = 'http://lvh.me/api/v1/'.freeze

  %i[get post put patch delete].each do |const|
    const_set(const.upcase, "#{BASE_URL}#{const}".freeze)
  end

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def all
      get
      post
      put
      patch
      delete
    end
  end
end
