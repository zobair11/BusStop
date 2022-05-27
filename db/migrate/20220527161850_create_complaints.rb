class CreateComplaints < ActiveRecord::Migration[7.0]
  def change
    create_table :complaints do |t|
      t.string :complaint, null: false
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
