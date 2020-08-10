class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.date :dob
      t.string :address
      t.string :phone
      t.string :email
      t.string :emergencyn
      t.string :emergencyph
      t.string :driverlicno
      t.boolean :dlcurrent
      t.string :seclicno
      t.date :seclicexp
      t.string :rsano
      t.date :rsaexp
      t.date :firstaidexp

      t.timestamps
    end
  end
end
