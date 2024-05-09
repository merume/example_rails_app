create_table :users, force: :cascade, charset: 'utf8mb4', collation: 'utf8mb4_bin', options: 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
    t.string  :name, null: false, default: ''
    t.integer :age,  null: false, default: 20

    t.timestamps
    t.index :name, name: 'index_users_on_name'
  end