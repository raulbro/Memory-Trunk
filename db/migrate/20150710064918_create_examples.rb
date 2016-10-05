class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :title
      t.text :body
      t.text :comment
      t.date :Created_at

      t.timestamps null: false
    end
  end
end
