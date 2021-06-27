class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.references :user,          foreign_key: true
      t.integer :staff_member_id
      t.text :text,                null: false
      t.timestamps
    end
  end
end
