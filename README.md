# project-3
## Accessibility and Restaurant Success
## Authors: Drew Johnson, Natalie Raver-Goldsby, Tenille Franklinb

#### Overview
<br>#TODO An overview of the project and its purpose</br>
Our team, Natalie, Drew and Tenille, wanted to understand the relationship between accessibility and restaurant popularity in San Francisco. As a measure for accessibility, we use a driving time estimate from the San Francisco's Union Square neighborhood to each restaurant location.* Union Square is one of San Francisco's densest neighborhoods and is proximal to major business and transit hubs. The drive time estimate is sourced from MapBox directions (see Data Sources). Restaurant popularity and success is measured in review counts and ratings (out of 5). Using Yelp Fusion API, we retrieve a list of 239 restaurants in the San Francisco area that we tranform into a Pandas DataFrame with columns for each businesses' Name, Business ID, Latitude, Longitude, LatLong aka Coordinates (Latitude and Longitude as a string, separated by a comma), Address, Rating, Review count, Price rating (measured in number of $), Zip code, Pickup option (boolean), delivery option (boolean), and restaurant reservation option (boolean). We also remove any duplicate coordinates (there was one). Then using MapBox directions API, we retrieve directions for each business which we aggregate in list that is also transformed into a Pandas DataFrame with columns: Route ID, Latitude, Longitude, LatLong (Coordinates), Distance (meters), Duration (seconds), Duration (minutes). Now the data is in a form where we can merge the DataFrames on coordinates. For both Yelp and MapBox API, we transform their response into a json, which we can extract relevant details from and add to a list of dictionaries, which then can be converted to a Pandas DataFrame. We convert Yelp and Mapbox data to csv files, Businesses and Driving Estimates, respectively. 
We map out the relationship between these two datasets, Businesses and Driving Estimates, using https://www.quickdatabasediagrams.com/ which allows us to draw up a ERD. We then use this ERD to create tables and relationships in a SQL database. We can then upload the csv files to our table schema. These tables can now be connected to each other using LatLong aka Coordinates as the foreign key. With properly defined foreign keys, it becomes easier to conduct analyses and identify any valid correlations between these linked tables. Additionally, foreign keys help ensure data integrity. The relationship is unable to exist unless entries in both tables remain consistent with each other. This consistency helps maintain a reliable dataset, allowing for accurate insights.

#### Data Sources
<br>We use Yelp Fusion API and MapBox directions API. Yelp Fusion API provides a list of businesses and user review given a location. It fit the use of this project because it provides user ratings and measure of a businesses popularity through review counts.  
MapBox directions API provides the time between two sets of coordinates or addresses. We use MapBox API because time to a location is one measure of accessibility.</br>
We selected PostgreSQL as our database of choice for several reasons. The first is Postgres is relational. This kind of database is ideal for handling structured data with complex relationships. This aligned well with our need to link restaurant data and driving estimates. We ended up having two tables linked on a foreign key relationship. Using the entity relationship diagram, we were able to easily export our linked tables to Postgres before importing each of our data sets to their specific tables. In addition, Postgres is capable of handling large data sets. Given our data sets exceeded the required number of records for this project, we chose this database because of its’ reliability, speed, and user-friendly interface.
  
#### Code Structure and Use
<br>#TODO Instructions on how to use and interact with the project</br>
The code is executed using three types of files: a Jupyter notebook file (.ipynb), CSV files (.csv), and SQL files (.sql). To use, first run the jupyter file #TODO {insert file name here}. You will need to have the following libraries/packages installed in your working environment in order to run the Jupyter file: requests, json, pandas, geopandas, matplotlib, scipy, pathlib, pprint. You should also have working api keys for Yelp and MapBox saved in a file called api_key. This should produce two CSV files: Businesses.csv and Driving Estimate.csv. To upload this to SQL run the SQL file. The result should be two tables Businesses and Driving Estimate with foreign key LatLong. You can then import the CSV files to their respective tables. 
  
#### Ethical Considerations
One of the main ethical considerations we considered during our project was ensuring compliance with Yelp’s and MapBox’s terms of service during our data collection initiative. Both websites state rate limits they require their users to abide by based on type of account. We had to plan our calls accordingly while ensuring our code was correct to successfully extract our desired data on each attempt. Our second ethical consideration was our choice of location to analyze. San Francisco is well known for its large geographical size coupled with a diverse representation of cultures, industries, and neighborhoods. This eliminated any potential biases or skews in our data as our city choice possessed the characteristics to collect and analyze objective data. Our third and final ethical consideration was our use of findings for our project. We had intentions for our work to be informative, transparent, and practical for our audience. In addition, we hoped our project would inspire meaningful discussion on a rather unique topic. 

#### Results and Future Considerations 
In the future, we would like to also provide mappings of businesses over a transit map of San Francisco. We can also then overlay a heatmap of positive ratings or review counts. This would help us visualize the correlation between transit/accessibility and popularity. Of course, it is important to keep in mind that businesses with more resources choose locations with better accessibility and can use those resources to hire better chefs and source better quality ingredients. In the future, we could try to account for starting funds. Becase we're looking at time to location as a measure of accessibility and we're starting from one of the richest areas of San Francisco, the accessibility of restaurants that can afford high rent is heavily skewed. 

#### References
<br>#TODO References for the data source(s)</br>
<ul>
  <li>Yelp Fusion API</li>
  <li>MapBox API</li>
</ul>
#TODO References for any code used that is not your own
<ul>
  <li>ChatGPT</li> 
  <li>AskBCS</li> 
  <li> Gulseevi Rees</li> 
</ul>
<br>___</br>
#### Notes
<br>*  We initially sought to use WalkScore and DriveScore from WalkScore Professional but unfortunately weren't able to access an API key.</br>
