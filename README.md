# Project 1: The Elevator interface

## For a C:

### Elevator

The following elevator was found in the Mathematics building on campus.

### Photos

### Interface in Action

### Issues

### Pros and Cons

| Pros          | Cons          |
| ------------- |:-------------:|
| col 3 is      | right-aligned | 
| col 2 is      | centered      | 
| zebra stripes | are neat      |  

## For a B:

![20220926_183335](https://user-images.githubusercontent.com/82000483/192629666-8fec563a-b9ec-4d10-9e9c-de73a5dc01f2.jpg)

### Common Uses 
    - The main function of an elevator is to transport people between floors
    - This means that the floor buttons are the most important for passengers
    - Buttons to make the travel between floors faster are secondary
    - A button to communicate with an employee should hopefully never be used, however it important to have that functionality in case something does go wrong

### Sequence 
    - After a user it enters the elevator it is assumed they will press the button of the floor they wish to go to
    - They may or may not hit the door open of door close, depending on external circumstances
    - All users picked up along the way have the same options as the first user
    - If the elevator stops working the user will press the bell button to speak to an employee

### Design
    - The main floor buttons are in the center of the screen and ordered left to right
    - The less commonly used buttons are laid out clearly at the bottom of the screen
    - After a button is pressed a red light is displayed around the chosen button
    - There is a small LCD screen that displays the current floor
    - Due to the “L” buttons this elevator format will only work in a hotel or building with previous knowledge of a lobby 

### Defense of Control Interface
    - A small amount of area between the commonly used buttons and less commonly used buttons
    - The lobby button replaces the first floor as it would be previously known that there is a lobby
    - The two button is the first numbered floor as it is the second story and one floor above the lobby

## For an A:

### Size and Design
The control interface is 500×750 pixels, small enough to fit on almost all touch screen devices and large enough to be seen clearly on 1920×1080 screen. The design of the interface closely follows the sketch from part B, aside from the fact that a star was added next to the "L" button. The star next to the "L" button signifies that the lobby is the main floor for entrance to the building, as there is no floor 1. The screenshot shows a user on floor 6 wishing to travel to the lobby.

![screen](https://user-images.githubusercontent.com/82000483/192677780-509300c8-057e-4172-ab52-1eee282a1e52.png)


    
### Interactive Design 

#### Handling Single Floors

The User enters on floor 6 and travels to the Lobby of the building. 

![single](https://user-images.githubusercontent.com/82000483/192673003-5e0a66e0-58ab-401c-82bc-06ce9c6b438c.gif)


#### Handling Multiple Floors

At least two users enter the elevator at the garage level. One choses floor 3 and the other floor 4. As the elevator stops at floor 3 a person enters and choses floor 2. The elevator travels to floor 4 and then goes down to floor 2. (Faster than would be safe)

![multiple](https://user-images.githubusercontent.com/82000483/192673706-75fc4657-e9d9-4603-a659-1d358b3fcae7.gif)


#### Handling Elevator Errors

The user enters the elevator at the lobby and wishes to go to the garage, however as the screen shows the elevator does not go down. By pressing the emergency button a person would be dispatched to manually reset the elevator. The emergency button will stay lit up until it is manually rest.

![error](https://user-images.githubusercontent.com/82000483/192674248-8ef5a948-c7dc-4288-9fa8-403b1b041d46.gif)

