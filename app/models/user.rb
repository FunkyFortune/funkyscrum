class User < ActiveRecord::Base
  has_and_belongs_to_many :roles

  # does this user have these roles? 
  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end
end
