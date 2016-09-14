//: Juego de memoria

import UIKit

//si se divide entre 5 == Bingo!!!
//si el numero es par  == Par!!!
//si el numero es impar == Impar!!!
//si se encuentra entre 30 al 40 == Viva Swift!!!



for i : Int in 0...100{
    if 30 <= i && i <= 40{
        print("\(i)\t\("Viva Swift!!!")")
    }
    else if i%2 == 0{
        print("\(i)\t\("Par!!!")")
    }
    else if i%5 == 0{
        print("\(i)\t\("Bingo!!!")")
    }
    else if i%2 != 0{
        print("\(i)\t\("Impar!!!")")
    }
}
