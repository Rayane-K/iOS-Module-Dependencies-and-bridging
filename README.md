# iOS-Module-Dependencies-and-bridging
This project shows how to handle spaghetti dependencies when modularizing an iOS app. 
It show how to create a bridge between the app and the module(s)

As explained in my post on Medium, I am showing in this project how to export a part of your app that is too dependent of the main target, and how to handle the link between your module and your application.
You could do this for many reasons such as :
- You don't have the time 
- Your service is using some code or library that can't be exported in a framework
- You don't want your tester team to make a full regression testing on the component you want to modularize.

Hope it helps !
