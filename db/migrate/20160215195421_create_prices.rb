class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.decimal :dollars
      t.datetime :set_at

      t.timestamps
    end
  end
end
