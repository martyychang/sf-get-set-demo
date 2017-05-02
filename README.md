This project demonstrates the nuanced differences between using `{ get; set; }`
vs. traditional getter and setter methods. Below are recommended steps
for exploring the differences between the two approaches of defining
_properties_ in Apex.

1. Run all Apex tests.
2. Read the test code and comments in `LonghandExampleTest` and
   `ShorthandExampleTest` to reflect on the differences.
3. Open the **GetterSetterDemo** Visualforce page.
4. Read the test code and comments in `GetterSetterDemoControllerTest`.
5. Open the **getterSetterDemoApp** stand-alone Lightning app.
   Notice that while it's possible to expose a custom property with
   explicit getter methods, as of API 39.0 (Spring '17) it's not possible
   to use `@AuraEnabled` with the `{ get; } shorthand getter syntax.

## Installation

[![Deploy to Salesforce](https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png)](https://githubsfdeploy.herokuapp.com/?owner=martyychang&repo=sf-get-set-demo)
