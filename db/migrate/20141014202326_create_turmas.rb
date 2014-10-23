class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :name
      t.string :period

      t.timestamps
    end
  end
end
