                                
                                Meteo-Experience the Weather


Meteo is an elegant yet simple application which not only provides weather updates but also suggests activities according to the forecast. Based on the users’ unique interests , the app creates a personalized weather-sensitive schedule of upcoming events and curated activities, making plans more successful and inclement weather less problematic.

The app demands very little user-configuration. When the app is first installed, the user selects his or her favorite activities and sets up preferred locations; after this step, the app will run on autopilot. If the user chooses to change his or her preferred activities, the settings can be easily updated. Otherwise, sit back and enjoy the sun (or rain, or snow), because Meteo does all the work for you.

For feedback and/or bug reports please contact:
E-mail: yves.i.binda@gmail.com
Website: www.yvesbinda.com
Twitter: @chelseablue33


           -------------------------Launching the APP-------------------------------


Meteo is built with Xcode 8.0+ and Swift 3.0. 


Before starting, make sure you have the latest version of Xcode and Swift installed. 
(Xcode 8+or more comes with Swift 3.0)


Follow these steps:


* Launch the meteo.xcodeproj by double-clicking it.


* Click on “Main.storyboard” and launch the simulator by clicking on the play button on the upper-left hand corner. (you may have to click on the “meteo” dropdown tree-view nested inside each other to get the mainstory.board)


* The simulator will take about a minute to load.


* Once the app is launched and the splash screen has faded, click on the “Create Account” button.


* The next screen asks for personal information to create your account, but go ahead and click “continue.”


* You will then be asked to select your favorite interests and hobbies, which you can do by tapping on the buttons that you feel apply. There are four categories to select from: “Food and Drink,” “Family,” “Arts,” and “Sports.” You can access each category at the bottom of the screen by tapping it. Then click “Finish.”


* On the Main screen the data takes some time to be retrieved, so be patient. The page controller allows you to swipe from left to right and see the weather info of 4 other cities besides that of Brooklyn.


* To check the current day’s hourly forecast Tap on the white weather circle and a Dial will drop down.


* To Edit your preferences tap on the “hamburger” menu icon at the bottom right of the screen, and you will have access to the preference category.


                    ————————————————Thought Process—————————————————————


The design and function of this App are based on several concepts: 


1) Weather apps should help make the weather less ominous.


. Application: Weather and traffic are often anticipated with dread because of their inclement and imposing nature. But the Traffic app Waze has managed to make traffic surmountable with its simple and cartoonish User Interface. Similarly, the design of my weather app is meant to remove the seriousness often attached with the weather by applying playful and light design principles: bright colors, cartoonish icons, rounded typography and approachable copy content. 




2) Weather apps should help users plan their activities in harmony with- rather than in spite of- the weather. 

. Application:  Each subscriber enters his or her favorite activities ( Arts, Food, Sports and Family ) and receives a weather-sensitive, personally-curated activity schedule based on the upcoming forecast. No more rain on BBQ day!




              ————————————————————Trade-offs and Wishlist——————————————————————


* The “Dial” to display the current day’s hourly weather required more work than I anticipated and had to be simplified from the original concept, which was a touch-and-drag gestural control. 


* With more time I also would have chosen more precise iconography for each activity button display.


* Having limited experience with Swift, I explored how to best leverage the OpenWeatherMap provided APIs to receive the current weather stamp as precisely as possible. There is still a small lag, unfortunately, and with more time, I would try different API calls.


*  I received great advice from a mentor and friend who helped me with some of the Swift syntax. I now look forward to enhancing my skill set as a designer as well as furthering my growth as a programmer by working alongside the team at BuildIT.