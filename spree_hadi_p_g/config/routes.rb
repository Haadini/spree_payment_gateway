Spree::Core::Engine.add_routes do

  get "hadi_p_g/payment/:orders_id/:price" => "hadi_p_g#payment"
  get "hadi_p_g/confrim" => "hadi_p_g#confirm"
  get "hadi_p_g/cancel" => "hadi_p_g#cancel"
  get "hadi_p_g/verifypayment/:request_id/:payment_total" => "hadi_p_g#verifypayment"

  resources :hadi_p_g
end
