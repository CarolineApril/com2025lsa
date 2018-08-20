class Option < ActiveRecord::Base
    validates_presence_of :title, :content, :professor, :credits
end
