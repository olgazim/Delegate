//  Copyright © 2019 Olga Zimina. All rights reserved.
//

import UIKit

enum Color: String {
    
    case dark = "Dark"
    case bright = "Bright"
}

//protocol ChooseSideViewControllerDelegate {
//    
//    func updateUI(color: Color)
//}

class ChooseSideViewController: UIViewController {
    
//    var delegate: ChooseSideViewControllerDelegate?
    
    typealias CollorCallback = (_ choosedColor: Color) -> Void
    var callback: CollorCallback?
    
    @IBAction func chooseAndDismiss(_ sender: UIButton) {
        
        guard let choosedSide = sender.currentTitle else { return }
        
        let choosedColor = Color.init(rawValue: choosedSide)
        callback?(choosedColor!)
        
//        delegate?.updateUI(color: Color.init(rawValue: choosedSide)!)
        
        self.dismiss(animated: true, completion: nil)
    }
    
}

