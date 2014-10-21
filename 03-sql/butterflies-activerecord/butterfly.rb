class Butterfly < ActiveRecord::Base
	belongs_to :plant #this has a plant primary id - belongs_to is actually saying you can find it here
end