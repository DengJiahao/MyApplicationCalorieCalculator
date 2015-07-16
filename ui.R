shinyUI(pageWithSidebar(
  headerPanel("Calculate Your Everyday Calorie Consumption"),
  sidebarPanel(
    numericInput('age', 'Please enter your age', 18, min = 18, max = 100, step = 1),
    selectInput('gender', "Please select your gender",
                       c("male",
                         "female" )),
    sliderInput('weight','Please select your weight (kg)',65, min = 0, max = 100, step = 0.5
    ),
   submitButton('OK')
  ),
  mainPanel(
    h3('Your information is below'),
    h4('Your age'),
    verbatimTextOutput("age"),
    h4('Your gender'),
    verbatimTextOutput("gender"),
    h4('Your weight'),
    verbatimTextOutput("weight"),
    h4('Your Everyday Calorie Consumption (kcal)'),
    verbatimTextOutput("consumption"),
    h4('Notification:',style = "color:grey"),
    h5(' This application can approximately estimate your everyday calorie consumption. You need to enter your age, gender and weight. Then you can click "OK" bottom, and the result will be shown to you.'),
    h4('Reference:',style = "color:grey"),
    a("Andrewtsetop's blog", 
      href = "http://blog.sina.com.cn/s/blog_73264bdf0100wn8k.html"), 
    h4('copywrite',style = "color:grey"),
    h5('© Deng Jiahao')
    
    
  )
))