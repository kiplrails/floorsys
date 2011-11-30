class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name

      t.timestamps
    end
    execute <<-SQL
    INSERT INTO roles(name) VALUES('Super');
    
    SQL
    
    execute <<-SQL
    INSERT INTO roles(name) VALUES('Admin');
    
    SQL
    
    execute <<-SQL
    INSERT INTO roles(name) VALUES('Staff');
    
    SQL
    
  end

  def self.down
    drop_table :roles
  end
end
