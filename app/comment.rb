class Comment < ActiveRecord::Base
    belongs_to :meangirl
    belongs_to :student

    def self.liked_comment
        self.all.where(like: true)
    end

    def up_cool_factor
        self.level_of_uncool += 1
        self.save
    end
    
    def down_cool_factor
        self.level_of_uncool -= 1
        self.save
    end

end