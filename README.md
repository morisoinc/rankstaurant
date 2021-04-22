
# rankstaurant

  

This is a mobile app project where users can rate restaurants and see their ratings. Owners can register their own and reply to ratings. Admins can edit/delete anything.

  

## architecture

  

The app is built using the Flutter framework, and therefore, uses Dart as the main programming language. It follows the Domain Driven Design (DDD), so it's very low coupled. Each of the layers is like the following:

  
- **Domain**: it's the core of the app. It's composed by entities like restaurant, review, user. They have strong validation and are built with the help of **freezed** for generating boilerplate code, and functional programming concepts from **dartz**. Each domain has an abstract class for handling data persistence and fetching, which are implemented by the *infrastructure* layer.
- **Infrastructure**: handles communication with repository (in this case, **Firebase Cloud Services**), and data conversion between it and the app's *domain* entities. It uses **kotlin**'s list data structure along with **rxdart** which brings some reactive programming concepts when handling data, improving error handling among other aspects.
- **Application**: emits states according to triggered events from the *infrastructure* and *presentation* layers. It's kind of a controller that connects everything together, acting like a use-case mapper. Each folder inside this layer covers a set of use-cases, implemented with **Bloc** state management library and **freezed** for reducing boilerplate code and for applying Union in state classes.
- **Presentation**: it's basically built by **Flutter Widgets**. It consumes, listen and interact with the *application* layer's blocs. Routing from page to page is done with the help of **auto_route**. Some external libraries were used as layout to bring a better experience to the user.

Besides those layers, there's a **global** package that contains handy aspects like settings, theme/colors and app-specific widgets, that are accessed throughout the app.

As mentioned before, **Firebase Cloud Services** is used for data management, but also **Firebase Auth** and **Firebase Crashlytics** are applied to handle user session and to log any app crash, respectively.
  

## setup

  

1. Open an Android or iOS emulator of your choice.

1. In the `root` of the project, run the following commands via terminal:

-  `flutter pub get`

-  `flutter pub run`
