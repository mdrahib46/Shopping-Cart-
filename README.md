# Shopping Cart APP (My Bag)

A simple shopping cart application built using Flutter. This app displays a list of products added to a shopping bag, calculates the total price, and provides basic quantity adjustment functionality.

## Features

- Display products in a shopping bag with details such as name, color, size, price, and quantity.
- Ability to increase or decrease the quantity of each item.
- Automatically remove items from the bag if the quantity reaches zero.
- Display the total amount of the items in the bag.
- Checkout button to proceed with the purchase (currently not functional).

## Screenshots
![Screenshot_5](https://github.com/user-attachments/assets/55b0008a-1d79-473c-be9b-06ccc11dc0c3)


## Getting Started

### Prerequisites

To run this project, you need to have Flutter installed. If Flutter is not installed, follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).

### Installation

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/your-username/my-bag-app.git
    ```

2. Navigate to the project directory:

    ```bash
    cd my-bag-app
    ```

3. Install the required dependencies:

    ```bash
    flutter pub get
    ```

4. Run the app:

    ```bash
    flutter run
    ```

## Project Structure

- **HomePage**: The main screen that displays the list of products in the bag and the total price.
- **myBag.dart**: Defines the `MyBag` model which contains the product details like image, name, color, size, price, and quantity.

## Code Overview

- **Total Amount Calculation**: The total amount is calculated dynamically based on the price and quantity of items in the bag using this function:

    ```dart
    double get _totalAmount {
      double total = 0.0;
      for (var item in _myBag) {
        total += item.price * item.quantity;
      }
      return total;
    }
    ```

- **Item Quantity Control**: Users can increase or decrease the quantity of items using `IconButton`. If the quantity becomes zero, the item is removed from the bag.

- **Checkout Button**: A button is displayed at the bottom to simulate the checkout process.







