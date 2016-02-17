//
//  MyImageScrollViewController.swift
//  TestScrollViewSwift
//
//  Created by Robert Seitsinger on 9/20/15.
//  Copyright (c) 2015 cs378. All rights reserved.
//

import UIKit

class MyImageScrollViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var scrollView: UIScrollView!
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the back button text. Don't use the default.
        let barButton:UIBarButtonItem = UIBarButtonItem()
        barButton.title = "Back"
        self.navigationController!.navigationBar.topItem!.backBarButtonItem = barButton;
        
        self.scrollView.delegate = self
        
        // Create an image view object for the image we're displaying and add it to the scroll view.
        let image = UIImage(named: "photo1.png")!
        imageView = UIImageView(image: image)
        imageView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size:image.size)
        scrollView.addSubview(imageView)
        
        // Tell the scroll view the size of the content within it, so, it knows how far it can scroll.
        scrollView.contentSize = image.size
        
        // Create a recognizer for the double-tap to zoom in.
        let doubleTapRecognizer = UITapGestureRecognizer(target: self, action: "scrollViewDoubleTapped:")
        doubleTapRecognizer.numberOfTapsRequired = 2
        doubleTapRecognizer.numberOfTouchesRequired = 1
        scrollView.addGestureRecognizer(doubleTapRecognizer)
        
        // Calculate the minimum zoom scale.
        // A zoom scale of one means that the content is displayed at normal size. A zoom scale below one shows the content zoomed out,
        // while a zoom scale of greater than one shows the content zoomed in. To get the minimum zoom scale, you calculate how far
        // you’d need to zoom out so that the image fits snugly in your scroll view’s bounds based on its width. Then you do the same
        // based upon the image’s height. The minimum of those two resulting zoom scales will be the scroll view’s minimum zoom scale.
        // That gives you a zoom scale where you can see the entire image when fully zoomed out.
        let scrollViewFrame = scrollView.frame
        let scaleWidth = scrollViewFrame.size.width / scrollView.contentSize.width
        let scaleHeight = scrollViewFrame.size.height / scrollView.contentSize.height
        let minScale = min(scaleWidth, scaleHeight);
        scrollView.minimumZoomScale = minScale;
        
        // Set the maximum zoom scale as 1, because zooming in more than the image’s resolution can support will cause it to look blurry.
        // You set the initial zoom scale to be the minimum, so that the image starts fully zoomed out.
        scrollView.maximumZoomScale = 1.0
        scrollView.zoomScale = minScale;
        
        // Center the image within the scroll view.
        centerScrollViewContents()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Position the image view such that it is always in the center of the scroll view’s bounds.
    func centerScrollViewContents() {
        let boundsSize = scrollView.bounds.size
        var contentsFrame = imageView.frame
        
        if contentsFrame.size.width < boundsSize.width {
            contentsFrame.origin.x = (boundsSize.width - contentsFrame.size.width) / 2.0
        } else {
            contentsFrame.origin.x = 0.0
        }
        
        if contentsFrame.size.height < boundsSize.height {
            contentsFrame.origin.y = (boundsSize.height - contentsFrame.size.height) / 2.0
        } else {
            contentsFrame.origin.y = 0.0
        }
        
        imageView.frame = contentsFrame
    }
    
    func scrollViewDoubleTapped(recognizer: UITapGestureRecognizer) {
        // Where the tap occurred within the image view.
        let pointInView = recognizer.locationInView(imageView)
        
        // Calculate a zoom scale that’s zoomed in 150%, but capped at the maximum zoom scale
        // you specified in viewDidLoad.
        var newZoomScale = scrollView.zoomScale * 1.5
        newZoomScale = min(newZoomScale, scrollView.maximumZoomScale)
        
        // Use the pointInView location to calculate a rectangle that you want to zoom in on.
        let scrollViewSize = scrollView.bounds.size
        let w = scrollViewSize.width / newZoomScale
        let h = scrollViewSize.height / newZoomScale
        let x = pointInView.x - (w / 2.0)
        let y = pointInView.y - (h / 2.0)
        
        let rectToZoomTo = CGRectMake(x, y, w, h);
        
        // Tell the scroll view to zoom in. Animate it.
        scrollView.zoomToRect(rectToZoomTo, animated: true)
    }
    
    // MARK: - Scroll View Delegate
    
    // Tell the scroll view which view should be made bigger and smaller.
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    // The scroll view will call this method after the user finishes zooming. Recenter the view –
    // if you don’t, the scroll view won’t appear to zoom naturally.
    func scrollViewDidZoom(scrollView: UIScrollView) {
        centerScrollViewContents()
    }
    
}
