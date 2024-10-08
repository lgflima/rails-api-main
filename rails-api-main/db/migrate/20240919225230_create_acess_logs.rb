class CreateAcessLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :acess_logs do |t|
      t.timestamp :accessed_at
      t.references :short_url, null: false, foreign_key: true

      t.timestamps
    end
  end
end
