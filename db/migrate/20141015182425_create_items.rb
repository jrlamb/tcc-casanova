class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :enrollment, index: true
      t.references :turma, index: true
      t.references :discipline, index: true

      t.timestamps
    end
  end
end
