class Adventure < ApplicationRecord

    has_many :comments
    has_many :users, through: :comments

    # Not sure if this is correct. 
    #Can a model both belongs_to and has_many to the same model? 
    #The issue is when a User is creating an adventure they need 
    #to point back to who created it. Check out seeds.rb

end
