package nba_vit

class StudentCourse {
    Student student
    String studentDivision
    CourseOffering courseOffering
       
    static belongsTo=[student:Student,courseOffering:CourseOffering]

    static constraints = {
    }
}
