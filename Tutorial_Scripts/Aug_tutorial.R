install.packages("here")
install.packages("ggplot2")


library(here)
library(ggplot2)



num_vector <- c(1, 2, 3, 4)        # Numeric vector
char_vector <- c("a", "b", "c")    # Character vector
logical_vector <- c(TRUE, FALSE)   # Logical vector

matrix_data <- matrix(1:9, nrow=3, ncol=3)



df <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Alice", "Bob", "Charlie"),
  Score = c(85.5, 90.3, 78.2)
)

df$Name  # Access the 'Name' column
df[, c("ID", "Score")]  # Access 'ID' and 'Score' columns
df[1, 2]  # Access the element in the 1st row, 2nd column (value: "Alice")
df[2, ]  # Access the 2nd row
subset(df, Score > 80)  # Select rows where Score is greater than 80
df$Grade <- c("B", "A", "C")  # Add a new column 'Grade'
new_row <- data.frame(ID = 4, Name = "David", Score = 88.7, Grade = "B")
df <- rbind(df, new_row)
View(df)





list_data <- list(
  numbers = c(1, 2, 3),
  names = c("Alice", "Bob"),
  matrix_data = matrix(1:4, nrow=2),
  df = df
)

str(list_data)





data("iris")

?iris

View(iris)

summary(iris)

str(iris)

dim(iris)

colnames(iris)


# Select only the columns for Sepal.Length and Sepal.Width
iris_subset <- iris[, c("Sepal.Length", "Sepal.Width")]

# View the first few rows of the subset
head(iris_subset)


# Filter rows where Species is "setosa"
iris_setosa <- iris[iris$Species == "setosa", ]

# View the first few rows of the filtered data
head(iris_setosa)


# Add a new column for the ratio of Sepal.Length to Sepal.Width
iris$Sepal.Ratio <- iris$Sepal.Length / iris$Sepal.Width

# View the first few rows of the dataset with the new column
head(iris)


?ggplot


# Scatter plot of Sepal.Length vs Sepal.Width
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  labs(title = "Sepal Length vs Sepal Width",
       x = "Sepal Length",
       y = "Sepal Width") +
  theme_minimal()


# Boxplot of Sepal.Length by Species
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  labs(title = "Sepal Length by Species",
       x = "Species",
       y = "Sepal Length") +
  theme_minimal()




x <- ls()
x <- x[!x %in% c("iris")]
rm(list = x)
rm(x)

save.image(here("processed_data", "aug_tutorial_temp.RData"))

input <- "aug_tutorial_temp.RData"
load(here("processed_data", input))






