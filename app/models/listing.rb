class Listing < ActiveRecord::Base
belongs_to :user	

def self.search(search)
		if search
			find( :all, :conditions => ['name LIKE ?', "%#{search}%"])
		else
  		find(:all)
		end
end
def self.searchdoi(searchdoi)
		if searchdoi
			find( :all, :conditions => ['doi LIKE ?', "%#{searchdoi}%"])
		else
		puts "No match found"
		end
end
#url_regex= /\A(http|https)\/\/|[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}(:[0-9]{1,5})?(\/.*)?\z/ix
validates_uniqueness_of :doi
#validates_format_of :url, :with url_regex , :message => "URL's must contain http://Your Url here"




end
