ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :email, :fname, :lname, :age, :role
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
    controller do
	  def update_resource(object, attributes)
	    update_method = attributes.first[:password].present? ? :update_attributes : :update_without_password
	    object.send(update_method, *attributes)
	  end
	end
	index do   
	    selectable_column                         
		column :email   
		column :fname  
		column :lname  
		column :age  
		column :role                    
		# column :created_at
		# column :confirmed_at  
		# column :last_sign_in_at           
		# column :last_sign_in_ip
		# column :sign_in_count     

		actions                   
	end  

	filter :email
	filter :created_at
	filter :confirmed_at
	filter :last_sign_in_at 
	filter :sign_in_count

	# form do |f|
	#     f.inputs do
	#       f.input :email
	#       f.input :password
	#       f.input :password_confirmation
	#     end
	#     f.actions
 #    end

end
