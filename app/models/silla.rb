class Silla < ActiveRecord::Base
	belongs_to :reserva
	belongs_to :vuelo 
end
