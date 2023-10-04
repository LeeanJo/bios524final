## code to prepare `DATASET` dataset goes here




library(readr)


raw_data <- read.csv("C:/Users/joi/OneDrive/Desktop/Biomedical Computing/Electric_Vehicle_Population_Data.csv")



EV <- raw_data %>%
  select(c(-Legislative.District, -Electric.Utility,
           -X2020.Census.Tract, -VIN..1.10., -Postal.Code))

library(stringr)




# Extract the longitude and latitude values

# Initialize empty vectors to store latitude and longitude
latitude <- numeric()
longitude <- numeric()

# Iterate through each row of the "Vehicle.Location" column
for (i in 1:nrow(EV)) {
  latitude[i] <- as.numeric(str_extract(EV$Vehicle.Location[i], "-?\\d+\\.\\d+"))
  longitude[i] <- as.numeric(str_extract(EV$Vehicle.Location[i], "\\s(-?\\d+\\.\\d+)"))
}

# Create a data frame with the extracted values
coordinates <- data.frame(Longitude = longitude, Latitude = latitude)

# Print the result
EV <- cbind(EV,coordinates)

coordinates









usethis::use_data(@@@@@@@@@@@@, overwrite = TRUE)
