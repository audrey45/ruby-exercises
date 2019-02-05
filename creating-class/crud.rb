require 'bcrypt'

module Crud

  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def self.create_secure_users(user_list)
    user_list.each do |user|
        user[:password] = create_hash_digest(user[:password])
    end
    user_list
  end
end