class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  before_filter :find_client, :only => [:show,
                                        :new,
                                        :edit,
                                        :update,
                                        :create]
  before_filter :find_project, :only => [:show,
                                       :edit,
                                       :update]
  
  before_filter :restrict_user, :except => [:new,:index, :create, :destroy]

  def index
    @projects = Project.all

   

    respond_to do |format|
      format.html # index.html.erb
      # format.json { render json: @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])

    # @client = Client.find(params[:client_id])

    respond_to do |format|
      format.html # show.html.erb
      # format.json { render json: @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = @client.projects.build

    # respond_to do |format|
    #   format.html # new.html.erb
    #   format.json { render json: @project }
    # end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = @client.projects.build(params[:project])
    @project.user = current_user

       if @project.save
         flash[:notice] = "Project was successfully created." 
         redirect_to [@client, @project]
       else
         render action: "new" 
       end
     
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

       if @project.update_attributes(params[:project])
        flash[:notice] = "Project was successfully updated."
        redirect_to [@client,@project] 
        # format.json { head :no_content }
      else
        format.html { render action: "edit" }
        # format.json { render json: @project.errors, status: :unprocessable_entity }
      end
     
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects, notice: 'Project has been deleted.' }
      format.json { head :no_content }
    end
  end

  private

def restrict_user
  if find_project.user != current_user
    flash[:notice] = "You are not supposed to do that. Go to the naughty corner."
    redirect_to clients_path 
  end
end

def find_client
  @client = Client.find(params[:client_id])
end

private
def find_project
   @project = @client.projects.find(params[:id])

end
end
