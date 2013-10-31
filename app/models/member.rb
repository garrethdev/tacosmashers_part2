require 'bcrypt'

class Member < ActiveRecord::Base
has_many :posts
 include BCrypt

    def password
      @password ||= Password.new(password)
    end

    def password=(new_password)
      @password = Password.create(new_password)
      self.password = @password
    end
end

# signup
# unm = 'Mike'
# pwd  = 'Sage'
# # ---
# mike = Member.new
# mike.name = unm
# mike.password = pwd
# mike.save

# # login
# unm = 'Mike'
# pwd = 'Sage'
# # ---
# member = Member.where(:name => unm).first
# if member.password == pwd
#   session[:logged_in] = true
#   session[:id] = member.id
# else
#   "get out of here with that fake password shit"
# end
