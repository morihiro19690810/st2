class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :item
      t.boolean :ask, default: false
      t.timestamps
    end
  end
end
