class CreateNexus < ActiveRecord::Migration[6.1]
  def change
    create_table :nexus do |t|
      t.string :name

      t.timestamps
    end
  end
end
