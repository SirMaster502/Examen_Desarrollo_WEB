class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :universidad

      t.timestamps null: false
    end
  end
end
