class ConvertTablesToUtf8 < ActiveRecord::Migration[5.2]

    def change_encoding(encoding,collation)
      # Allow for different adapter in different environment
      return unless ActiveRecord::Base.connection_config[:adapter] == "mysql"
      tables = connection.tables
      rubyprayers_development = ActiveRecord::Base.connection_config[:database]
      execute <<-SQL
        ALTER DATABASE #{rubyprayers_development} CHARACTER SET #{encoding} COLLATE #{collation};
      SQL
      tables.each do |tablename|
      execute <<-SQL
        ALTER TABLE #{rubyprayers_development}.#{tablename} CONVERT TO CHARACTER SET #{encoding} COLLATE #{collation};
      SQL
      end
    end
  
    def change
      reversible do |dir|
        dir.up do
          change_encoding('utf8','utf8_general_ci')
        end
        dir.down do
          change_encoding('latin1','latin1_swedish_ci')
        end
      end
    end

end
