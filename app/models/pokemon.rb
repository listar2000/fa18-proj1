class Pokemon < ApplicationRecord
  include ActiveModel::ForbiddenAttributesProtection
  belongs_to :trainer, optional: true
end
