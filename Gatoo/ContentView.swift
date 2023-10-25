//
//  ContentView.swift
//  Gatoo
//
//  Created by lagutierr.altimetrik on 24/10/23.
//

import SwiftUI

struct GameView: View {
    @State private var cells: [String] = Array(repeating: "", count: 9)
    @State private var currentPlayer = "X"
    @State private var winner = ""
    @State private var isGameEnded = false

    var body: some View {
        VStack {
            Text(winner.isEmpty ? "Jugador actual: \(currentPlayer)" : "¡\(winner) ha ganado!")
                .font(.headline)
                .padding(.bottom, 10)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 5) {
                ForEach(0..<9, id: \.self) { index in
                    CellView(content: $cells[index], currentPlayer: $currentPlayer, winner: $winner, isGameEnded: $isGameEnded)
                }
            }
            
            Button("Reiniciar Juego") {
                cells = Array(repeating: "", count: 9)
                currentPlayer = "X"
                winner = ""
                isGameEnded = false
            }
            .disabled(!isGameEnded)
        }
        .padding()
    }
}

struct CellView: View {
    @Binding var content: String
    @Binding var currentPlayer: String
    @Binding var winner: String
    @Binding var isGameEnded: Bool

    var body: some View {
        Text(content)
            .font(.system(size: 60))
            .frame(minWidth: 80, minHeight: 80)
            .background(Color.blue.opacity(0.2))
            .onTapGesture {
                if content.isEmpty && winner.isEmpty && !isGameEnded {
                    content = currentPlayer
                    currentPlayer = (currentPlayer == "X") ? "O" : "X"
                    checkForWinner()
                }
            }
    }

    func checkForWinner() {
        let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

        for combination in winningCombinations {
            if combination.count == 3 {
                let index1 = combination[0]
                let index2 = combination[1]
                let index3 = combination[2]

                if index1 >= 0 && index1 < content.count, index2 >= 0 && index2 < content.count, index3 >= 0 && index3 < content.count {
                    let cell1 = content[content.index(content.startIndex, offsetBy: index1)]
                    let cell2 = content[content.index(content.startIndex, offsetBy: index2)]
                    let cell3 = content[content.index(content.startIndex, offsetBy: index3)]

                    if cell1 == cell2 && cell2 == cell3 && cell1 != " " {
                        winner = String(cell1)
                        isGameEnded = true
                    }
                }
            }
        }
    }
}

struct TicTacToeApp_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
