package nba_vit

class Course {

    String courseCode
    String courseName
    CourseType courseType
    int courseCredit    
    int semester
    int module
    Employee  employee    
    
    static belongsTo=[coursetype:CourseType,employee:Employee]
    
    String toString(){
        courseCode
    }
    static constraints = {
         
    }
}
