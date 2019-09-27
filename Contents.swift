import UIKit

extension Array where Element: Comparable{
    func countUniqueElements() -> Int{
        var uniqueArray: [Int] = []
        
        for x in self{
            if uniqueArray.contains(x as! Int){
                
            } else {
                uniqueArray.append(x as! Int)
            }
        }
        print(uniqueArray)
        return uniqueArray.count
    }
    
    mutating func countUniqueElementsEfficient() -> Int{
        self.sort()
        let startVal = self[0] as! Int
        var tuple = (startVal, 1)
        for x in self{
            if (tuple.0 != x as! Int){
                tuple.1 += 1
                print(tuple)
            }
            tuple.0 = x as! Int
        }
        return tuple.1
    }
}


var values = [-1, -4, 0, 4, 34, 5, 0, -1, -1, -4, 0, 5]

let numUniqueElements = values.countUniqueElements()
let numUniqueElements2 = values.countUniqueElementsEfficient()

