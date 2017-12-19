#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

ui <- navbarPage(
  title = "Crime in Boston",
  navbarMenu(
    title = "Overall Map",
    tabPanel("Crime Summary Map",
             div("Following is the summary map for crime from June 2012 to Dec 2017"),
             div("They are arranged based on different offense types"),
             splitLayout(img(src="overall.jpg", align = "center"))),
    tabPanel("Overall Propensity Map",
             div("By utilizing the stat 2d density, the propensity of crime is plotted as below "),
             splitLayout(img(src="overall_den.jpg", align = "center")))),
  navbarMenu(
    title = "Overall Stats",
    tabPanel("Districts",
             div("This graph shows the count of serious crimes based on each BPD district"),
             splitLayout(img(src="district.jpg", align = "center"))),
    tabPanel("Year", 
             div("This graph shows the count of serious crimes based on each year(13 - 17)"),
             div("We see there is a general decreasing trend as we move from 2013 to 2017"),
             splitLayout(img(src="year.jpg", align = "center"))),
    tabPanel("Month",
             div("This graph shows the count of serious crimes based on each month"),
             div("A general seasonal fluctuation of occurances can be observed"),
             splitLayout(img(src="month.jpg", align = "center"))),
    tabPanel("Clustering",
             div("Starbucks Give Good is another hashtag and promotes the idea of giving. Give Good project aims to celebrate communities and local heroes with $1 million worth of Starbucks Cards throughout the month of December.It gives customers a perception of good and giving."),
             div("Surprisingly,the distribution graph shows that the mode is below 0. The average score is less than Starbucks At Home. Laterly, I will plot those sentiment scores on a US map to see which region specifically has a negative attitude toward this event."),
             splitLayout(img(src="clustering.JPG", align = "center")))),
  navbarMenu(
    title = "K-Means Clustering",
    tabPanel("2013",
             div("Below is K-Means clustering for Year 2013 with K = 12"),
             splitLayout(img(src="clu13.jpg", align = "center"))),
    tabPanel("2014",
             div("Below is K-Means clustering for Year 2014 with K = 12"),
             splitLayout(img(src="clu14.jpg", align = "center"))),
    tabPanel("2015",
             div("Below is K-Means clustering for Year 2015 with K = 12"),
             splitLayout(img(src="clu15.jpg", align = "center"))),
    tabPanel("2016",
             div("Below is K-Means clustering for Year 2016 with K = 12"),
             splitLayout(img(src="clu16.jpg", align = "center"))),
    tabPanel("2017",
             div("Below is K-Means clustering for Year 2017 with K = 12"),
             splitLayout(img(src="clu17.jpg", align = "center")))),
  navbarMenu(
    title = "Propensity Graph",
    tabPanel("2013",
             div("Below is Propensity Graph for Year 2013 "),
             splitLayout(img(src="den13.jpg", align = "center"))),
    tabPanel("2014",
             div("Below is Propensity Graph for Year 2014"),
             splitLayout(img(src="den14.jpg", align = "center"))),
    tabPanel("2015",
             div("Below is Propensity Graph for Year 2015 "),
             splitLayout(img(src="den15.jpg", align = "center"))),
    tabPanel("2016",
             div("Below is Propensity Graph for Year 2016 "),
             splitLayout(img(src="den16.jpg", align = "center"))),
    tabPanel("2017",
             div("Below is Propensity Graph for Year 2017 "),
             splitLayout(img(src="den17.jpg", align = "center"))))
)


server <- function(session,input,output){
  
}

shinyApp(ui = ui, server = server)