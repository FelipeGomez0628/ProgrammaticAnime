//
//  DetailViewController.swift
//  ProgrammaticGuessAnime
//
//  Created by Consultant on 7/10/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    lazy var progImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var progLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.contentMode = .scaleAspectFit
        label.backgroundColor = .black
        return label
    }()
    lazy var progButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Tap Me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGreen
        button.addTarget(self, action: #selector(self.progButtonPressed), for: .touchUpInside)
        return button
    }()
    
    //  passing data
    let text: String
    
  
    
    
    init(text: String) {
        self.text = text
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func aniName(num: String) -> String{
        if num == "0"{
            return "Full Metal Alchemist"
        }
        else if num == "1"{
                return "Hunter X Hunter"
        
            }
            else if num == "2"{
                return "One Piece"
        
            }
            else if num == "3"{
                return "Demon Slayer"
            }
            else if num == "4"{
                return "Death Note"
            }
            else if num == "5"{
                return "Bleach"
            }
            else if num == "6"{
                return "Dragon Ball"
            }
            else if num == "7"{
                return "Naruto"
            }
            else if num == "8"{
                return "One Puch Man"
            }
            else if num == "9"{
                return "Yu-Gi-Oh!"
            }
            else if num == "10"{
                return "Sailor Moon"
            }
            else if num == "11"{
                return"Attack On Titan"
            }
            else if num == "12"{
                return "Fairy Tail"
            }

        return num
        }
   


    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemTeal
        
        
        
        self.setUpUI()
//        if text == "1"{
//
//            self.proglabel.text = "Full Metal Alchemist"
//        }
        self.progImageView.image = UIImage(named: "image_\(text)")
        self.progLabel.text = aniName(num: text)
        
    }
    
    private func setUpUI() {
        self.view.addSubview(self.progImageView)
        
        self.view.addSubview(self.progLabel)
//        self.view.addSubview(self.progButton)
        
        self.progImageView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.progImageView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true

        self.progImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true

        self.progImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -44).isActive = true
        
        self.progLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.progLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        self.progLabel.heightAnchor.constraint(equalToConstant: 44).isActive = true
        self.progLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 150).isActive = true
        self.progLabel.textAlignment = .center
        self.progLabel.textColor = .white

    }
    @objc
    func progButtonPressed() {
        print("Button Was Tapped!!!")
    }
}
