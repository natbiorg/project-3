# project-3

Overview
#TODO An overview of the project and its purpose
  Our team, Natalie, Drew and Tenille, wanted to understand the relationship between accessibility and restaurant popularity in San Francisco. As a measure for accessibility, we use a driving time estimate from the San Francisco's Union Square neighborhood to each restaurant location.* Union Square is one of San Francisco's densest neighborhoods and is proximal to major business and transit hubs. The drive time estimate is sourced from MapBox directions (see Data Sources). Restaurant popularity and success is measured in review counts and ratings (out of 5). Using Yelp Fusion API, we retrieve a list of 239 restaurants in the San Francisco area that we tranform into a Pandas DataFrame with columns for each businesses' Name, Business ID, Latitude, Longitude, LatLong aka Coordinates (Latitude and Longitude as a string, separated by a comma), Address, Rating, Review count, Price rating (measured in number of $), Zip code, Pickup option (boolean), delivery option (boolean), and restaurant reservation option (boolean). We also remove any duplicate coordinates (there was one). Then using MapBox directions API, we retrieve directions for each business which we aggregate in list that is also transformed into a Pandas DataFrame with columns: Route ID, Latitude, Longitude, LatLong (Coordinates), Distance (meters), Duration (seconds), Duration (minutes). Now the data is in a form where we can merge the DataFrames on coordinates. For both Yelp and MapBox API, we transform their response into a json, which we can extract relevant details from and add to a list of dictionaries, which then can be converted to a Pandas DataFrame. We convert Yelp and Mapbox data to csv files, Businesses and Driving Estimates, respectively. 
  We map out the relationship between these two datasets, Businesses and Driving Estimates, using https://www.quickdatabasediagrams.com/ which allows us to draw up a ERD. We then use this ERD to create tables and relationships in a SQL database. We can then upload the csv files to our table schema. These tables can now be connected to each other using LatLong aka Coordinates as the foreign key. #TODO Why is this important? 

Data Sources
#TODO The project documents the choice of the database used and why
  We use Yelp Fusion API and MapBox directions API. Yelp Fusion API provides a list of businesses and user review given a location. It fit the use of this project because it provides user ratings and measure of a businesses popularity through review counts.  
  MapBox directions API provides the time between two sets of coordinates or addresses. We use MapBox API because time to a location is one measure of accessibility.
  
Code Structure and Use 
#TODO Instructions on how to use and interact with the project
  
Ethical Considerations
#TODO At least one paragraph summarizing efforts for ethical considerations made in the project

References 
#TODO References for the data source(s)
  Yelp Fusion API
  MapBox API
#TODO References for any code used that is not your own
  ChatGPT 
  AskBCS 
  Gulseevi Rees
  
Notes: 
*  We initially sought to use WalkScore and DriveScore from WalkScore Professional but unfortunately weren't able to access an API key.
