import UIKit
import FirebaseUI

class CustomFUIAuthPickerViewController: FUIAuthPickerViewController {
    
    @IBOutlet weak var logo: UIImageView!

    override func viewWillAppear(_ animated: Bool) {
        let uiImage = UIImage(named: "auth_ui_logo")
        if uiImage != nil {
            logo.image = uiImage
        }
        let parent = self.parent as! UINavigationController
       
        parent.setNavigationBarHidden(true, animated: false)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidDisappear(_ animated: Bool) {
          let parent = self.parent as! UINavigationController
             
              parent.setNavigationBarHidden(false, animated: false)
    }
}
