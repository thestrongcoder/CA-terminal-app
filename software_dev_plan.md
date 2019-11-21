
# <b> Software Development Plan </b>
### Written and Developed by Stephanie Hales
</br>

# Statement of Purpose and Scope #

The purpose of the application is to provide automotive businesses with the capability to advance past the dark age of relying on human memory to keep track of production and stock requirements. In 2019, many workplaces continue to under utilise software programs due to their advanced management and lack of training for the user. This application has been developed to provide simple user interactions in order to allow more time spent on the business and less on navigating through software that doesn't necessarily aid in business performance. 

This application will allow the user to utilise a range of features to increase business productivity within the automotive industry. The application will provide users with the capability to search or filter through a list of products held within a database, locate the pricing, description, quantity on hand, and part number. In addition, the user will be able to add, edit, and view the product listing. Following the initial concept, an additional feature would be to provide the functions to purchase products when stock is low, and allocate goods to orders through user input. 


## Target Audience ##

This application has been designed to solve the inefficiency often incumbered within the automotive industry. The majority of automotive businesses started out small and as they evolve into a digital landscape, sales and production teams find it difficult to keep up with the volume of their sales, especially when considering the online market places pushing small operations to become more competitive. By moving towards an application designed for the specific nature of the automotive industry and away from the dark age of using a system incapable of utilising a csv import/export, all users will be able to spend more time focussing on the operations of the business and less on manual and repetitive handling. Ideally this application would also allow the user to create customer and supplier orders as well as generating a job order for the production and dispatch team.  The target audience will be any business operation working within the automotive industry providing products and service to their customers at high quantities. The application will be used by the sales team within the business to locate parts in an efficient manner. This will enable the sales team to not only change the way they keep track of stock, but also how stock management is handled.

## How to Use the Application 

Users will be able to use this application easily through the terminal installed on their operating system, whether through Windows, Linux, or Macintosh. This application will welcome the user and provide an easy to navigate menu of options at each turn, the user will return to the main menu when they complete the feature they are using. The features have been designed based upon user stories. Any application containing stock information needs a myriad of functions in order to maintain its relevancy as an application. For this purpose the following features will be available to the user. 

## Features

## 1. Add/Edit Information 

This feature has been developed to allow users the ability to not only create a new product, but also to edit all details. Through user input, and the use of loops and hashes to store the information, the user is prompted to add a product or edit a product, upon completion the user will be able to see the changes made or the new product in an easy to view layout. 

## 2. Input/Output Using CSV 

The most efficient way to input bulk data into any software program is via the use of a csv. Users would use this predominantly at the commencement of using a new program, however it is also useful in adding a lot of data through one import. For this reason, a csv has been used to provide a multitude of information to store the product information behind the system. The system will read the file and store the information in a hash and when changes are made using the system, the file can be edited based on the changes the user makes while using the application. 

## 3. Display Product list

Users will need to be able to view a full list of products at a glance. This feature will allow the user to view full product information which is stored in the hash and csv file. 

An additional feature which has been added is the ability to have a job order request which in a hypothetical situation, would print a document to advise of a product being allocated for a purchase order. On top of this, if time permitted, there would be additional information held within the csv to then allow the users to create a supplier purchase order when stock is below a specific indicator pre-set by the user. This would use a mathematical equation to automate the process. As well as being able to sales orders within the application. This would be looked at in further revisions of the software and if the intended users request this additional feature. At present, the feature to request the job order, does not allocate any stock from the database, rather it would simply print out a request. 


## Error Handling

To combat errors, the search feature has been replaced with the tty-prompt.  Users will often need to search for a product, which is why there is a search and filter function. This has been utilised with the user in mind. Often, many businesses will have different people inputting data into the system. Initially it would have been ideal to have a search field, however this leaves a lot of space for error. If the search is inputted incorrectly, the user could end up making multiple products leading to the database providing fake data. 

<br>

## User Interaction: 

The user will interact with each feature through the main menu function, which will loop until the user selects to exit the application. At the main menu, by using the up and down keys, the user can select from the menu options by using the enter key on the keyboard. 

1. Create Product
</br>
From here, the user will be prompted to enter information required to input a new part number. The user will need to create a new code, part description, price, and quantity. This information will store within the software with the use of a hash and append to the csv database so that data is collected and not written over previous data. 
</br>

2. Edit Product
</br>
When 'edit product' is selected, the user will be able to use a filtered menu to select a product. The user can use the up and down arrows, as well as filtering the menu as they type letters. When the user selects the product they want to edit, they will be prompted to provide the new part number, description, price, and quantity which will then replace the previous data for that product. The software will then be able to adjust the information in the database so that it is stored for the next time it is used. 
</br>

3. Full Product list
</br>
By selecting the full product list, the information read from the csv will be displayed on the screen allowing the user to view the content in a readable format. The user will be able to view the part number, description, price, and quantity on hand. This function is meant merely as a reference point for the user, when required they will be able to identify to customers what the pricing is or recall a part number. 
</br>
</br>

## Implementation Plan
<br>
Utilising project management software is essential for this type of development. Using Trello as a way of not only keeping track of tasks and deadlines, but also to make sure any comments or issues can be handled in real time and providing updates. Images below showcase how this software has been used to implement the development of this application. The trello board can be accessed at https://trello.com/b/YVgv0ORW/terminal-app

