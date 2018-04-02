# Grotti-Carshop-Vehicle-System
Grotti Cars (Carshop & Basic Vehicle System)

========================================

Script Preview: https://youtu.be/HN5HiZ6jeeU

=========================================

This was a very old script that I had made a while back, but sadly didn't finish. However, today I present to you the very first Development BETA of this Script. The GUI has been switched to Multi Theft Auto's Standard GUI System. However, I do plan on moving to a more advance Dx Library if it manages to reach a certain number of downloads/votes. The Script is written in plain LUA, and requires the 2 resources called 'cpicker' (Colour Picker) and 'notifications' for side-notifications that appear when toggling certain events for the vehicle.

The Carshop was originally inspired from a Standard RPG Server, it includes a few features and gives the player to ability to a own a permanent car. The previous Grotti Carshop that was under development was basic, allowing you to purchase a vehicle without any standard vehicle adjustments. This however has been updated.

===========================================

Features:

• Gives you the ability to purchase a car.
• Gives you the ability to set a colour of your choice.
• Checks if you have the correct money amount and if you are logged in.
• Generates a vehicle number plate for the car.
• Allows you to toggle the engine with the command /engine - This is permanent and remains after a resource restart.
• Allows you to toggle the handbrake with the command /handbrake - This is permanent and remains after a resource restart.
• Allows you to park your vehicle with the command /park - This saves the location permanently and can be changed, if not parked it returns back to the carshop.

Automatic Vehicle Theft Prevention
• Basic feature that only lets the Owner of the Vehicle drive it, anyone else that attempts to enter as a Driver the event is cancelled.

===========================================

How can I install this resource?:

In order to install this resource, simply download it either from either the Direct Download or MTA Community's Download Link. Once download follow the steps below,

1) Download the resource.

2) Move all the contents and required resources into,
MTA San Andreas (OR Your Server Directory) -> mods -> deathmatch -> resources (Place In Here)

3) Locate the mtaserver.conf that is within, 
MTA San Andreas (OR Your Server Directory) -> mods -> deathmatch -> mtaserver.conf

4) Add in the following lines,
<resource src="cpicker" startup="1" protected="0" />
<resource src="grotticars" startup="1" protected="0" />
<resource src="notifications" startup="1" protected="0" />

Make sure the order is like above when starting the resources to prevent bugs. No special permissions are required for this resource.

===========================================

How can I modify this resource?:

In order to modify this resource locate to, vehicles.xml

In here you'll find a basic XML Sheet that includes a few vehicles with their prices.
Currently, you are only able to add in vehicles to the carshop as the rest of the carshop is currently compiled. 

To add a new vehicle all you have to do is add in this line,

Example:

<vehicle name="Blade" price="20000" />

The resource automatically generates the vehicle from it's name, so enter the name using Multi Theft Auto's Wikipedia. It is crucial the name is spelt correctly to prevent bugs; and enter a price that you'd wish for the player to pay in order to obtain this vehicle.

You can find the correct vehicle names here,
https://wiki.multitheftauto.com/wiki/Vehicle_IDs

===========================================
