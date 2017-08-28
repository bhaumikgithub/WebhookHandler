class PurchaseOrderComment
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :putchase_order, inverse_of: :purchase_order_comments
end
