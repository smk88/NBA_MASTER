package nba_vit

class MarkingScheme {
    CourseType courseType
    int homeworkAssignment
    int tutorial
    int laboratry
    int test1
    int test2
    int endSEmesterExam
    int reviewOne
    int reviewTwo
    int reviewThree
    int reviewFour
    int reviewFile  
    
    static belongsTo=[courseType:CourseType]
   
    static constraints = {
    }
}
