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

Rails.application.config.assets.precompile += %w( visitors/jquery.min visitors/jquery.animsition visitors/jquery.sticky visitors/jquery.flexslider-min visitors/jquery.preloader.min visitors/tether.min visitors/jquery-migrate.min visitors/jquery.easing.min visitors/bootstrap.min visitors/modernizr.custom.97074 visitors/smooth-scroll.min visitors/scrollreveal.min visitors/dzsparallaxer visitors/template-custom visitors/jquery.cubeportfolio.min visitors/cube-awesome-work visitors/scroll-reavel-custom imagesloaded.pkgd.min visitor_index visitors/jquery.twentytwenty visitors/jquery.event.move visitors/jquery.ujs visitors/jquery.fancybox visitors/contact visitors/custom )
