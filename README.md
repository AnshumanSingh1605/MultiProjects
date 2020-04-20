# MultiProjects
This is a project to demonstrate working or internal communication of multiple project under a workspace, in a form of an iPhone application presenting the list of most viewed articles from the New York Times using SwiftUI. The Alamofire framework  has been used for network communication.

### Requirements

* In order to use the app, you will need to install CocoaPods on your machine. [More info about CocoaPods](https://cocoapods.org/)
* You will also need XCode installed on your computer version 11.3.1 or later. Available for free on the App Store.
* The target version of this app is iOS 13.2+.
* You need to signup for an API key at: [new york times developer protal](https://developer.nytimes.com/get-started), then replace the ‘sample-key’ with the API key assigned to your account. 

### Fetch API Key...

For getting the api-key , you need to signup at [new york times developer protal](https://developer.nytimes.com/get-started), then replace the ‘sample-key’ with
the API key assigned to your account.

 * Create your account with the desired credentials.
 * Go to your profile section , and click `Apps`.
 * Create an app to get the api-key.
 * Enable the most popular articles api and create the Api-key.
 * Copy the `key` to paste it in the project.
 
 After copying the api-key , open the workspace of the project.
 
### Installation

* If cocoapods isn't installed on the system , then Open terminal and run the command `sudo gem install cocoapods`
* Navigate to the `git clone` directory
* Enter the command `pod install`
* Open the project in XCode. If previous `pod install` command was successful, open the file called `MultiProjects.xcworkspace`
* Update the `api-key` with your owned sign up key from the New York Times developer portal.
* Traverse to `MultiProjects/EndPoints/EndPoints/Requisites/APIConstants` and replace the `apiKey` with your own key.
* To build the project, Press the play button at the top of XCode or type `CMD + r`



 
