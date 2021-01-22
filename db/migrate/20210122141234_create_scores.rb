class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.string :japanese
      t.string :math
      t.string :science
      t.string :social
      t.string :english
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
