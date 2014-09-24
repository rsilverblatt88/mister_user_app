puts "running creating users table"
Sequel.migration do
# email (string)
# name (string)
# gender (string)
# picture (string)
# dob (integer)
# phone (string)
# location (string)
# password (string)
  up do
    create_table(:users) do
      primary_key :id
      String      :email,      :size=>127, :null=>false
      String      :name,       :size=>127, :null=>false
      String      :gender,     :size=>127, :null=>false
      String      :picture,    :size=>127, :null=>false
      Integer     :dob,                    :null=>false
      String      :phone,      :size=>127, :null=>false
      String      :location,   :size=>127, :null=>false
      String      :password,   :size=>127, :null=>false
    end
  end

  # the undo
  down do
    drop_table(:users)
  end
end
