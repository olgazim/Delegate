//  Copyright © 2019 Olga Zimina. All rights reserved.
//

import UIKit

class YourSideViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let chooseSideVC = segue.destination as? ChooseSideViewController else { return }
//        chooseSideVC.delegate = self
        chooseSideVC.callback = { color in
            
            var choosedColor: UIColor?
            print(color)
            switch color {
            case .bright:
                choosedColor = .blue
            case .dark:
                choosedColor = .red
            }
            
            self.view.backgroundColor = choosedColor
        }
            
        
    }


}

//extension YourSideViewController: ChooseSideViewControllerDelegate {
//
//    func updateUI (color: Color) {
//
//        var choosedColor: UIColor?
//
//        switch color {
//        case .bright:
//            choosedColor = .blue
//        case .dark:
//            choosedColor = .red
//        }
//
//        view.backgroundColor = choosedColor
//    }
//}

