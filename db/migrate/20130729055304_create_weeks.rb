class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :employee_id
      t.date :reported_on
      t.text :report
      t.text :comment

      t.timestamps
    end
  end
end
