class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.belongs_to :cart, null: false, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true
    end
  end
end
