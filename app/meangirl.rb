class Meangirl < ActiveRecord::Base
    has_many :comments
    has_many :students, through: :comments

    def self.most_popular
        self.all.max_by{|meangirl| meangirl.number_of_parties}
    end

    def self.get_superlative
        self.all.map {|meangirl| "#{meangirl.name} aka: #{meangirl.superlative}"}
    end

    def all_comments
        self.comments
    end
    
    def level_of_uncool_points_awarded
        self.comments.pluck(:level_of_uncool).sum
    end

    def number_of_comments_made
        self.comments.count
    end

    def self.new_meangirl(name, number_of_parties, superlative, year)
        Meangirl.create(name: name, number_of_parties: number_of_parties, superlative: superlative, year: year)
    end

    def self.glamourshots
        self.all.pluck(:headshot_photo)
      end

end