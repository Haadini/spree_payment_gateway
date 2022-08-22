class CreateSpreeHadiPGCheckout < ActiveRecord::Migration[6.1]
  def change

    create_table :hadi_p_g_checkouts do |t|

      t.string :request_id
      t.string :payment_total
      t.string :state
      t.string :order_id
      t.boolean :success_payment, deafult: false

      t.timestamps
    end
  end
end
