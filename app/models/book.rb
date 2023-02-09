class Book < ApplicationRecord
    self.per_page = 3
    
    validates :name,:author, presence: true
    validates :name, uniqueness: true
    validates :name, length: { minimum: 2,message: "atleast 2 chars are required" }
   
    before_save :merge_names
    after_destroy :update_log

    def merge_names
      self.name = self.name + " by " + self.author
    end
    def update_log
      logger.info "================Alas! - a book has been deleted with name #{self.name}======================="
    end
end
