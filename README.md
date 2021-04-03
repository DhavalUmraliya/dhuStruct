# NISL Swift Packages

This is the swift packages which is been used for the used for the Request Framework project, the packages contains the alamofire as the Request framework and added the required enum to make the well defined package which will help you to easily integrate the function and files one uses for the Request Manager.

## Network Environment 

In `NetworkEnvironment.swift` file all the Environment are been listed which can used according to the needs

## EndPointType

In `EndPointType.swift` file will contains all the elements which you need to extend your project such as `baseURL`, `path`, `httpMethod`, `headers`, `url`, `encoding` and  `version`. This are all defined but it will be used in your project to add required data in them.

## RequestManager

The `RequestManager.swift` file contains your logic of calling the Request from your app. Which will take input of parameters and in response it will send you the sucess, failur. The success will contains your  `<T>`
class which can you JSON model or Any type of class which you need from the response where else failur will give you a custom class AlertMessage which is used to store the title and message of the error later on you can use this class variable to show error in your app.

To see the packages how does it work and what are the steps to integrate this packages in your project you can visit [here](https://apps.narola.online/git/harjeetSingh/nisl-request-framework)
