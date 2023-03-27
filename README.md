# news_flash
A clean architecture news app built with Flutter

### File Structure Walkthrough


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
            ---> data_source
                ---> local
                ---> remote

### Project Layer Breakdown

• locator.dart inside the lib/src folder is responsible for injecting our dependencies using the get_it package.

• The config folder includes the configuration about the app (themes, routers) and anything else related to the app’s configurations.

• The utils directory includes (constants, extensions, resources) and anything related to that.

• The data layer interacts with the infrastructure of the application, such as the database, external APIs. This includes implementing data access methods,  mapping, and managing the data source connection and transactions.

• The presentation layer is responsible for presenting data and receiving input. It consists of UI components, such as screens/widgets, and controllers or presenters (Bloc in this case) that handle user input and interaction.

• The domain layer contains the core business logic of the application, this includes our entities and repo definitions

