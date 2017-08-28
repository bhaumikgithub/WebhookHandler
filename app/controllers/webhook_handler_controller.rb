class WebhookHandlerController < ApplicationController
	protect_from_forgery with: :null_session

  def index
  	@purchase_order = PurchaseOrder.all
  end

  def create
  	@purchase_order = PurchaseOrder.new(webhook_handler_params)
  	if @purchase_order.save!
  		render json: { data: 'test', status: 200 }, status: 200
  	else
  		render json: {data: false, status: 400}
  	end
  end

  def webhook_handler_params
  	params.permit(:id,:company_id,:approval_key,:department_id,:department_name,:supplier_id,:supplier_name,:status, :creator_id, :currency_id, :creator_name, :amount, :notes, :total_net_amount, :total_gross_amount, :base_gross_amount, :delivery_status, :delivered_on, :custom_fields, :share_key, :archived, :conversion_rate, :keywords, :self_approved, :xero_id, :synced_with_xero,:created_at, :updated_at)
  end
end
