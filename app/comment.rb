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

    def single_comment_photo
        [meangirl: self.meangirl.name, meangirl_id: self.meangirl.id, headshot_photo: self.meangirl.headshot_photo, student_id: self.student_id, name: self.student.name, yearbook_photo: self.student.yearbook_photo, comment: self.comment, level_of_uncool: self.level_of_uncool, like: self.like, incriminating_photo: self.incriminating_photo]
    end

    def self.comment_photo
        self.all.where(&:single_comment_photo)
    end
    
    # def self.all_comment_photo
    #     [meangirl: self.meangirl.name, meangirl_id: self.meangirl.id, headshot_photo: self.meangirl.headshot_photo, student_id: self.student_id, name: self.student.name, yearbook_photo: self.student.yearbook_photo, comment: self.comment, level_of_uncool: self.level_of_uncool, like: self.like, incriminating_photo: self.incriminating_photo]
    # end

end
