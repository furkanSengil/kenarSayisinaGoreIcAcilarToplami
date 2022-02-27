import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var kullaniciGirisi: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.kullaniciGirisi.delegate = self
        
    }
   
    @IBAction func hesaplamaButonu(_ sender: UIButton) {
        var icAcilarToplami = 0
        var sonuc = ""
        if let kenar = Int(kullaniciGirisi.text!) {
            icAcilarToplami = (kenar - 2) * 180
            sonuc = String(icAcilarToplami)
        }
        
        let alertController = UIAlertController(title: "Çokgenin iç açıları toplamı:", message: sonuc, preferredStyle: .alert)
        let tamam = UIAlertAction(title: "Tamam", style: .destructive)
        alertController.addAction(tamam)
        self.present(alertController, animated: true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            self.view.endEditing(true)
            return false
        }

}
