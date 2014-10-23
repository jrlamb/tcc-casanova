class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name
      t.string :period
      t.integer :loadHourly
      t.references :course, index: true
      t.references :teacher, index: true
      t.string :matrix
      t.string :integer
      t.string :preRequisite

      t.timestamps
    end
  end
end
