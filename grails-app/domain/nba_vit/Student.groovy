package nba_vit

    class Student {
    String name
    String grNumber
    String currentYear
    String academicYear
    int fyRollNo
    int syRollNo
    int tyRollNo
    int btechRollNo
    String fyDivision
    String syDivision
    String tyDivision
    String btechDivision
    boolean graduationStatus
    String email
    String mobileNumber
    Department department
    Program program
    static belongsTo=[department:Department,program:Program]
    String toString(){
        grNumber
    }
    static constraints = {     
         
         email email : true
         mobileNumber nullable: true       
         fyRollNo nullable: true
         syRollNo nullable: true
         tyRollNo nullable: true
         btechRollNo nullable: true
         fyDivision nullable: true
         syDivision nullable: true
         tyDivision nullable: true
         btechDivision nullable: true
               
    }
    static mapping = {
       graduationStatus defaultValue: false
       //This will reflect in db instead of fy_rn it will be FY_RN 
     /*  table 'student'
       fy_rn column: 'FY_RN'*/
       
    }
}
