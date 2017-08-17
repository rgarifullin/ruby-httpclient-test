require 'sinatra'

%i[get post put patch delete].each do |meth|
  send(meth, "/api/v1/#{meth}") do
    content_type :json

    JSON.dump(nil)
  end
end
