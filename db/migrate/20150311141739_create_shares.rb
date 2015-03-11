class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :title
      t.string :user_name

      t.timestamps null: false
    end
  end
end
