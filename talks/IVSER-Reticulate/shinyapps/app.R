## Painel de visualização de ações

# Importação de pacotes do R

library(shiny)
library(reticulate)
library(dplyr)
library(tibble)
library(ggplot2)

# Ativação da virtual environment

virtualenv_python(envname = "r-reticulate")

# Importação de bibliotecas do python

np <- import("numpy")
pd <- import("pandas")
yf <- import('fix_yahoo_finance')


# Criação da interface gráfica

ui <- fluidPage(
    
    titlePanel("Painel de Preços de Ações"),
    
    sidebarLayout(
        
        sidebarPanel(
            
            textInput(inputId = 'stock_name', 
                      label = "Informe o código da Ação", 
                      value = "AAPL"),
            
            selectInput(inputId = "period", 
                        choices = c("1d","5d","1mo","3mo","6mo","1y","2y","5y","10y","ytd","max"),
                        selected = "1mo", label = "period"),
            
            selectInput(inputId = "interval", 
                        choices = c("1m","2m","5m","15m","30m","60m","90m","1h","1d","5d","1wk","1mo","3mo"),
                        selected = "1d", label = "interval")
            
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
)

# Define o back-end

server <- function(input, output) {

    output$distPlot <- renderPlot({
        
        mstf = yf$Ticker(input$stock_name)

        historico = pd$DataFrame(mstf$history(period = input$period, interval = input$interval))
        
        historico %>% 
            tibble::rownames_to_column() %>% 
            select(rowname, High, Low, Close) %>%
            mutate(rowname = as.Date(rowname)) %>% 
            reshape2::melt(id.vars = "rowname") %>% 
            ggplot(aes(x = rowname, y = value)) + 
            geom_smooth() + xlab("Data") + ylab("Valor ($)")
    })
}

# Rodar a aplicação
shinyApp(ui = ui, server = server)