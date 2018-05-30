class Api::V1::ContractsController < ApplicationController

  def index
    render json: Contract.all
  end

  def create
    contract = Contract.new(
      title: params['title'],
      summary: params['summary'],
      details: params['details'],
      milestones: params['milestones'],
      legal: params['legal'],
      copyright: params['copyright'],
      compensation: params['compensation'],
      developer_id: params['developer_id'],
      contractor_id: params['contractor_id'],
      developer_signature: params['developer_signature'],
      contractor_signature: params['contractor_signature'],
      approved: params['approved'],
    )

    if contract.save
      render json: contract
    else
      render json: {errors: "you done goofed!"}
    end
  end

  # def show
    # @contract = Contract.find(params[:id])
    # render json: {contract: @contract, reviews: @contract.reviews}
  # end

  def update
    contract = Contract.find(params[:id])

    if contract.update(
      title: params['title'],
      summary: params['summary'],
      details: params['details'],
      milestones: params['milestones'],
      legal: params['legal'],
      copyright: params['copyright'],
      compensation: params['compensation'],
      developer_id: params['developer_id'],
      contractor_id: params['contractor_id'],
      developer_signature: params['developer_signature'],
      contractor_signature: params['contractor_signature'],
      approved: params['approved'],
    )
      render json: contract
    else
      render json: {errors: "you done goofed!"}
    end
  end

  def destroy
    # @contract = Contract.find(params[:id])
  end

  private

  def contract_params
    # params.require(:contract).permit(:title, :summary, :details, :milestones, :legal, :copyright, :compensation, :developer_id, :contractor_id)
  end

end
