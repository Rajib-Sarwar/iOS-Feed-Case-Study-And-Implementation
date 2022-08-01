# Automated Testing Setup Guide

We need to understand how to configure your project to run automated tests.

Writing clean, fast, and reliable automated tests is an essential skill to build high-quality apps and thrive in the iOS industry.

The following guide shows how you can set up a test target to a new, or existing project. If you’ve never written tests before, getting the right setup is the first step.

## 1. Adding tests to a new project

To create a test target when creating a **New Project** make sure to tick the “Include Unit Tests” checkbox (see image below) on the new project dialogue options. Xcode will automatically include and associate a test target and test folder for the given _Product Name_.

The test target and test folder will be named after the Product Name, suffixed by “Tests”. In this example, for the product name _EssentialFeed_ Xcode will create a test target named _EssentialFeedTests_.

![](Images/test1)

## 2. Adding a new test target to an existing project

To add a test target to an existing project you can navigate to _File -> New -> Target_ or select the project on the project Navigator and then click the _+_ button on the target lists pane:

![](Images/test2)

If you want to test an iOS target then select the iOS platform tab and choose the Unit Testing Bundle option.

![](Images/test3)

You can follow the same steps for other platforms you support (tvOS, macOS…).

For example, for a macOS project you'd select the Unit Testing Bundle option under the macOS tab:

![](Images/test4)

Next, specify the _Product Name_ and select the _Target_ to be Tested:

![](Images/test5)

The naming convention is the Target to be Tested name (**EssentialFeed**) suffixed by “**Tests**”, e.g.: **EssentialFeedTests**. You can choose any name you want, but we recommend the convention so it’s easier for others to follow the project structure.

## 3. To run tests within Xcode you need a scheme

A scheme is a collection of settings that specify the targets to build for a project, the build configuration to use, and the executable environment to use when the product is launched.

You can think of schemes as instructions (recipe steps) for building, running, testing, profiling, analyzing and archiving your project.

When you open an existing project (or create a new one), Xcode automatically creates a scheme for each target.

The default scheme is named after your project and will already include your test target if you checked the Include Unit Test checkbox when creating your project. If you’re adding a test target to an existing project, you may need to configure your default scheme to run the tests.

## Managing Schemes

You can manage the project’s schemes by clicking on the scheme drop-down list and clicking on _Manage Schemes_…

![](Images/test6)

![](Images/test7)

![](Images/test8)

## Add/Remove a test target to a scheme

While editing a scheme, you can add or remove a test target for that particular scheme by using the _+_ and _-_ buttons in the Test scheme action menu.

Mind that in case you’d like to remove a target from the Test scheme action, you will have to select the target first and then press the - button as shown in the image below.

![](Images/test9)

To add a test target to the scheme, press +, select the target(s) from the menu and press _Add_ as shown below.

![](Images/test10)

## 4. Running a single test

To run a single test, click on the gutter button next to the function declaration corresponding to the test you’d like to run.

![](Images/test11)

## 5. Running all tests in a specific test case class

To run all tests in a test case class, click on the gutter button next to the test case class declaration.

![](Images/test12)

## 6. Running all the tests

To run all the tests within the targets in the selected scheme, you can use the default keyboard shortcut set by Xcode: **CMD+U**.

## Example of a successful test run

When the selected tests (regardless if the selection included all tests or just a single one) run successfully, Xcode will notify you by displaying a Test Succeeded HUD and turning the gutter buttons to a green checkmark. 

![](Images/test13)

## Example of a failed test run

When one or more of the tests you selected to run fails then Xcode will notify you by displaying a Test Failed HUD and turning the gutter buttons to a red x.

![](Images/test14)

## Suggested workflow for running your tests

One of the benefits of automated testing is to check that the whole system behaves as specified, all the time. For this reason, we recommend you to continually run all the tests (**CMD+U**) throughout the development process (you’ll see how we run the tests several times per lecture!).

We can do so because a) we’ll be creating fast and reliable tests so the cost of running them is very small (close to zero) and b) we want to assert that the whole system behaves as expected in every revision.

You can find and set your own keyboard shortcuts by opening the Key Bindings options under

Preferences -> Key Bindings.

![](Images/test15)

## 7. Running tests with xcodebuild (CLI)
You also have the option to run tests through the command line using the xcodebuild command, using the following format.

`xcodebuild test -project [project name].xcodeproj -scheme “[scheme name]”`

For example:

```
$ xcodebuild test -project EssentialFeed/EssentialFeed.xcodeproj -scheme "CI"
```

## References
  - Configure schemes https://help.apple.com/xcode/mac/10.2/#/dev0bee46f46
  - Add a test target to a project https://help.apple.com/xcode/mac/10.2/#/dev2ea31ea57
