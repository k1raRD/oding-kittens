class KittensController < ApplicationController
  def index
    @kittens = Kitten.all

    respond_to do |format|
      format.html
      format.xml { render xml: @kittens }
      format.json { render json: @kittens }
    end
  end

  def show
    @kitten = Kitten.find(params[:id])

    respond_to do |format|
      format.html
      format.xml { render xml: @kitten }
      format.json { render json: @kitten }
    end
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      flash[:success] = "Successfully created a new kitten"
      redirect_to @kitten_path
    else
      flash.now[:error] = "UPS!, There errors in your request"
      render :new, :unprocessable_entity
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(paramas[:id])

    if @kitten.update(kitten_params)
      flash[:success] = "Successfully updated kitten"
      redirect_to @kitten_path
    else
      flash.now[:error] = "UPS!, There errors in your request"
      render :new, :unprocessable_entity
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy

    flash[:success] = "Successfully deleted kitten"
    redirect_to root_path, status: :see_other
  end

  private

  def kitten_params
    paramas.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
