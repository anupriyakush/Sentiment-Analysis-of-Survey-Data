library(sentimentr)
library(devtools)
#install.packages("syuzhet")
library(syuzhet)
library(ggplot2)

# MSBI --------------------------------------------------------------------


text_msbi<- "It would be awesome, if we could work with our own data sets, while in the course. Learning was slowed because of my unfamiliarity with the data. In practicality, not sure if this suggestion is feasible. Could be a bad idea but based on past trainings working with a partner helps me to think through the exercises and makes it less likely for me to look at the answers provided. The end of the first day felt a little rushed. Also, the last part (security) was a little over my head. It was hard to follow if I didn't understand database terminology. Also, they could have asked people how they accomplished writing different measures to keep the audience more engaged. Asking if people have questions repeatedly is not effective for that. I would like to have seen more DAX functions. We covered a number of functions in depth but I would to have liked to have seen more functions covered at a high level. Just to know some more commonly used functions and how they are applicable. More focus on dashboards. Less emphasis on basic functionality.Get even more in depth with showing example of using Python and R. This was done very well. Nothing. The course material was perfect. Topic details, test cases then detailed descriptions of how to complete the case. 
I felt having two instructors was great. One that can answer/help with individual questions while the other instructor continued to teach helped with the pace and allowed the trainees to ask questions. the Amend Team was very knowledgeable and seemed very efficient at what they do. Maybe sending out a more detailed list of functions to cover so that we could have digested them ahead of time. 
. Excellent training! 
I would like it to be easier to interact with the group interested in our job posting, maybe if the app had a computer based interface along with the mobile one. Course is action packed but very effective in delivering concepts across well balanced areas 
"
sent_msbi <- sentiment(text_msbi, by = NULL)
sent_msbi
sent_terms_msbi <- extract_sentiment_terms(text_msbi, by = NULL)
sent_terms_msbi
sent_by_msbi <- sentiment_by(text_msbi,by = NULL,averaging.function = sentimentr::average_downweighted_zero)
class(sent_by_msbi)
class(text_msbi)

mysentiment_msbi<-get_nrc_sentiment((text_msbi))
Sentimentscores_msbi<-data.frame(colSums(mysentiment_msbi))
names(Sentimentscores_msbi)<-"Score"

SentimentScores_msbi<-cbind("sentiment"=rownames(Sentimentscores_msbi),Sentimentscores_msbi)
rownames(SentimentScores_msbi)<-NULL
ggplot(data=SentimentScores_msbi,aes(x=sentiment,y=Score))+geom_bar(aes(fill=sentiment),stat = "identity")+
  theme(legend.position="none")+
  xlab("Sentiments")+ylab("scores")+ggtitle("Total sentiment based on scores for MSBI training")

# Tableau -----------------------------------------------------------------


text_tableau <- "More of the same but perhaps even more advanced methodologies for building better, cleaner yet more useful, interactive visualizations/ dashboards. 
. A little easier pace, maybe less content with a richer demonstration of the content presented. 
I would like to see it get more advanced. I came in with a fair knowledge of Tableau and was hoping to see more discussion like the last 2 hours of the course throughout. 
A more advanced level of course content. 
I was still hoping for more in depth coverage of formula's and LOD calculations. I was looking for more of that instead of necessarily viz's. I did like the coverage of Sets that was very helpful 
I had no prior knowledge in Tableau, and I felt like the class was a good fit for me. 
If this is a follow-up from the first class, I would have preferred less review and more new material--more second day material with less rush. 
Spend less time on the minor calculations and more on the chart making. Felt like we crunched in important topics last minute on the last day due to spending so much time on things that weren't advanced. The instructor was great at explaining the topics discussed though. 
Advanced Tableau should be an Advanced course, rather than a two day review with one or two advanced topics on the second afternoon. There were several attendees who seemed to have needed a remedial course and who held the rest of the class up. Several of the more complicated topics weren't covered at all or were only glanced over in favor of easier, simpler items that should have been common knowledge for someone attending an advanced course. 
More chart types, less data joining 
Maybe a little time on our own to do work using data from our jobs with Instructors and assistants to assist as needed? 
In terms of the venue/ equipment, only suggestion would be to possibly look for something with projectors/ screens of a resolution/ format more conducive to sharing a Tableau interface specifically. Much time was spent adjusting font/ layout sizes in order to ensure those beyond the 2nd row could see clearly. Went much too fast. There was no time to think or explore, or even try out the skills we were learning. We just kept plowing through content. I would have liked a little time to try things and apply what we were learning. I saw a lot of interesting things, but there was no time to write notes or go back for another look, or we would miss the next thing.The course felt more intermediate than advanced from a personal standpoint. I may have missed it but if they weren't listed, a more detailed list of the course topics before purchasing the class would've been helpful. I would have liked the course to start where it actually ended. I was very interested in the Sankey diagram, which was the closing act. If you could offer an expert level course maybe, that would be great. I liked learning that I could pivot my data and make it Tableau useful. n/a. The first half of the first day almost felt like a waste since it was such a beginner class. I know that it was intermediate/advanced, but sometimes too much time was spent explaining things I would think people at that level should already know. UC should offer a semester class of Tableau. :)  "
sent_tableau <- sentiment(text_tableau, by = NULL)
sent_tableau
sent_terms__tableau <- extract_sentiment_terms(text_tableau, by = NULL)
sent_terms_tableau
sent_by_tableau <- sentiment_by(text_tableau,by = NULL,averaging.function = sentimentr::average_downweighted_zero)
class(sent_by_tableau)
class(text_tableau)

