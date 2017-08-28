class PurchaseOrderItem
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :putchase_order, inverse_of: :purchase_order_items
end
