class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :from
      t.string :to
      t.string :subject
      t.text :content
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
