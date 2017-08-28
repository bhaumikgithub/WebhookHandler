class Budget
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :putchase_order, inverse_of: :budgets
end
