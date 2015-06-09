module ApplicationHelper

	def es_admin?
        
        if current_socio.admin==true
        return true    
        
        else
            return false
            
        end
    end	


def es_admin2?
        
        if current_socio!=nil

        	if current_socio.admin==true
	        return true    
	        
	        else
	            return false
            
        	end
        	
       else
       	redirect_to root_path
       end
    end	


end
