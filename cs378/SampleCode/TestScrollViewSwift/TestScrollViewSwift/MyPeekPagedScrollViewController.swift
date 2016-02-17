//
//  MyPeekPagedScrollViewController.swift
//  TestScrollViewSwift
//
//  Created by Robert Seitsinger on 9/21/15.
//  Copyright (c) 2015 cs378. All rights reserved.
//

import UIKit

// Make sure to uncheck Clip Subviews in the Attributes Inspector, so you'll
// see a piece of a next and/or previous image.

class MyPeekPagedScrollViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var pageControl: UIPageControl!
    
    var pageImages: [UIImage] = []
    var pageViews: [UIImageView?] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set the back button text. Don't use the default.
        let barButton:UIBarButtonItem = UIBarButtonItem()
        barButton.title = "Back"
        self.navigationController!.navigationBar.topItem!.backBarButtonItem = barButton;
        
        self.scrollView.delegate = self
        self.scrollView.pagingEnabled = true
        
        // Init the images array.
        pageImages = [UIImage(named: "photo1.png")!,
            UIImage(named: "photo2.png")!,
            UIImage(named: "photo3.png")!,
            UIImage(named: "photo4.png")!,
            UIImage(named: "photo5.png")!]
        
        let pageCount = pageImages.count
        
        // Indicate which page we want to start on and how many pages we have.
        pageControl.currentPage = 0
        pageControl.numberOfPages = pageCount
        
        // Prepopulate image view array with nil object pointers
        for _ in 0..<pageCount {
            pageViews.append(nil)
        }
        
        // Set the scroll view's content size.
        // Since we want horizontal scrolling it's a multiple of the scroll view width.
        let pagesScrollViewSize = scrollView.frame.size
        scrollView.contentSize = CGSize(width: pagesScrollViewSize.width * CGFloat(pageImages.count),
            height: pagesScrollViewSize.height)
        
        // Show something initially.
        loadVisiblePages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadVisiblePages() {
        // First, determine which page is currently visible.
        // Note: 'floor' rounds a decimal to the lowest integer.
        let pageWidth = scrollView.frame.size.width
        let page = Int(floor((scrollView.contentOffset.x * 2.0 + pageWidth) / (pageWidth * 2.0)))
        
        // Update the page control.
        pageControl.currentPage = page
        
        // Work out which pages you want to load.
        let firstPage = page - 1
        let lastPage = page + 1
        
        // These next few statements are to keep the amount of memory we're consuming for the
        // images to be relatively constant. A window of 3 images - the current one and one on
        // either side of it.
        
        // Purge anything before the first page.
        for var index = 0; index < firstPage; ++index {
            purgePage(index)
        }
        
        // Load pages in our range.
        for index in firstPage...lastPage {
            loadPage(index)
        }
        
        // Purge anything after the last page.
        for var index = lastPage+1; index < pageImages.count; ++index {
            purgePage(index)
        }
    }
    
    func loadPage(page: Int) {
        if page >= 0 && page < pageImages.count {
            // Load an individual page, first checking if you've already loaded it
            if let _ = pageViews[page] {
                // Do nothing. The view is already loaded.
            } else {
                // Determine the origin to use; which will always be 0 for y, but for x it's
                // the page (index) of the image * the width to scroll to that image horizontally.
                var frame = scrollView.bounds
                frame.origin.x = frame.size.width * CGFloat(page)
                frame.origin.y = 0.0
                
                // Set the frame of the image view to be slightly inset horizontally,
                // so the pages don’t touch.
                frame = CGRectInset(frame, 10.0, 0.0)
                
                // Create a new image view and add.
                let newPageView = UIImageView(image: pageImages[page])
                newPageView.contentMode = .ScaleAspectFit
                newPageView.frame = frame
                scrollView.addSubview(newPageView)

                // Load it into the array.
                pageViews[page] = newPageView
            }
        }
    }
    
    func purgePage(page: Int) {
        if page >= 0 && page < pageImages.count {
            // Remove a page from the scroll view and reset the container array
            if let pageView = pageViews[page] {
                pageView.removeFromSuperview()
                pageViews[page] = nil
            }
        }
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // Load the pages that are now on screen
        loadVisiblePages()
    }
    
}
