class UserModel
    attr_accessor :id, :user_name, :password

    def user_hash
        {
            id:@id
            UserName: @user_name,
            Password: @password
        }
    end
end