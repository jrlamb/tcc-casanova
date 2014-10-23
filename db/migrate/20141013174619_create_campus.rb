class CreateCampus < ActiveRecord::Migration
  def change
    create_table :campus do |t|
      t.string :name
      t.string :address
      t.string :number
      t.string :district
      t.integer :cep
      t.string :state
      t.string :city
      t.string :phoneFixed
      t.string :phoneFax
      t.references :university, index: true

      t.timestamps
    end
  end
end

