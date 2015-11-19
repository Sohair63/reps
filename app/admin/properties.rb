ActiveAdmin.register Property do
  form do |f|
    f.inputs "Property Details" do
      f.input :city
      f.input :property_type,                 as: :radio, collection: %w(Homes Plot Commercial), include_blank: false
      f.input :status,      label: 'Purpose', as: :radio, collection: %w(Sale Rent Wanted),      include_blank: false
      f.input :title,       label: 'Property Title'
      f.input :price,       label: 'All Inclusive Price: (PKR)'
      f.input :area,        label: 'Land Area'
      f.input :area_unit,   label: 'Unit',    as: :select, collection: Property::AREA_UNITS.map { |u| [u.titleize, u] }, prompt: '* * Select Area Unit * *'
      f.input :overview
    end
    f.actions
  end
end
