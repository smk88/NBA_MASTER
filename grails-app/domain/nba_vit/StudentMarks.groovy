package nba_vit

class StudentMarks {
    
    Student student
    CourseOffering courseOffering
    AssessmentType assessmentType
    int assessmentMarks
    int actualMarks
    
    static belongsTo=[student:Student,courseOffering:CourseOffering,assessmentType:AssessmentType]
        
    static constraints = {
    }
}
