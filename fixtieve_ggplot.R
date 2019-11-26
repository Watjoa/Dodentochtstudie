
value <- as.numeric(c(4.02, 4.0, 3.5, 2.8))
post <- c('Post 1, 27.3 km', 'Post 2, 53.7 km','Post 3, 72 km','Post 4, 89.9 km')
table <- cbind(value, post)
table <- as.data.frame(table)
table$value <- as.character(table$value)
table$value <- as.numeric(table$value)
table$post <- factor(table$post, levels=c('Start','Post 1, 27.3 km','Post 2, 53.7 km','Post 3, 72 km','Post 4, 89.9 km'))


ggplot(data=table, aes(x=post, y=value, group=1)) +
  geom_line(color="orange",size=1.2)+
  geom_point() +
  labs(
    x = "Post",
    y = "Score",
    title = " ",
    subtitle="Pijn over tijd",
    caption = "Bron: Dodentochtstudie, Universiteit Gent"
  )+
  theme_classic()+
  coord_cartesian(ylim=c(1,5))+
  theme(plot.caption = element_text(color = "black", size = 13),text=element_text(size=20,  family="PT Sans Narrow"),legend.position="top")
