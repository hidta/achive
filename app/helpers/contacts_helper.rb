module ContactsHelper
    def choose_new_or_edit_contacts
      if action_name == 'new' || action_name == 'confirm'
        confirm_contacts_path
      elsif action_name == 'new'
        contact_path
      end
    end
end
