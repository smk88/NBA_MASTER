package nba_vit

class Employee {
    String name
    String employeeId
    Role role
    String email
    String mob
    Department department
    Program program    
    static belongsTo=[department:Department,program:Program,role:Role]
    static hasMany=[role:Role]
    
     String toString ()  {
        employeeId
    }
    
    static constraints = {
       
        //email email : true
        
    }
}
