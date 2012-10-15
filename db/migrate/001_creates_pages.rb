class CreatesPages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :content
      t.boolean :published, default: false
    end
  end
end
