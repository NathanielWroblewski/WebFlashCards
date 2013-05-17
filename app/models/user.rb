class User < ActiveRecord::Base
  has_and_belongs_to_many :decks

  #BCrypt Authentication
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
