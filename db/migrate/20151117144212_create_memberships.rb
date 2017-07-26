class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
    	t.integer :employee_id
    	t.integer :department_id
    	t.string :role

      t.timestamps null: false
    end
  end
end
