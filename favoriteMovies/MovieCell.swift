//
//  MovieCell.swift
//  favoriteMovies
//
//  Created by Evan Leong on 10/12/15.
//  Copyright © 2015 Evan Leong. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet var movieTitleView: UILabel!
    @IBOutlet var movieDescriptionView: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // Configure the view for the selected state
    
    func configureCell(movie: Entity) {
        
        movieImageView.image = movie.getMovieImage()
        movieTitleView.text = movie.title
        movieDescriptionView.text = movie.movieDescription
        
        movieImageView.layer.cornerRadius = 4.0
        movieImageView.clipsToBounds = true
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func imdbUrlLink(sender: AnyObject) {

        
        }
    

}
