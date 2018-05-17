class Api::V1::ContractsController < ApplicationController

  def index
    render json: Contract.all
  end

  def create
    byebug
    contract = Contract.new(
      title: params[:title]
    )
    if contract.save
      render json: contract
    else
      render json: {errors: ""}
    end
  end

  # def show
    # @contract = Contract.find(params[:id])
    # render json: {contract: @contract, reviews: @contract.reviews}
  # end

  def edit
  end

  def update
  end

  def destroy
    # @contract = Contract.find(params[:id])
  end

  private

  def contract_params
    # params.require(:contract).permit(:title, :summary, :details, :milestones, :legal, :copyright, :compensation, :developer_id, :contractor_id)
  end

end
