module Api
    module V1
        class JobsController < ApplicationController
            def index
                jobs = Alljob.order('created_at DESC');
                render json: {status: 'success', message: 'done', data: jobs}, status: :ok
            end
            def show
                jobs = Alljob.find(params[:id]);
                render json: {status: 'success', message: 'done', data: jobs}, status: :ok
            end
            def create
                jobs = Alljob.new(jobs_params);
                
                if jobs.save
                render json: {status: 'success', message: 'Saved', data: jobs}, status: :ok
                else
                render json: {status: 'success', message: 'Not saved', data: jobs.errors}, status: :unprocessable_entity
                end    
            end

            def destroy
                jobs = Alljob.find(params[:id])
                jobs.destroy
                render json: {status: 'success', message: 'Deleted job', data: jobs}, status: :ok
            end

            def update
                jobs = Alljob.find(params[:id])
                if jobs.update(jobs_params)
                    render json: {status: 'success', message: 'Updated', data: jobs}, status: :ok

                else
                    render json: {status: 'error', message: 'Not updated', data: jobs.errors}, status: :unprocessable_entity
                end
            end

           def user
                jobs = Alljob.find(params[:id])
                if jobs.update(jobs_params)
                    render json: {status: 'success', message: 'Updated', data: jobs}, status: :ok

                else
                    render json: {status: 'error', message: 'Not updated', data: jobs.errors}, status: :unprocessable_entity
                end
            end
            
            private

            def jobs_params
                params.permit(:title, :body, :jobStatus)
            end

            
        end
        
    end
end

