# Project 1: The Elevator interface

## For a C:

### Elevator

The following elevator was Found in the Mathematics building on campus.

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
    - Due to the “G” an “L” buttons this elevator format will only work in a hotel with previous knowledge of a garage and lobby 

### Defense of Control Interface
    - A small amount of area between the commonly used buttons and less commonly used buttons
    - The garage button is the first button as it is the lowest floor
    - The lobby button replaces the first floor as it would be previously known that there is a lobby
    - The two button is the first numbered floor as it is the second story and one floor above the lobby

## For an A:

### Size and Design
The control interface is 500×750 pixels, small enough to fit on almost all touch screen devices and large enough to be seen clearly on 1920×1080 screen. The design of the interface follows the sketch from part B, aside from the fact thata stat was added next to the "L" button. The star next to the "L" button signifies that the lobby is the main floor for entrance to the building. The screenshot shows a user on floor 6 wishing to travel to the lobby.

![screen](https://user-images.githubusercontent.com/82000483/192670656-0641eff7-3a91-4d7c-b89e-340987748c6a.png)

    
### Interactive Design 

#### Handling Single Floors

The User enters on floor 3 and travels to Garage of the building. 

![single](https://user-images.githubusercontent.com/82000483/192652932-a3be19ae-64f6-4b3e-8bf4-68ccff1366ee.gif)

#### Handling Multiple Floors

![triple](https://user-images.githubusercontent.com/82000483/192652957-e38d5160-16e2-45ac-be0b-7ecf694cf2c9.gif)

#### Handling Elevator Errors

![error](https://user-images.githubusercontent.com/82000483/192653031-7c009de5-5e90-4b99-81b1-176cf53126fa.gif)

