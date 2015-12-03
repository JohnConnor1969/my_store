class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
# Использование t.integer :supplier_id указывает имя внешнего ключа очевидно и явно. 
# В современных версиях Rails можно абстрагироваться от деталей реализации
# используя t.references :supplier