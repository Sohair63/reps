ActiveAdmin.register Property do
  form do |f|
    f.inputs "Property Details" do
      f.input :status,        as: :radio, collection: %w(Sale Rent Wanted),      include_blank: false
      f.input :property_type, as: :radio, collection: %w(Homes Plot Commercial), include_blank: false
      f.input :address
      f.input :area
      f.input :overview
      f.input :price
      f.input :title
    end
    f.actions
  end
end
