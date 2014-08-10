RailsAdmin.config do |config|

  RailsAdmin.config {|c| c.label_methods << :fullname}
  RailsAdmin.config {|c| c.label_methods << :article_url}

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.model Post do
    edit do
      field :category
      field :title
      field :body, :wysihtml5 do
        config_options :html => true
      end
      field :site_author
      field :publish_ind
      field :video_url
      field :slug
      field :article_author
      field :post_publication
      field :article_title
      field :article_url
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
