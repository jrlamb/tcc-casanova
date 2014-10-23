class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :cpf
      t.string :rg
      t.date :dtBirth
      t.string :sex
      t.string :stateCivil
      t.string :phone
      t.string :cellphone
      t.string :state
      t.string :city
      t.string :address
      t.string :number
      t.string :district
      t.integer :cep
      t.string :certifications

      t.timestamps
    end
  end
end
