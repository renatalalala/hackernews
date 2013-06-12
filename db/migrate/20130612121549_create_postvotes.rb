class CreatePostvotes < ActiveRecord::Migration
  def change
    create_table :postvotes do |t|
      t.references :post
      t.references :user
      t.integer :vote_value
      t.timestamps
    end
  end
end
