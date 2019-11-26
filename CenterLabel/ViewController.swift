//
//  ViewController.swift
//  CenterLabel
//
//  Created by user on 26/11/2019.
//  Copyright © 2019 Artem Ulko. All rights reserved.
//

import UIKit

struct ChemicalElement {
    let symblo: String
    let name: String
    let atomicWeight: Int? = nil
    let imageName: String
}

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
//    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var elementList : [ChemicalElement] = []
    var currentElementIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateItems()
        updateElement()        
    }
    
    func generateItems() {
        let element1 = ChemicalElement(symblo: "1", name: "Carbon", imageName:"Carbon")
        let element2 = ChemicalElement(symblo: "2", name: "Gold", imageName:"Gold")
        let element3 = ChemicalElement(symblo: "3", name: "Chlorine", imageName:"Chlorine")
        let element4 = ChemicalElement(symblo: "4", name: "Sodium", imageName:"Chlorine")
        
        elementList.append(element1)
        elementList.append(element2)
        elementList.append(element3)
        elementList.append(element4)
    }
    
    func updateElement() {
        answerLabel.text = "?"
        let item = elementList[currentElementIndex]
        let image = UIImage(named: item.imageName)
        imageView.image = image
    }
    
    @IBAction func showAnswerButtonDidPressed(_ sender: UIButton) {
        let item = elementList[currentElementIndex]
        answerLabel.text = item.name
    }
    
    @IBAction func nextElementDidPressed(_ sender: UIButton) {
        currentElementIndex += 1
        
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        
        updateElement()
    }
    
}

