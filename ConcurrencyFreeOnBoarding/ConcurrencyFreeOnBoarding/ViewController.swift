//
//  ViewController.swift
//  ConcurrencyFreeOnBoarding
//
//  Created by do hee kim on 2023/02/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func button1(_ sender: Any) {
        image1.image = UIImage(systemName: "photo")
        let url = URL(string: "https://img.freepik.com/free-photo/adorable-kitty-looking-like-it-want-to-hunt_23-2149167099.jpg?w=2000&t=st=1677408961~exp=1677409561~hmac=e8648c0c23e1e9587e1520bcad0a12807a638cc0eed58af23de076edc231d98e")
        image1.load(url: url!)
    }
    @IBAction func button2(_ sender: Any) {
        image2.image = UIImage(systemName: "photo")
        let url = URL(string: "https://img.freepik.com/free-photo/portrait-of-adorable-domestic-cat_23-2149167104.jpg?w=2000&t=st=1677409807~exp=1677410407~hmac=7c4d9f681fc3b2c795388a1a68afa1bfc872d067a6b4183fc38d34513fc482e1")
        image2.load(url: url!)
    }
    @IBAction func button3(_ sender: Any) {
        image3.image = UIImage(systemName: "photo")
        let url = URL(string: "https://img.freepik.com/free-photo/closeup-shot-of-a-cute-ginger-kitten-staring-at-the-camera-isolated-on-a-white-wall_181624-45452.jpg?w=2000&t=st=1677409820~exp=1677410420~hmac=63bedcf9fe4bb428494965186b2352ea33bc1e1867c78dc0d16177f4a534bb19")
        image3.load(url: url!)
    }
    @IBAction func button4(_ sender: Any) {
        image4.image = UIImage(systemName: "photo")
        let url = URL(string: "https://img.freepik.com/free-photo/closeup-shot-of-a-cat-in-a-garden-during-the-day_181624-60965.jpg?w=2000&t=st=1677409834~exp=1677410434~hmac=921a1f1c7f293eada68241a77f3a96999593d8ce36f0e7bb8deba56a0636457b")
        image4.load(url: url!)
    }
    @IBAction func button5(_ sender: Any) {
        image5.image = UIImage(systemName: "photo")
        let url = URL(string: "https://img.freepik.com/free-photo/beautiful-pet-portrait-of-cat_23-2149218504.jpg?w=2000&t=st=1677409854~exp=1677410454~hmac=1757b46a2a77e3083919d6993526d466b07eaeeb4204f29b86a2af3357e5eea6")
        image5.load(url: url!)
    }
    
    @IBAction func loadAllButton(_ sender: Any) {
        button1(self)
        button2(self)
        button3(self)
        button4(self)
        button5(self)
    }
    
}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
