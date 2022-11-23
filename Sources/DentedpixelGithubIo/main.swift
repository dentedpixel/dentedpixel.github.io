import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct DentedPixel: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://dentedpixel.com")!
    var name = "Dented Pixel"
    var description = "Apps for education and fun"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
let site = try DentedPixel().publish(withTheme: .foundation)

PublishingStep<site>.copyFile(at: Path("Output"), to: Path("docs"))
