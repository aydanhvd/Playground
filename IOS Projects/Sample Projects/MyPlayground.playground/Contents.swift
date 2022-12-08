import UIKit

class MyViewController: UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //load
    override func loadView() {
        super.loadView()

        print("loadView")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        print("viewDidLoad")
    }
    //appear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        print("viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        print("viewDidAppear")
    }
    //dissapear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        print("viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        print("viewDidDisappear")
    }

    deinit {
        print("deinit")
    }
}
//not running ->  didFinishWithOptions->  Active -> < - applicationDidBecomeActive<- ->  inactive -> background -> suspended -> not running
