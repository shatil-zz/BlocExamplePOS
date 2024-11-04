# Project Overview

## Architectures and Tools Used
- **Bloc Architecture**: Used Bloc to manage the app's state and handle user interactions.
- **Freezed Code Generator**: Utilized Freezed to generate events and states, reducing boilerplate code and enhancing readability.
- **Injectable DI or Service locator**: Used Injectable for dependency injection to keep code modular and testable.
- **SQLite DB**: Employed SQLite for local data storage to persist app data offline.
- **Repository Pattern**: Implemented a repository to load data from SQLite DB and stream updates to Bloc when changes occur.
- **Linting**: Maintained code quality by adhering to linting rules.

## Workflow
- Created an order table to store information like the selected menu name, count, table ID, price, and various flags.
- `DbHelper` exposes methods for inserting and fetching data.
- The repository handles data operations, inserting and fetching data from `DbHelper`, exposing an order list stream, as well as insert and manual fetch methods. Whenever data is inserted, the repository fetches the updated data and updates the stream so that clients receive the latest data.
- The repository separates the data layer from the presentation layer, ensuring adherence to clean code principles.

## Bloc Functionality
- Bloc emits essential states (e.g., loading, data loaded, error) and listens for events like `fetch data`, `data updated`, and `insert data`.
- When a user opens the app’s table service screen, data is fetched by manually adding a Bloc fetch event.
- When creating a new order for a table, the order screen inserts the menu list by adding an insert event.
- The order list screen fetches data by adding fetch events and sorts it by order time.
- Bloc inserts and fetches data from the repository and listens to the repository’s data update stream, ensuring that the table service screen and other screens receiving updates reflect the latest data automatically.
- A single Bloc is added at the root level, making it accessible across all screens, reducing setup time for this sample project. In a full-scale project, you could separate Bloc instances and other classes to make the codebase more modular.
# BlocExamplePOS
