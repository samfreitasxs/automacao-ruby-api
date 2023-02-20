module Rest
  class Users
    include HTTParty

    headers 'Content-Type' => 'application/json'
    base_uri CONFIG['base_uri']

    def get_users
      self.class.get('/api/v1/Activities')
    end

    def get_user(id)
      self.class.get("/api/v1/Activities/#{id}")
    end

    def post_users(user)
      self.class.post('/api/v1/Activities/', body: user.to_json)
    end
  end
end
