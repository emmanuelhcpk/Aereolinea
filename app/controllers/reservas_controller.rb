class ReservasController < ApplicationController
    
    def create
        @reserva = Reserva.new(reserva_params)
        if  @reserva.valid?
                @reserva.save
            vuelo = @reserva.sillas.first.vuelo
             redirect_to vuelo
        else
            redirect_to error_path
        end
        
    end
    
    def show
        
    end
    
    def index
        @reservas = @current_socio.Reservas
    end
    
    def destroy
        @reserva = Reserva.find(params[:id])
       # funcion= @reserva.funcion
        @reserva.destroy
    #redirect_to funcion
      
    end
    
private
    def reserva_params
        params.require(:reserva).permit()
    end
end