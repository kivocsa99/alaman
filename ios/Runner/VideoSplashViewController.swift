import UIKit
import AVFoundation

class VideoSplashViewController: UIViewController {
    var player: AVPlayer?
    var playerLayer: AVPlayerLayer?
    var completion: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let path = Bundle.main.path(forResource: "YourVideoFileName", ofType:"mp4") else {
            debugPrint("Video file not found")
            return
        }
        player = AVPlayer(url: URL(fileURLWithPath: path))
        playerLayer = AVPlayerLayer(player: player)
        playerLayer?.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer!)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(videoDidEnd),
                                               name: .AVPlayerItemDidPlayToEndTime,
                                               object: nil)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        player?.play()
    }

    @objc func videoDidEnd(notification: NSNotification) {
        completion?()
    }
}
