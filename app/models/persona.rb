class Persona < ActiveRecord::Base
	validates :nombre, {presence:true}
	validates :direccion, {presence:true}
	validates :telefono, {presence:true}
	validates :universidad, {presence:true}
end
