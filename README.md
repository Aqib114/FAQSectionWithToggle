# FAQSectionWithToggle

## Overview

`FAQSectionWithToggle` is an iOS application demonstrating how to create a dynamic FAQ section using UIKit. This project features a `UITableView` with custom cells that include a toggle button to show or hide answers to frequently asked questions. The project showcases the use of `UITableView`, custom cells, and dynamic row height management.

## Features

- **Custom Table View Cell:** `FAQTableViewCell` with a question label, an answer label, and a toggle button.
- **Expandable/Collapsible Sections:** The FAQ answers can be toggled to show or hide using the button in each cell.
- **Dynamic Row Height:** The height of each row adjusts automatically based on the content.

## Project Structure

- **`FAQItem.swift`**: Defines the `FAQItem` struct, representing each FAQ item with a question, answer, and a boolean indicating if the answer is opened.
- **`FAQTableViewCell.swift`**: Defines the custom `UITableViewCell` for FAQ items, including configuration logic for displaying the question and answer.
- **`FAQViewController.swift`**: Manages the table view and FAQ items, handling user interactions and updating the UI.

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/FAQSectionWithToggle.git
    ```

2. Open the project in Xcode.

3. Build and run the project.

## Usage

1. **FAQItem Configuration:** The `FAQItem` struct holds the data for each FAQ entry. Update the `faqItems` array in `FAQViewController` with your own FAQ data.

2. **Cell Configuration:** Customize the appearance and behavior of the FAQ cells in `FAQTableViewCell`. The `configure(with:)` method is used to set the cell's labels and button images based on the `FAQItem` data.

3. **Toggle Functionality:** The `toggleAnswer(_:)` method in `FAQViewController` handles the logic for expanding or collapsing the FAQ answers when the toggle button is pressed.

## Contributing

Feel free to open issues or submit pull requests if you have any suggestions or improvements.

