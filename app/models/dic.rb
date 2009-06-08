class Dic < ActiveRecord::Base
  define_index do
    indexes word
  end
end
