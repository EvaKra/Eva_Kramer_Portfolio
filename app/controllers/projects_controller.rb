class ProjectsController < ApplicationController
    
    def show
        @project = Project.find(params[:id])
    end

    def index
        @projects = Project.all
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.new(project_params)
        if @project.save
            redirect project_path
        else
            render :new
        end
    end    

    def destroy
        @project.destroy
        redirect_to projects_path
    end

    private 

    def project_params
        params.require(:project).permit(:name, :description, :url, :github, photos: [] )
    end
end
