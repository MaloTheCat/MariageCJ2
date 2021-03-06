class Gift < Airrecord::Table
  self.base_key = "appsnmy0OMuSEkwJS"
  self.table_name = "Gifts"

  has_many :contributor, class: "Contributor", column: "contributor"
end

class Contributor < Airrecord::Table
  self.base_key = "appsnmy0OMuSEkwJS"
  self.table_name = "Contributors"

  belongs_to :gift, class: "Gift", column: "gift"
end
