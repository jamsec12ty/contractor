class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :licensee_name

      t.timestamps
    end
  end
end
