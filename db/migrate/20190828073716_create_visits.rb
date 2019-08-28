class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.string :name
      t.string :gender
      t.string :area

      t.timestamps
    end
  end
end
