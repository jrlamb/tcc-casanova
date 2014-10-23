class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name
      t.integer :qtdCampus
      t.string :address
      t.string :number
      t.string :district
      t.integer :cep
      t.string :state
      t.string :city
      t.string :phoneFixed
      t.string :phoneFax

      t.timestamps
    end
  end
end
