class Dic < ActiveRecord::Base
  
  WORD_SIZE = [
    [ 'dowolna' , 0 ],
    [ '2 literowe' , 2 ],
    [ '3 literowe' , 3 ],
    [ '4 literowe' , 4 ],
    [ '5 literowe' , 5 ],
    [ '6 literowe' , 6 ],
    [ '7 literowe' , 7 ]
  ]
  
  define_index do
    indexes word, :sortable => true
    indexes count_letters
  end
end
