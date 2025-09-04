# Script to deploy the shiny app

library(rsconnect)

# set up rsconnect
# using the blitzthegap@gmail.com account for https://www.shinyapps.io/
rsconnect::setAccountInfo(name='blitzthegap', 
                          token='39D80A51192DC5BBBF80A1A84D028BFA', 
                          secret='7emGswl0rkl6O9pT2VBaNnn9ajcV+mq8bLBnJr6a')

deployApp(appTitle = "Blitz the Gap: Highlights",
          envManagement = TRUE)
