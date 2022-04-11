module Api
    module V1
        class UsersController < ApplicationController
            def index
                users = Alluser.order('created_at DESC');
                render json: {status: 'success', message: 'done', data: users}, status: :ok
            end
            def show
                users = Alluser.find(params[:id]);
                render json: {status: 'success', message: 'done', data: users}, status: :ok
            end
            def create
                users = Alluser.new(users_params);
                
                if users.save
                render json: {status: 'success', message: 'Saved', data: users}, status: :ok
                else
                render json: {status: 'success', message: 'Not saved', data: users.errors}, status: :unprocessable_entity
                end    
            end

            def destroy
                users = Alluser.find(params[:id])
                users.destroy
                render json: {status: 'success', message: 'Deleted job', data: users}, status: :ok
            end

            def update
                users = Alluser.find(params[:id])
                if users.update(users_params)
                    render json: {status: 'success', message: 'Updated', data: users}, status: :ok

                else
                    render json: {status: 'error', message: 'Not updated', data: users.errors}, status: :unprocessable_entity
                end
            end

            private

            def users_params
                params.permit(:username, :email, :name)
            end

            #user
          # def apply_params
           #  params.permit(:userstatus)
            #end
           
            
        end
        
    end
end

