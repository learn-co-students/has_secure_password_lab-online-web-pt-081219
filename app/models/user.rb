class User < ApplicationRecord
   #raihas_secure_password
   include ActiveModel::Validations
   validates_with PasswordValidator

   def authenticate(password)
      if password == self.password
         self
      end
   end
end
