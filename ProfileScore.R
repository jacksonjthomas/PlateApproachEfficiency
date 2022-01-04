profileScore = read.csv(file.choose())

library(ggplot2)
head(profileScore)

eliteDF = profileScore[profileScore$Profile == "ELITE" , ]

hitDF = profileScore[profileScore$Profile == "HIT" , ]

eyeDF = profileScore[profileScore$Profile == "Eye" , ]

(ggplot(data = eliteDF, aes(x = BB.K, y = TB.AB, color = Profile)) + 
    geom_hline(yintercept = 0, linetype = "dashed") + 
    geom_vline(xintercept = 0, linetype = "dashed") +
    geom_point(size = 2.5) + 
    scale_color_manual(values = c("#00BF7D", "#00B0F6", "#E76BF3")) +
    theme_minimal() + 
    xlim(-1.4, 4.5) + 
    ylim(-2, 2.7) + 
    labs(x = "BB/K", y = "Total Bases/At-Bat") + 
    ggtitle("Plate Appearance Efficiency Profile") + 
    geom_text_repel(aes(label=Player), 
              color = "black", size = 3.99, nudge_x = 0, nudge_y = -0.1) +
    theme(plot.title = element_text(hjust = 0.5, size = 20),
          axis.text.x = element_text(size = 16),
          axis.text.y = element_text(size = 16),
          axis.title.x = element_text(size = 18),
          axis.title.y = element_text(size = 18), 
          strip.text = element_text(size = 16), 
          legend.title = element_text(size = 16), 
          legend.text = element_text(size = 14), 
          legend.position = "none"))




