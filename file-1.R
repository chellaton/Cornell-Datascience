titanic <- titanic3
g <- ggplot(data=titanic, aes(x=pclass, fill=sex)) + 
  ggtitle('Proportion that survived') + 
  labs(x='passenger class', y='survival rate')
g <- g + geom_col(aes(y=survived)) 
  
print(g)