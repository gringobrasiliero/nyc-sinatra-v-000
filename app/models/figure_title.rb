class FigureTitle <ActiveRecord::Base
  #include Slugified::InstanceMethods
#  extend Slugified::ClassMethods

  belongs_to :figure
  belongs_to :title
end
