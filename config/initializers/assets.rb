# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( menus.js )
Rails.application.config.assets.precompile += %w( form.js )
Rails.application.config.assets.precompile += %w( make.js )
Rails.application.config.assets.precompile += %w( custom_styles.css )