

module RandomUser

  def self.fetch
    user = HTTParty.get("http://api.randomuser.me/")
    User.create(
      email:          user["results"][0]["user"]["email"],
      name:           user["results"][0]["user"]["name"]["first"],
      gender:         user["results"][0]["user"]["gender"],
      picture:        user["results"][0]["user"]["picture"]["large"],
      dob:            user["results"][0]["user"]["dob"].to_i,
      phone:          user["results"][0]["user"]["phone"],
      location:       user["results"][0]["user"]["location"]["state"],
      password:       user["results"][0]["user"]["password"],
    )
  end

end

