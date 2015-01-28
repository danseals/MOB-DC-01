import UIKit

class ViewController: UIViewController {
    
    @IBAction func showTableView(sender: AnyObject) {
        self.performSegueWithIdentifier("showTableView", sender: self)
    }
    
    @IBOutlet weak var swipeHorizontalOnBox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swipeHorizontalOnBoxLeft()
        swipeHorizontalOnBoxRight()
    }
    
    func swipeHorizontalOnBoxLeft() {
        let swipeL = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeL.direction = UISwipeGestureRecognizerDirection.Left
        self.swipeHorizontalOnBox.addGestureRecognizer(swipeL)
    }

    func swipeHorizontalOnBoxRight() {
        let swipeR = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeR.direction = UISwipeGestureRecognizerDirection.Right
        self.swipeHorizontalOnBox.addGestureRecognizer(swipeR)
    }
    
    func swiped(sender: UISwipeGestureRecognizer) {
        // Don't forget to identify the viewcontroller name, in this case "thirdVC" on the ViewConcroller
        var secondVC = self.storyboard?.instantiateViewControllerWithIdentifier("secondVC") as SecondViewController
        self.presentViewController(secondVC, animated: true, completion: nil)
    }
    
    /*
    TODO one: Hook up a swipeable area on the home screen that must present a modal dialog when swiped. You must create the modal dialog and present it in CODE (not the storyboard).
    TODO two: Add an imageview to the modal dialog presented in TODO two.
    TODO three: Add and hook up a ‘dismiss’ button below the above mentioned image view that will dismiss the modal dialog. Do this in CODE.
    TODO four: Hook up the button on the home screen to push ArrayTableViewController into view (via the navigation controller) when tapped. Do this by triggering a segue from this view controller. The method you are looking for is performSegueWithIdentifier. Find the identifier from the storyboard.
    */

}

