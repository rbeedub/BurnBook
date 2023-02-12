class Student < ActiveRecord::Base
    has_many :comments
    has_many :meangirls, through: :comments

    def self.average_class
     self.all.average(:year).to_i
    end

    def self.a_to_z_students
        self.all.sort_by(&:name)
    end

    def self.uncool_alphabetically
        self.all.sort_by(&:type_of_uncool)
    end

    def self.class_year
        self.all.sort_by(&:year)
    end

    def self.new_student(name, year, type_of_uncool)
        Student.create(name: name, year: year, type_of_uncool: type_of_uncool)
     end

     def new_comment(comment, level_of_uncool)
        Comment.create(student_id: self.id, comment: comment, level_of_uncool: level_of_uncool, like: false)
    end

end