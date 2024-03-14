# Weather-App
A realtime Weather Application.

Features Used-
1.Geocoding Integration:
Utilized the Geocoding package to obtain location names (e.g., city, country) corresponding to given latitude and longitude coordinates.
This feature enhances the user experience by providing contextual information about the geographical location, such as addresses or landmarks.

2.Geolocator and Permission Handling:
Incorporated the Geolocator package to access device location services and retrieve latitude and longitude coordinates.
Integrated permission handler functionality to request and manage permissions required for location access on the device.
By leveraging Geolocator and permission handling, the application can determine the user's current location accurately, enabling location-based features and functionalities.



 
Features for Scalability in Flutter Project

1. RunZonedGuarded Implementation:
Leveraging runZonedGuarded to handle uncaught errors and exceptions gracefully. This ensures that the application remains stable and responsive even in the face of unexpected errors, enhancing user experience and reliability.

2. Clean Code Architecture with MVVM and BLoC:
Utilizing the Model-View-ViewModel (MVVM) and Business Logic Component (BLoC) patterns to structure the codebase in a modular and maintainable manner.
Model: Defines the data and business logic.
View: Represents the UI components.
ViewModel: Acts as an intermediary between the View and the Model, handling presentation logic and providing data to the View.
BLoC: Manages the flow of data and business logic, ensuring separation of concerns and facilitating code reuse.

4. Dependency Injection (DI):
Implementing dependency injection to decouple components and improve testability, maintainability, and scalability.
Using frameworks like get_it to manage dependencies and provide services to different parts of the application.
By injecting dependencies, the application becomes more flexible and easier to extend or modify, allowing for better scalability as new features are added or existing ones evolve.




Advantages of Scalability Features:

1. Maintainability: The project's architecture and dependency management practices make it easier to understand, modify, and maintain the codebase over time.
2. Testability: With clear separation of concerns and dependency injection, unit testing becomes more straightforward, enabling robust test suites to ensure code reliability and quality.
3. Flexibility: The modular structure and use of design patterns allow for seamless integration of new features and updates without risking the stability of existing functionality.
4. Scalability: As the project grows in complexity and size, the adopted practices support scalability by promoting code organization, reusability, and adaptability to changing requirements.

Conclusion:
By incorporating runZonedGuarded for error handling, implementing clean code architecture with MVVM and BLoC, and adopting dependency injection, the Flutter project is well-equipped to achieve scalability, maintainability, and robustness. These features not only enhance the development experience but also contribute to the long-term success and sustainability of the project.


#Could not use the user selecting the location feature as my approach needs paid google map sdk access.
