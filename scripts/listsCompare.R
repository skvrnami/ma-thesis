listsCompare <- function(list1, list2, elect_span) {
  comp <- match(list1$name, list2$name)
  TF <- list1$age == list2$age[comp]-elect_span

  again <- na.omit(list2$name[comp[TF==TRUE]])
  party1 <- na.omit(list1$nomParty[TF==TRUE])
  party2 <- na.omit(list2$nomParty[comp[TF==TRUE]])
  data.frame(again, party1, party2)

}
