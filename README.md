# assignment_4
    
**Overview:**
This project demonstrates how to integrate networking and API calls in a Flutter app using the http package and Provider for state management. The app fetches data from a public API (JSONPlaceholder) and displays it in a list view. The data is automatically loaded when the app starts, ensuring a seamless user experience.


**Set Up the Project**

1. Added the **http and provider packages** to **pubspec.yaml**.
2. Created a basic Flutter project structure.
3. Create the Data Provider.

**post.dart:**
Implemented a PostData class using ChangeNotifier to manage the state of the fetched data.
Defined methods for making API calls to fetch posts and updating the state accordingly.
Included basic error handling to display error messages in case of failed API calls.

**Design the UI**

**list_view.dart:**
Created the list_view widget to display the fetched posts in a ListView.builder.
Managed different UI states: **loading, error, and displaying** the **data**.
Used **initState()** in a StatefulWidget to automatically fetch data when the app starts.


**Set Up the Main App**

**main.dart:**
Configured the PostProvider using ChangeNotifierProvider to provide the data to the list_view widget.
Launched the app with the home screen.

**Features:**

**Automatic Data Fetching:** The app fetches data automatically when the widget is initialized, improving user experience.

**State Management:** Managed the app's state using the Provider package.

**Error Handling:** Displayed appropriate error messages in the UI in case of failed API calls.

**Loading Indicator:** Showed a loading indicator while data is being fetched.

**Conclusion:**

This project demonstrates a clean and modular approach to integrating API calls in a Flutter app, using best practices for state management and UI design.
