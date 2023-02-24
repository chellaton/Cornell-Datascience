library(Hmisc)
titanic <- titanic3
g <- ggplot(data=titanic, aes(x=pclass, fill=sex)) + 
  ggtitle('Proportion that survived') + 
  labs(x='passenger class', y='survival rate')
g <- g + geom_col(position='stack', 
                  aes(y=length(titanic$survived==1)/length(titanic$survived))) 
  
print(g)