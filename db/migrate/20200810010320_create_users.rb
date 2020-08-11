class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.date :dob
      t.string :address
      t.string :phone
      t.string :email
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.string :driver_lic_no
      t.boolean :driver_lic_current
      t.string :sec_lic_no
      t.date :sec_lic_exp
      t.string :rsa_no
      t.date :rsa_exp
      t.date :first_aid_exp

      t.timestamps
    end
  end
end
