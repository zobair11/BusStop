class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :phone_number
      t.string :gender, null: false
      t.datetime :on_board_time, null: false
      t.timestamps
    end
  end
end
