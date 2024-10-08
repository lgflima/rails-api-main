class BaseCrudController < ApplicationController
  def index
    crud_model = crud_model.all
    render json: crud_models, status: 200
  end

  def create
    #crud_model_name = params[:name]
    #crud_model_released_at = params[:released_at]

    new_crud_model = crud_model.create(create_params)

    # if new_crud_model.id.present?
    #   render json: new_crud_model, status: 200
    # else
    #   render json: {message: 'erro'}, status: 422
    # end
                        # OU
                        
    if new_crud_model.errors.present?
        render json: new_crud_model.errors.messages, status: 422
      else
        render json: new_crud_model, status: 200
      end
  end

  def show
    crud_model_id = params['id']
    crud_model = crud_model.find_by(id: crud_model_id)
    render json: crud_model, status: 200
  end

  def index
    crud_models = crud_model.all
    render json: crud_models, status: 200
  end

  def update
    crud_model_id = params['id']
    new_name = params['name']
    crud_model = crud_model.find_by(id: crud_model_id)

    if crud_model.present?
      crud_model.update(name: new_name)
      render json: crud_model, status: 200
    else
      render json: {message: 'erro'}, status: 422
    end 
  end

  def destroy
    crud_model_id = params['id']
    crud_model = crud_model.find_by(id: crud_model_id)

    if crud_model.present?
      crud_model.delete
      render json: crud_model, status: 200
    else
      render json: {}, status: 422
    end
  end


  
end
