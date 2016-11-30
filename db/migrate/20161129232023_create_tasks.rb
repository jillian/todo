class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string     :content
      t.references :list, foreign_key: true
      t.boolean    :completed

      t.timestamps null: false
    end
  end
end
