class Reserva < ActiveRecord::Base
	belongs_to :socio
	has_many :sillas
end
