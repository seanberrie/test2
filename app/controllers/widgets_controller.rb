class WidgetsController < ApplicationController
  def index
    @widgets = Widget.all
  end
  def show
    @widget = Widget.find(params[:id])
  end
  def new
    @widget = Widget.new
  end
  def create
    @widget = Widget.new(widget_params)
    if @widget.save
        redirect_to widgets_path
    else
        render :new
    end
  end
  def destroy
    @widget = Widget.find(params[:id])
    @widget.destroy
    redirect_to widgets_path
  end

  private
    def widget_params
        params.require(:widget).permit(:description, :quantity)
    end
end
