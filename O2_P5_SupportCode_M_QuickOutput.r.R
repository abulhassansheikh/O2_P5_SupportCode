#FUNCTION FOR CREATING OUTPUT FILES EITHER TEMPORARY OR FINAL ON THE GOOGLE DRIVE
TEMP<- function(Dataframe ){
	OutputName = deparse(substitute(Dataframe))
	FileName = paste(OutputName ,"TEMP", gsub(":", "-", as.character(Sys.time())), "csv", sep = ".", collapse = NULL)
	TempLocation = paste("//192.168.2.32/Group/Data Team/Abul/4. Temp Folder", FileName , sep = "/", collapse = NULL)
	write.csv(Dataframe , file = TempLocation , na="")
	}

FINAL<- function(Dataframe ){
	OutputName = deparse(substitute(Dataframe))
	FileName = paste(OutputName, "csv", sep = ".", collapse = NULL)
	TempLocation = paste("//192.168.2.32/Group/Data Team/Abul/3. Final Folder", FileName , sep = "/", collapse = NULL)
	write.csv(Dataframe , file = TempLocation , na="", row.names=FALSE)
	}