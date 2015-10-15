//
//  CreateEntryVC.swift
//  favoriteMovies
//
//  Created by Evan Leong on 10/12/15.
//  Copyright © 2015 Evan Leong. All rights reserved.
//

import UIKit
import CoreData

class CreateEntryVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var movieDescription: UITextField!
    @IBOutlet weak var imdbUrl: UITextField!
    @IBOutlet weak var plotDescription: UITextField!
    @IBOutlet weak var theMovieImage: UIImageView!
    @IBOutlet var saveButton: UIButton!
    
    var imagePicker: UIImagePickerController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        theMovieImage.layer.cornerRadius = 4.0
        theMovieImage.clipsToBounds = true
        
        saveButton.layer.cornerRadius = 4.0
        saveButton.clipsToBounds = true
        
        
    }
    
    //Create function for imagePicker
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        theMovieImage.image = image
        
    }
    
    
    //Create button to Add Image
    @IBAction func addImagePressed(sender: AnyObject) {
        
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    
    
    //Create button to save
    @IBAction func saveButtonPressed(sender: AnyObject) {
        
        if let title = movieTitle.text where title != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Entity", inManagedObjectContext: context)
            let movie = Entity(entity: entity!, insertIntoManagedObjectContext: context)
            
            movie.title = title
            movie.movieDescription = movieDescription.text
            movie.imdbUrl = imdbUrl.text
            movie.plotDescription = plotDescription.text
            
            if theMovieImage.image != nil {
                
            movie.setMovieImage(theMovieImage.image!)
                
            }
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print ("Something Fucked up!")
            }
            
            print(movie.title)
            print(movie.movieDescription)
            
        }
        
        navigationController?.popViewControllerAnimated(true)
    }
    

}
