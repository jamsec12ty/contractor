class CreateIncidentsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents_users do |t|
      t.integer :user_id
      t.integer :incident_id
    end
  end
end
