package nba_vit

class CoMarksMapping {
    Course course
    int percentage
    int actualMarks
    int assessmentMarks 
    CourseOffering courseOffering 
    AssessmentType assessmentType
    Employee employee
    
    static belongsTo=[employee:Employee,assessmentType:AssessmentType,courseOffering:CourseOffering]
    
  
    static constraints = {         
        
    }
}

