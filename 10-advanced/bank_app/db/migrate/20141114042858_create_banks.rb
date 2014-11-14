class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :account_name
      t.integer :balance
      t.integer :withdraw
      t.integer :deposit

      t.timestamps
    end
  end
end
