class PackageController < ApplicationController
    
        def all
            @packages=Package.all
        end
            
        def show
            @package=package.find(params[:id])
        end
            
        def new
           @package=package.new
        end
            
        def create
            @package=package.create(package_params)
            
            if @package.save
                flash[:success]="package successfully saved"
            else
                flash [:error]="package was not saved"
            end
    
        end
            
        def edit
            @package=package.update(package_params)
        
            if @package.save
                flash[:success]="package successfully updated"
            else
                flash [:error]="package was not updated"
            
            end
        end
            
        def destroy
            package.find(params:[id]).destroy
        end
            
        private
            def package_params
                params.require(:package).permit(:tracking_number,:carrier,:length,:width,:height,:distance_unit,:mass_unit,:source_info)
            end


    end
