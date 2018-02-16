class User < ApplicationRecord
  acts_as_authentic do |c|
    c.crypto_provider = Atuhlogic::CryptProviders::BCrypt
  end

end
