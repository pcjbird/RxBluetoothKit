import UIKit

class WelcomeViewController: UIViewController {

    private(set) lazy var welcomeView = WelcomeView()

    override func loadView() {
        view = welcomeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeView.centralButton.addTarget(self, action: #selector(handleCentralButtonTap), for: .touchUpInside)
        welcomeView.peripheralButton.addTarget(self, action: #selector(handlePeripheralButtonTap), for: .touchUpInside)
    }

    @objc func handleCentralButtonTap() {
        print("central")
    }

    @objc func handlePeripheralButtonTap() {
        print("peripheral")
    }

}
