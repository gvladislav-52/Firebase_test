//
//  ViewController.swift
//  Firebase_Test
//
//  Created by macbookbro on 14.07.2024.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var picture: UIImageView!
    private let database = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func action1(_ sender: Any) {
        APIManager.shared.getPost(collection: "cars", docName: "smallCar", completion: { doc in
            guard doc != nil else { return }
            self.label1.text = doc?.field1
            self.label2.text = doc?.field2
        })
        
        APIManager.shared.getImage(picName: "c-class", completion: { pic in
            self.picture.image = pic
        })
    }
}

