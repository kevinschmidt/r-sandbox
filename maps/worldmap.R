library(ggmap)

startDate <- as.POSIXlt('2014-06-19 0:00:00 UTC')
baseMP <- ggplot() + borders("world", colour="gray20", fill="gray50")
baseMPAnnotate <- baseMP + annotate("text", x=95, y=-78, size=6, color="gray20", label=as.character(startDate, format="%Y-%m-%d %H:%M:%S"))
mp <- baseMPAnnotate + geom_point(aes(x=-0.076188, y=51.507937), color="#F5A03F", size=3)
ggsave("test.png")