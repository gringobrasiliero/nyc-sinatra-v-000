
class Figure <ActiveRecord::Base
  #include Slugified::InstanceMethods
  #extend Slugified::ClassMethods
  has_many :landmarks
  has_many :figure_titles
  has_many :titles, :through => :figure_titles

end
