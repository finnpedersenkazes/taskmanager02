class Api::V1::TasksController < Api::V1::BaseController
  before_action :set_task, only: [ :show ]

  def index
    @tasks = Task.all
  end

  def show
  end

  private

  def set_task
    @task = Task.find(params[:id])
    # authorize @task  # For Pundit
  end
end
