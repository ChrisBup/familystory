# App Name: FamilyStory

#### Resources/Gems:

Ziggeo API

rspec
httparty
font-awesome
rails_12factor

## Research/Concept

Family Story is a social network but one meant to allow family members to share the stories that all families have, all in one place. It uses collective wisdom to build a narrative history that emerges from individuals contributing their own memories in their own words to share with each other and generations to come. This is the record of a family and a way to connect—over time and space—with those who mean the most.

Hopefully, it will persist and future generations will be able get a glimpse of where they came from and the people who came before them. It's a small way to create a broad picture of a family and it’s story.

Welcome to the family!

## How it Works

Family Story allows users to create a profile as a family member and record a video introduction where they answer questions about themselves and share their favorite stories about their family.

They can also view and edit an interactive family tree, adding family members and building out the tree as much as they like, contributing to a dynamic and ever growing picture of a family and it's story.

-

## Data Model:

| member     |
| -----------|
| name    	 |
| dob	    	 |
| city    	 |
| bio        |


| Video    	  |
| ------------|
| member_id 	|
| caption     |


| Comment    	|
| ------------|
| member_id	  |
| content     |
| commentee   |

##Wireframes

![Alt text](/sketches/FamilyStorySketch.JPG)

This is the 'back-of-the-napkin' sketch I did the night I got the idea, rushed home and had to get it all down on paper in a moment of frenzied brainstorming.

![Alt text](/sketches/FamilyStoryDataModels.JPG)
![Alt text](/sketches/FamilyStoryDataWireframe.JPG)

##Documentation:

https://www.ziggeo.com/docs

##Heroku:

http://familystory.herokuapp.com

##Trello:

https://trello.com/b/ILoYceCu/familystory
