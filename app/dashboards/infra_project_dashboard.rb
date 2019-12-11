require "administrate/base_dashboard"

class InfraProjectDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    status: Field::String,
    start_date: Field::DateTime,
    end_date: Field::DateTime,
    desc: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    oblast: Field::BelongsTo,
    district: Field::BelongsTo,
    aiyl_aimak: Field::BelongsTo,
    settlement: Field::BelongsTo,
    layers: Field::HasMany,
    t_length: Field::Number.with_options(searchable: false),
    r_length: Field::Number.with_options(searchable: false),
    capacity: Field::String,
    t_area: Field::Number.with_options(searchable: false),
    r_area: Field::Number.with_options(searchable: false),
    b_households: Field::Number,
    b_total: Field::Number,
    b_women: Field::Number,
    cost_total: Field::Number.with_options(searchable: false),
    c_project: Field::Number.with_options(searchable: false),
    c_partners: Field::Number.with_options(searchable: false),
    c_total: Field::Number.with_options(searchable: false),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  title
  status
  oblast
  district
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  id
  title
  oblast
  district
  aiyl_aimak
  settlement
  status
  start_date
  end_date
  t_length
  r_length
  capacity
  t_area
  r_area
  b_households
  b_total
  b_women
  cost_total
  c_project
  c_partners
  c_total
  layers
  desc
   created_at
  updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  title
  status
  start_date
  end_date
  desc
  oblast
  district
  aiyl_aimak
  settlement
  t_length
  r_length
  capacity
  t_area
  r_area
  b_households
  b_total
  b_women
  cost_total
  c_project
  c_partners
  c_total
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how infra projects are displayed
  # across all pages of the admin dashboard.
  #
   def display_resource(infra_project)
     "##{infra_project.id} #{infra_project.title}"
   end
end
