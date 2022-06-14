class Article < ApplicationRecord
   def initialize(title,des)
      @title = title
      @description = des
   end
end
