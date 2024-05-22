create_table :users, force: :cascade, charset: 'utf8mb4', collation: 'utf8mb4_bin', options: 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
  t.string :first_name, null: false, default: ''
  t.string :last_name, null: false, default: ''
  t.integer :age,  null: false, default: 20

  t.timestamps
  t.index :first_name, name: 'index_users_on_first_name'
  t.index :last_name, name: 'index_users_on_last_name'
end