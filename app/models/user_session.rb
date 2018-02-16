class UserSession < Authlogcic::Session::Base
  secure Rails.env.production?
  httponely true
end