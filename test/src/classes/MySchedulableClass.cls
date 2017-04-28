//hello test saving
global class MySchedulableClass implements Schedulable {
   global void execute(SchedulableContext ctx) {
      CronTrigger ct = [SELECT Id, CronExpression, TimesTriggered, NextFireTime
                FROM CronTrigger WHERE Id = :ctx.getTriggerId()];

      System.debug(ct.CronExpression);
      System.debug(ct.TimesTriggered);
   }   
}