mysentiment_tableau<-get_nrc_sentiment((text_tableau))
Sentimentscores_tableau<-data.frame(colSums(mysentiment_tableau))
names(Sentimentscores_tableau)<-"Score"

SentimentScores_tableau<-cbind("sentiment"=rownames(Sentimentscores_tableau),Sentimentscores_tableau)
rownames(SentimentScores_tableau)<-NULL
ggplot(data=SentimentScores_tableau,aes(x=sentiment,y=Score))+geom_bar(aes(fill=sentiment),stat = "identity")+
  theme(legend.position="none")+
  xlab("Sentiments")+ylab("scores")+ggtitle("Total sentiment based on scores for Tableau Training")


# Machine Learning --------------------------------------------------------

text_ML <- "The course was really good! 
. A lot condensed in 2 days. We could shrink the scope or increase the duration of the course. 
I would like to see some more theory and logical explanations of the ML algorithms. 
For me, the most valuable part of the course was the practical application parts of how you go about preparing data and applying a model. Spending more time walking through that process and the decisions you make would have been helpful (we already spent some time doing that quickly, but a greater focus on that aspect would have helped). 
I got a lot more out of Day 1 than Day 2, but there are a lot of factors: 1) Instructor style on Day 1 more to MY personal liking; 2) Content on Day 1 more relevant/actionable for MY job situation; My concentration level on Day 2 was not as strong (my issue, not instructors). 
I'd like to have spent more time on both days! Day 1 was a revision, but I still got a lot of insights and new ways to think about things. I don't work with these topics on a daily basis. Day 2 was all new to me. Perhaps you can further break the class into two smaller groups, where attendees would have the option to choose a more in-depth overview of any 2-3 topics. You could provide a broad overview of the topics in the first half of the day, and in the afternoon, you could offer two break-outs (two instructors) to go over hands-on practice in more-detail. 
Course materials on Day 2 needed more quality control. A large percentage of the slides were missing the images because they were saved from web pages improperly. 
. I found it tough to follow PDP an Shapley Values concepts. However, I don't have any feedback how these concepts could be taught better. 
. This way it would be easier to see the differences across different modeling techniques. I plan to come back next year. This is a good summary and you always learn something new. Good job! 
I think it would be nice to have an review of the base data prior to arriving, and suggested codes to test against it prior to the class. Maybe you could focus on one data set only.Overall good class, other than their was confusion on the start time. 
"
sent_ML <- sentiment(text_ML, by = NULL)
library(tidyr)
sent_ML %>% drop_na()
colSums(is.na(sent_ML))
cat(which(is.na(sent_ML$word_count)==TRUE)) 

sent_ML <- sent_ML[-c(2,17,20),]
colSums(is.na(sent_ML))

sent_terms_ML <- extract_sentiment_terms(text_ML, by = NULL)
sent_terms_ML
sent_by_ML <- sentiment_by(text_ML,by = NULL,averaging.function = sentimentr::average_downweighted_zero)
class(sent_by_ML)
class(text_ML)

mysentiment_ML<-get_nrc_sentiment((text_ML))
Sentimentscores_ML<-data.frame(colSums(mysentiment_ML))
names(Sentimentscores_ML)<-"Score"

SentimentScores_ML<-cbind("sentiment"=rownames(Sentimentscores_ML),Sentimentscores_ML)
rownames(SentimentScores_ML)<-NULL

ggplot(data=SentimentScores_ML,aes(x=sentiment,y=Score))+geom_bar(aes(fill=sentiment),stat = "identity")+
  theme(legend.position="none")+
  xlab("Sentiments")+ylab("scores")+ggtitle("Total sentiment based on scores for Machine Learning Training")



