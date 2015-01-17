class CasesController < ApplicationController
  before_action :find_case, only: [:show, :edit, :update, :destroy]

  def index
    @cases = Case.all
  end

  def show
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.new(case_params)

    if @case.save
      redirect_to @case
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @case.update(case_params)
      redirect_to @case
    else
      render 'edit'
    end
  end

  def destroy
    @case.destroy
    redirect_to root_path
  end

  private

  def case_params
    params.require(:case).permit(:name, :notes, :appointment, 
      patient_attributes: [:id, :name, :age, :_destroy], 
      treatment_attributes: [:id, :name, :price, :_destroy])
  end

  def find_case
    @case = Case.find(params[:id])
  end
end
