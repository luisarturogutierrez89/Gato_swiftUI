# Gato_swiftUI

# Tic-Tac-Toe Game in Swift

**Abstract**

This Markdown document provides information about a simple implementation of the classic game of "Tic-Tac-Toe" in Swift. It describes the technologies used in the project and offers an overview of the code structure.

**Keywords**: Tic-Tac-Toe, Swift, SwiftUI, Xcode, Git, GitHub.

**Introduction**

The "Tic-Tac-Toe Game in Swift" is a straightforward implementation of the well-known game developed using Swift programming language. This document highlights the technologies employed in the project and provides an insight into the code structure.

**Technologies Used**

- **Swift**: The entire game is coded in Swift, Apple's official programming language.
- **SwiftUI**: The user interface is created using SwiftUI, a modern framework for building user interfaces in iOS.
- **Xcode**: The development and building of the project are carried out in Xcode, Apple's integrated development environment.
- **Git and GitHub**: The game's source code is managed with Git and hosted on GitHub for version control and collaboration.

**Code Overview**

The game is structured around two primary SwiftUI views: `GameView` and `CellView`.

- `GameView` manages game logic and user interface. It maintains the game state, including the game board, the current player, and the winner.
- `CellView` represents individual cells on the game board. These cells are organized in a 3x3 grid using `LazyVGrid`.
- Game logic is implemented within `GameView`, which checks for winning combinations by examining the values in the cells array.
- A button to restart the game is provided at the bottom of the view, enabling users to reset the game and initiate a new match.
- Users can tap on empty cells to place their symbol ("X" or "O") on the game board. The game enforces rules to ensure that only valid moves are made.

**How to Use**

1. Download or clone the repository to your computer.
2. Open the project in Xcode.
3. Run the application on the iOS simulator or a real device.
4. Play "Tic-Tac-Toe" following the traditional rules. Player "X" goes first, followed by player "O."

**Reset the Game**

The game can be reset at any time by clicking the "Restart Game" button. This action will clear the board, allowing users to start a new game.

**Conclusion**

This document provides an overview of the "Tic-Tac-Toe Game in Swift," highlighting the technologies used and the structure of the code. Enjoy exploring the code and playing this classic game with a friend or challenging yourself.

**References**

[GitHub Repository](https://github.com/luisarturogutierrez89/tic-gatoo_SwiftUI)

