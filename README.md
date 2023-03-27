# news_flash
A clean architecture news app built with Flutter

# File Structure Walkthrough


    ---> locator.dart
    ---> utils
            ---> constants
            ---> extensions
            ---> resources
    ---> config
            ---> router
            ---> themes
    ---> presentation
            ---> cubits
            ---> views
            ---> widgets
    ---> domain
            ---> model
            ---> repositories
    ---> data
            ---> repositories
            ---> data_sources
                ---> local
                ---> remote

• The locator.dart inside the lib/src folder is responsible for injecting our dependencies using the get_it package

• config folder includes the configuration about the app (themes, routers) and anything else related to the app’s configurations

• utils folder includes (constants, extensions, resources) and anything related to that

