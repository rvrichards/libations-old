class Libation < ActiveRecord::Base
  has_many :details

  enum container_type: { Aluminium: 1, Glass: 2,Plastic: 3, Steel: 4, Tetra: 5, Cardboard: 6 ,Other: 7}
  enum measurement_type: { grams: 1, litres: 2, millilitres: 3, ounces: 4}
  enum libation_type: { drink: 1,  juice: 2, soda: 3, tea: 4, dairy: 5, wine: 6, beer: 7, other:99 }
end
