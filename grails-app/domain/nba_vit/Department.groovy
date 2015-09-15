package nba_vit

class Department {
    String name
    Institute institute
    
    static belongsTo=[institute:Institute]
    String toString()
    {
        name
    }
    static constraints = {
       
        // institute nullable:false
    }
}
