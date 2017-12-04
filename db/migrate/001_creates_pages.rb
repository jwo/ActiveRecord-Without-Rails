class CreatesPages < ActiveRecord::Migration[4.2]
  def change
    create_table :pages do |t|
      t.text :content
      t.boolean :published, default: false
    end
  end
end
