class User < ActiveRecord::Base

  attr_accessor(:name, :email)

  def initialize(attributes = {})
    @name = attributes[:namme]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end

end