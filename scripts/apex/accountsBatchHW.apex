AccountsBatchHW abw = new AccountsBatchHW();
Id ApexJobID = database.executeBatch(abw, 50);