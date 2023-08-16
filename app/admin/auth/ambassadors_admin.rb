Trestle.resource(:ambassadors, model: Ambassador, scope: Auth) do
  menu do
    group :configuration, priority: :last do
      item :ambassadors, icon: "fas fa-users"
    end
  end

  table do
    column :avatar, header: false do |ambassador|
      avatar_for(ambassador)
    end
    column :email, link: true
    column :first_name
    column :last_name
    actions do |a|
      a.delete unless a.instance == current_user
    end
  end

  form do |ambassador|
    text_field :email

    row do
      col(sm: 6) { text_field :first_name }
      col(sm: 6) { text_field :last_name }
    end

    row do
      col(sm: 6) { password_field :password }
      col(sm: 6) { password_field :password_confirmation }
    end
  end
end
