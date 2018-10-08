# # Be sure to restart your server when you modify this file.
#
# # Version of your assets, change this if you want to expire all your assets.
# Rails.application.config.assets.version = '1.0'
#
# # Add additional assets to the asset load path
# # Rails.application.config.assets.paths << Emoji.images_path
# # Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'fonts' )
#
# # Precompile additional assets.
# # application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# # Rails.application.config.assets.precompile += %w( search.js )
# Rails.application.config.assets.precompile += [/^[-_a-zA-Z0-9]*\..*/]
# Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|css|ttf)\z/
Rails.application.config.assets.precompile += %w( visitors/style.css visitors/twentytwenty.css visitors/twentytwenty-no-compass.css visitors/mdb.min.css visitors/jquery.fancybox.css )
Rails.application.config.assets.paths << Rails.root.join('dashboard')

# Rails.application.config.assets.precompile += %w( visitors/jquery.min.js visitors/jquery.event.move.js visitors/jquery.twentytwenty.js visitors/jquery.preloader.min.js visitors/jquery.ujs.js visitors/tether.min.js visitors/jquery-migrate.min.js visitors/jquery.easing.min.js visitors/bootstrap.min.js visitors/jquery.flexslider-min.js visitors/modernizr.custom.97074.js visitors/jquery.sticky.js visitors/smooth-scroll.min.js visitors/scrollreveal.min.js visitors/dzsparallaxer.js visitors/jquery.cubeportfolio.min.js visitors/cube-awesome-work.js visitors/scroll-reavel-custom.js visitors/template-custom.js visitors/jquery.fancybox.js visitors/contact.js visitors/custom.js )
