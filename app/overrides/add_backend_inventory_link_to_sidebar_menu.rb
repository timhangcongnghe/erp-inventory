Deface::Override.new(
  :virtual_path => "layouts/erp/backend/_sidebar",
  :name => "add_backend_inventory_link_to_sidebar_menu",
  :insert_after => "[data-erp-hook='sidebar-menu']",
  :partial => "overrides/backend_inventory_link_to_sidebar_menu",
  :namespaced => true,
  :original => 'f5fe48b6dc6986328e0b873b3ffa1b228dd52a7c'
)