# Big Data ----------------------------------------------------------------

text_BigData <- "I would like to see a demo of terabytes of data analyzed through Spark. I thought the course was well thought out, well presented, and had alot of great content. Perhaps more live demos. Both the instructors were really good. They demonstrated deep understanding of the topic. Andrew was a fantastic instructor. My only complaints about the two days were 1) I tried three of my own computers before I found one that could install the VM properly and 2) it was freezing in the room! The course was great! Thank you!"
sent_BigData <- sentiment(text_BigData, by = NULL)
sent_BigData
mean(sent_BigData$sentiment)
sent_terms_BigData <- extract_sentiment_terms(text_BigData, by = NULL)
sent_terms_BigData
sent_by_BigData <- sentiment_by(text_BigData,by = NULL,averaging.function = sentimentr::average_downweighted_zero)
class(sent_by_BigData)
class(text_BigData)

mysentiment_BigData<-get_nrc_sentiment((text_BigData))
Sentimentscores_BigData<-data.frame(colSums(mysentiment_BigData))
names(Sentimentscores_BigData)<-"Score"

SentimentScores_BigData<-cbind("sentiment"=rownames(Sentimentscores_BigData),Sentimentscores_BigData)
rownames(SentimentScores_BigData)<-NULL
ggplot(data=SentimentScores_BigData,aes(x=sentiment,y=Score))+geom_bar(aes(fill=sentiment),stat = "identity")+
  theme(legend.position="none")+
  xlab("Sentiments")+ylab("scores")+ggtitle("Total sentiment based on scores for Big Data Training")



# Analytics for executives ------------------------------------------------

text_executive <- "I would like to see more discussion on case studies, recommended practices, etc. regarding how best to structure the data analytics teams, how to set-up metrics for the performance of the data analytics teams, etc. all was good. IT could have been shortened by an hour or so. All was good. "
sent_executive <- sentiment(text_executive, by = NULL)
sent_executive
sent_terms_executive <- extract_sentiment_terms(text_executive, by = NULL)
sent_terms_executive
sent_by_executive <- sentiment_by(text_executive,by = NULL,averaging.function = sentimentr::average_downweighted_zero)
class(sent_by_executive)
class(text_executive)

mysentiment_executive<-get_nrc_sentiment((text_executive))
Sentimentscores_executive<-data.frame(colSums(mysentiment_executive))
names(Sentimentscores_executive)<-"Score"

SentimentScores_executive<-cbind("sentiment"=rownames(Sentimentscores_executive),Sentimentscores_executive)
rownames(SentimentScores_executive)<-NULL
ggplot(data=SentimentScores_executive,aes(x=sentiment,y=Score))+geom_bar(aes(fill=sentiment),stat = "identity")+
  theme(legend.position="none")+
  xlab("Sentiments")+ylab("scores")+ggtitle("Total sentiment based on scores for Analytics for Executives Training")



# Overall Sentiment for Analytics Summit ----------------------------------

text_summit <- "better coffee. The notebooks were extremely helpful. 
In terms of the venue/ equipment, only suggestion would be to possibly look for something with projectors/ screens of a resolution/ format more conducive to sharing a Tableau interface specifically. Much time was spent adjusting font/ layout sizes in order to ensure those beyond the 2nd row could see clearly. The course felt more intermediate than advanced from a personal standpoint. I may have missed it but if they weren't listed, a more detailed list of the course topics before purchasing the class would've been helpful "
sent_summit <- sentiment(text_summit, by = NULL)
sent_summit
sent_terms_summit <- extract_sentiment_terms(text_summit, by = NULL)
sent_terms_summit
sent_by_summit <- sentiment_by(text_summit,by = NULL,averaging.function = sentimentr::average_downweighted_zero)
class(sent_by_summit)
class(text_summit)

mysentiment_summit<-get_nrc_sentiment((text_summit))
Sentimentscores_summit<-data.frame(colSums(mysentiment_summit))
names(Sentimentscores_summit)<-"Score"

SentimentScores_summit<-cbind("sentiment"=rownames(Sentimentscores_summit),Sentimentscores_summit)
rownames(SentimentScores_summit)<-NULL
ggplot(data=SentimentScores_summit,aes(x=sentiment,y=Score))+geom_bar(aes(fill=sentiment),stat = "identity")+
  theme(legend.position="none")+
  xlab("Sentiments")+ylab("scores")+ggtitle("Total sentiment based on scores for Overall Analytics Summmit")


