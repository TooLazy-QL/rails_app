class Coursera
    include HTTParty
  
    base_uri 'https://api.coursera.org/api/courses.v1'
    #base_uri 'https://api.coursera.org/api/catalog.v1/courses'
    #default_params fields: "smallIcon,shortDescription", q: "search"
    default_params fields: "courseType, name", q: "search"
    format :json
  
    def self.for term
      get("", query: { query: term})["elements"]
    end
end