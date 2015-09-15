package nba_vit

class TeacherCourse {
    Employee employee
    String teacherDivison
    CourseOffering  courseOffering

    static belongsTo=[employee:Employee,courseOffering:CourseOffering]   
    
    static constraints = {
    }
}
