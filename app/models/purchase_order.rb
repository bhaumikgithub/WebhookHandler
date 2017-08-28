class PurchaseOrder
  include Mongoid::Document
  include Mongoid::Timestamps

  field :id, type: Integer
  field :company_id, type: Integer
  field :approval_key, type: String
	field :department_id, type: Integer
	field :department_name, type: String
	field :supplier_id, type: Integer
	field :supplier_name, type: String
	field :status, type: String
	field :creator_id, type: Integer
	field :currency_id, type: Integer
	field :creator_name, type: String
  field :amount, type: Float
  field :notes, type: String
  field :total_net_amount, type: Float
  field :total_gross_amount, type: Float
  field :base_gross_amount, type: Float
  field :delivery_status, type: String
  field :delivered_on, type: String
  field :custom_fields, type: String
  field :share_key, type: String
  field :archived, type: Boolean
  field :conversion_rate, type: String
  field :keywords, type: String
  field :self_approved, type: Boolean
  field :xero_id, type: Integer
  field :synced_with_xero, type: Boolean
  field :purchase_order_items, type: Array
  field :budgets, type: Array
  field :purchase_order_comments, type: Array
end
