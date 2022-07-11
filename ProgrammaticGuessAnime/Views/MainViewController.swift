//
//  MainViewController.swift
//  ProgrammaticGuessAnime
//
//  Created by Consultant on 7/9/22.
//

import UIKit

class MainViewController: UIViewController {
    
    lazy var table: UITableView = {
        let table = UITableView(frame: .zero)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .systemTeal
        table.dataSource = self
        table.delegate = self
        table.register(ProgTableViewCell.self, forCellReuseIdentifier: ProgTableViewCell.reuseID)
        return table
    }()
    
    var n = Int.random(in: 1...99)
    
    var topText: [String] = ["Squirtle", "Bulbasur", "Charmander", "Pikachu", "Cleffairy", "Mewtwo", "Jigglypuff", "Snorlax", "Eevee", "Meowth", "Metapod", "Hitmonchan", "HitmonLee"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setUpUI()
    }
    
    private func setUpUI() {
        //set background to white
        self.view.backgroundColor = .white
        //title of screen
        self.title = "Programmatic Demo"
        //First time the Lazy var table is created
        self.view.addSubview(self.table)
            //Call the extension bindSupperView
        self.table.bindToSuperView()
    }
    

}

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.topText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ProgTableViewCell.reuseID, for: indexPath) as? ProgTableViewCell
        
        
        else {
            
            return UITableViewCell()
        }
        
  
        
        
//        let numberOfImages: UInt32 = 100
//        let random = arc4random_uniform(numberOfImages)
//        let imageName = "image_\(random)"
//        cell.progImageView.image = UIImage(named: imageName)
////        imageView.image = UIImage(named: imageName)
//
        
      
//        cell.progTopLabel.text = self.topText[indexPath.row]
        let indexRow = String(indexPath.row)
        cell.progTopLabel.text = "Guess The Name"
        cell.progMidLabel.text = "Click Here To Reveal The name"
        cell.progBottomLabel.text = String(indexPath.row)
        cell.progImageView.image = UIImage(named: "image_\(indexRow)")
        
        
        return cell
    }
    
    
}


extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController(text: String(indexPath.row))
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
