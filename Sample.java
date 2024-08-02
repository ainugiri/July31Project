public class Sample{
    // method to calculate no of weeks between two dates
    public static int weeksBetween(String startDate, String endDate){
        // split the date string into day, month and year
        String[] start = startDate.split("-");
        String[] end = endDate.split("-");
        // convert the string into integer
        int startYear = Integer.parseInt(start[0]);
        int startMonth = Integer.parseInt(start[1]);
        int startDay = Integer.parseInt(start[2]);
        int endYear = Integer.parseInt(end[0]);
        int endMonth = Integer.parseInt(end[1]);
        int endDay = Integer.parseInt(end[2]);
        // calculate the no of days between two dates
        int days = 0;
        while(startYear < endYear || startMonth < endMonth || startDay < endDay){
            days++;
            startDay++;
            if(startDay > 30){
                startDay = 1;
                startMonth++;
            }
            if(startMonth > 12){
                startMonth = 1;
                startYear++;
            }
        }
        // calculate the no of weeks
        return days/7;
    }
    public static void main(String[] args){
        // input dates
        String startDate = "2020-01-01";
        String endDate = "2020-01-15";
        // calculate the no of weeks between two dates
        int weeks = weeksBetween(startDate, endDate);
        // print the no of weeks
        System.out.println(weeks);
        System.out.println("Giri Prasad P");
        System.out.println("Sathish Babu");
        System.out.println("GitHub Repo");
    }   
}
