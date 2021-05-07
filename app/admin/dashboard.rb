ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do

    end

    columns do 
      column do
        panel 'Recent Notes' do
          ul do
            Note.order(created_at: :desc).first(5).map do |note|
              li link_to(note.title, admin_note_path(note))
            end
          end
        end
      end
      column do
        panel 'Info' do
          para 'Welcome to Web Notes. It is powered by Ruby on Rails and Active Admin'
        end
      end
    end
    columns do
      column do
        panel 'All Topics' do
          ul do
            Topic.order(name: :asc).map do |topic|
              li link_to(topic.name, admin_topic_path(topic))
            end
          end
        end
      end
    end
  end # content
end
