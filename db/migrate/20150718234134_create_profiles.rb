class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.text :biography
      t.string :city_born
      t.date :date_of_birth
      t.text :hobbie
      t.text :dream
      t.text :job_history
      t.text :fear
      t.text :other

      t.timestamps null: false
    end
  end
end