Feature One: 

Add/Edit Information 

Checklist: 
1. The user will be able to add information 
2. The hash will store the user input 
3. The code will loop and return to the main menu each time
4. The user will be able to edit the current data
5. The user will be able to locate the data in another session

Feature Two: 

CSV Database 

Checklist: 
1. The csv database can be opened and information viewed through the terminal
2. The csv database can be edited through the terminal application 
3. The csv data can be stored in a hash to be accessed without the need to call the csv each time the user needs to access information stored in the csv file. 
4. The terminal application can edit information to the correct product


Feature Three: 

Display Information
Checklist: 

1. Data held within the hash or csv can be viewed to the screen using commands within the terminal
2. Information can be presented in a user friendly manner so that it is readable
3. The user can create change data and have it presented on the screen 
4. Using ruby gems, create a user friendly way to view the start of the application

## Status Updates 
<br>

| Date       | Status Update                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |   |   |   |
|------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---|---|---|
| 9/11/2019  | Brainstorm ideas - came up with application idea                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |   |   |   |
| 14/11/2019 | Commenced working on application - started documentation, built control flow diagram<br>Consulted with fellow junior developers over application idea, and consulted with Naveen.,Application concept changed from a manufacturing application to a sports programming application.,Saw a conflict in initial concept and timeframe of production, considered returning to initial concept.,Researched and installed tty-prompt, and artii gem                                                                                                                                                                                                                                                                                                                                                               |   |   |   |
| 15/11/2019 | Consulted with Naveen regarding changing back to the initial concept - discussed features and went over the control flow diagram. Created Git Repository. Commenced coding, found some gems which would be more useful. Installed the tty-prompt and artii gems. Consulted with a fellow junior developer, as errors presented with the prompt code, read through more of the documentation. Had an issue with git - consulted with a fellow developer to make the second commit.                                                                                                                                                                                                                                                                                                                            |   |   |   |
| 18/11/2019 | Initially the code was written to have the csv storing the data and being called each time. Following consultation, I was able to change this to utilise the hash as the call method which was the initial intention upon developing the control flow diagram. From here, I had to develop a way to not only edit the hash values but also add them to the csv without the csv file deleting all other data. I ran into some issues when the csv file was deleted when I ran the application. Researched some ways to do this, truncate was the best option. Decided to test the theory, made a method to deal with this in order to maintain DRY code. This worked, it deleted all the previous data and I was able to call the write method to write the data stored in the hashes to update the csv file. |   |   |   |
|            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |   |   |   |




## Testing: 

<b> Scenario: </b> Edit Product <br>	
<b> Requirements: </b> R1 (Does the system edit the product values)	

<b>Description: </b>  
Testing the edit product feature is editing the product within the hash	 

<b> Steps: </b>
1. When prompted to edit the product, the user will provide new values to replace the selected product values
2. The new values will be displayed to the screen
3. The user will need to select exit 
4. The user will run the application again and select 'full product list' to see if they can see that the information has been stored in the hash
5. Information displayed in product list shows edited product, not the original product information"	
<br>

<b> Outcome: </b>
"Fail - The user was unable to edit the selected product. 
The code failed to use the hash to maintain the information, causing the software to slow down as it required to call on the csv for each feature"
<br>
</br>
<b> Scenario: </b> Edit Product <br>	
<b> Requirements: </b> R1 (Does the system edit the product values)	

<b>Description: </b>  
Testing the edit product feature is editing the product within the hash	 

<b> Steps: </b>
1. When prompted to edit the product, the user will provide new values to replace the selected product values
2. The new values will be displayed to the screen
3. The user will need to select exit 
4. The user will run the application again and select 'full product list' to see if they can see that the information has been stored in the hash
5. Information displayed in product list shows edited product, not the original product information"	
<br>

<b> Outcome: </b>
Pass - The user was able to store the product in the hash and viewable after re-entering the application

<b> Scenario: </b> 
Edit CSV data 	<br>

<b> Requirements: </b> 
R3 (CSV details changed after user input of edit feature	

<b>Description: </b> 
Testing that the user was able to edit the CSV database and not just store inside the hash	


<b> Steps: </b>
1. After the user has edited the hash, the CSV should be updated to show the new information, not the original data
2. exit the application
3. re-run the application and show the 'full product list'
4. Open the CSV located within the directory 
5. CSV information is updated as per user input.<br>

<b> Outcome:</b>
Fail - The CSV was overwritten with only the new data. All previous data had been deleted from the file

<b> Scenario: </b> 
Edit CSV data	<br>

<b> Requirements: </b> 
R3 (CSV details changed after user input of edit feature

<b>Description: </b> 
Testing that the user was able to edit the CSV database and not just store inside the hash


<b> Steps: </b>
1. After the user has edited the hash, the CSV should be updated to show the new information, not the original data
2. exit the application
3. re-run the application and show the 'full product list'
4. Open the CSV located within the directory 
5. CSV information is updated as per user input.
<br>

<b> Outcome:</b>
Pass - The code has been changed to allow the csv to be updated by using the truncate function and then writing all details held within the hash. This updated the entire csv file, allowing the next user to access the new information. <br>
