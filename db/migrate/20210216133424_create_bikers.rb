class CreateBikers < ActiveRecord::Migration[6.0]
  def change
    create_table :bikers do |t|
      t.string :firstname
      t.string :lastname
      t.string :city
      t.string :state
      t.string :geolocation
      t.string :avatar

      t.timestamps
    end
  end
end
