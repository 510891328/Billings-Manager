class TypesController < ApplicationController
  def new
    @type = Type.new
  end

  def create
    @type = Type.create(type_params)
    return render :new unless @type.save
    # if type.valid?
    #   flash[:success] = "Type created"
    # else 
    #   flash[:my_errors] = type.errors.full_messages
    # end  
    # redirect_to new_type_path
  end


  private

  def type_params
    params.require(:type).permit(:name)
  end
end
