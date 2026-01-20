# SwiftUI_Test
SwiftUI test mini app
# SwiftUI Profile Card

A single-view iOS application designed to demonstrate the fundamentals of **declarative UI** and **state management** in SwiftUI. The project focuses on replacing imperative UIKit patterns (specifically `UITextFieldDelegate` and manual view updates) with reactive data bindings.

## Features
* **Real-time UI Updates:** The interface automatically reflects changes in the underlying data model without manual DOM manipulation.
* **Input Handling:** Demonstration of Two-Way Binding using `TextField`.
* **Conditional Layout:** Dynamic UI changes (colors, icons) based on Boolean state triggers.

## Technical Overview
* **Stack:** Swift 5, SwiftUI, iOS 15+
* **Core Concepts:**
    * `@State` property wrappers for local data persistence.
    * `$` syntax for binding controls (Toggle, TextField) to state variables.
    * `ZStack` & `VStack` for layout composition (replacing Auto Layout constraints).



# SwiftUI Tech Roadmap

A list-based iOS application demonstrating the modern implementation of collection rendering and navigation. This project serves as a direct comparison to the UIKit `UITableView` approach, highlighting the reduction in boilerplate code.

## Features
* **Dynamic Lists:** Rendering rows from a data array using `Identifiable` protocols.
* **Interactive Cells:** Custom row views with internal logic (toggle state) that updates independently.
* **Navigation:** Implementation of `NavigationStack` for standard iOS hierarchy.

## Technical Overview
* **Stack:** Swift 5, SwiftUI, iOS 16+
* **Architecture:** MV (Model-View)
* **Core Concepts:**
    * **List vs UITableView:** Implementation of scrollable lists without delegates or data sources.
    * **Data Modeling:** Using `struct` and `UUID` for stable identity in lists.
    * **Scoped State:** Managing state changes within individual list rows using `@Binding`.

