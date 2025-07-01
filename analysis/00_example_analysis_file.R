# Example analysis file

# load needed packages
library(ggplot2)

# load this package (viga)
devtools::load_all()

# make some data
df <- data.frame("a" = 1:10, "b" = 11:20)

# make a plot
gg <- ggplot(df, aes(a, b)) + geom_point()

# save the plot in the plots directory
save_figs("example_plot", gg)

# save a table in the table directory
write.csv(df, "analysis/tables/example_table.csv")
