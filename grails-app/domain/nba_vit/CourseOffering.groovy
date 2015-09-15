package nba_vit

class CourseOffering {
    Course course
    String acadamicYear
    String semester
    String module
    String year
    
     static belongsTo=[course:Course]
     
    static constraints = {
        
    }
}
