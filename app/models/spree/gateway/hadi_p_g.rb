require 'paypal-sdk-merchant'
module Spree
  class Gateway::HadiPG < Gateway
    def provider_class
      ::PayPal::SDK::Merchant::API
    end

    def provider
      ::PayPal::SDK.configure(
        :mode      => preferred_server.present? ? preferred_server : "sandbox",
        :username  => preferred_login,
        :password  => preferred_password,
        :signature => preferred_signature)
      provider_class.new
    end
  end
end
