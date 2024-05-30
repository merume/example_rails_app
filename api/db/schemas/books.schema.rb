create_table :books, force: :cascade, charset: 'utf8mb4', collation: 'utf8mb4_bin', options: 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
  t.string "title", null: false
  t.references :author, null: false
end
