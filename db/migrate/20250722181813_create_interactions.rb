class CreateInteractions < ActiveRecord::Migration[8.0]
  def change
    create_table :interactions do |t|
      t.references :lead, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
