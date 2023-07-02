create_table :books, id: :bigint, force: :cascade, charset: 'utf8mb4' do |t|
  t.references :user, foreign_key: true, null: false
  t.string  :title, null: false, default: ''
  t.string  :discription, null: false

  t.timestamps
end
