class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :street_address
      t.text :city
      t.text :state
      t.text :zip
    end
  end
end
