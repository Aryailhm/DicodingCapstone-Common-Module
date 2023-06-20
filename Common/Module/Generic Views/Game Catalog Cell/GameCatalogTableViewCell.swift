//
//  GameCatalogTableViewCell.swift
//  Submission Aplikasi Bentuk Katalog
//
//  Created by Arya Ilham on 07/05/23.
//

import UIKit
import AlamofireImage

public class GameCatalogTableViewCell: UITableViewCell {
    // MARK: - NIB
    public static let ID = "GameCatalogTableViewCell"
    
    public static let nib: UINib? = {
        return UINib(nibName: "GameCatalogTableViewCell", bundle: Bundle(identifier: "com.arya.Common"))
    }()
    
    // MARK: - IBOUTLET
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var gameTitle: UILabel!
    @IBOutlet weak var gameReleaseDate: UILabel!
    @IBOutlet weak var gameRating: UILabel!
    
    // MARK: - VARIABLES
    
    // MARK: - FUNCTIONS
    public override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }

    private func setupView() {
        containerView.layer.cornerRadius = 16.0
        containerView.layer.borderWidth = CGFloat(1.0)
        containerView.layer.borderColor = UIColor.gray.cgColor
    }
        
    public func setData(title: String, rating: Double, releaseDate: String, image: String) {
        gameTitle.text = title
        gameRating.text = "Rating: \(rating)"
        gameReleaseDate.text = "Released: \(releaseDate)"
        if let url = URL(string: image) {
            DispatchQueue.main.async {
                self.gameImage.af.setImage(withURL: url)
            }
        }
    }
    
    public override func prepareForReuse() {
        self.gameImage.image = nil
        self.gameTitle.text = ""
        self.gameRating.text = ""
        self.gameReleaseDate.text = ""
    }
}
