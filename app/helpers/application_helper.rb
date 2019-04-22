module ApplicationHelper
  def faculty_info(faculty)
    tag.div class: 'faculty' do
      tag.p(faculty.full_name)+
      tag.p("Office Number: #{faculty.office_number}")
    end
  end
end
