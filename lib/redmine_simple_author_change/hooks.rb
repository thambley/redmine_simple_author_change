module RedmineSimpleAuthorChange
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_form_details_top, :partial => 'issues/simple_author_change'

    def helper_issues_show_detail_after_setting(context = {})
      detail = context[:detail]

      case detail.property
      when 'attr'
        if detail.prop_key == 'author_id'
          detail[:value] = User.find detail.value 
          detail[:old_value] = User.find detail.old_value
        end
      end
    end

  end
end
