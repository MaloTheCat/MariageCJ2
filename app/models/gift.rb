class Gift < Airrecord::Table
  self.base_key = "appsnmy0OMuSEkwJS"
  self.table_name = "Weddings C&J"

  has_many :contributor, class: "Contributor", column: "Contributor"
end

class Contributor < Airrecord::Table
  self.base_key = "appsnmy0OMuSEkwJS"
  self.base_name = "Weddings C&J2"

  has_many :gift, class: "Gift", column: "Gift"
end
