class Article < ApplicationRecord
	# This add the other side of the association with the articles
	has_many :comments
	
	
	# Validations are rules that are checked before a model object is saved. 
	# If any of the checks fail, the save will be aborted, 
	# and appropriate error messages will be added to the errors attribute 
	# of the model object.
	
	# The first validation declares that a title value must be present. 
	# Because title is a string, this means that the title value must 
	# contain at least one non-whitespace character.

	# The second validation declares that a body value must also be present. 
	# Additionally, it declares that the body value must be at least 10 
	# characters long.
	 
	validates :title, presence: true
	validates :body, presence: true, length: { minimum: 10 }
end
