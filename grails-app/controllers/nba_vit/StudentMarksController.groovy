package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StudentMarksController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StudentMarks.list(params), model:[studentMarksInstanceCount: StudentMarks.count()]
    }

    def show(StudentMarks studentMarksInstance) {
        respond studentMarksInstance
    }

    def create() {
        respond new StudentMarks(params)
    }

    @Transactional
    def save(StudentMarks studentMarksInstance) {
        if (studentMarksInstance == null) {
            notFound()
            return
        }

        if (studentMarksInstance.hasErrors()) {
            respond studentMarksInstance.errors, view:'create'
            return
        }

        studentMarksInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'studentMarksInstance.label', default: 'StudentMarks'), studentMarksInstance.id])
                redirect studentMarksInstance
            }
            '*' { respond studentMarksInstance, [status: CREATED] }
        }
    }

    def edit(StudentMarks studentMarksInstance) {
        respond studentMarksInstance
    }

    @Transactional
    def update(StudentMarks studentMarksInstance) {
        if (studentMarksInstance == null) {
            notFound()
            return
        }

        if (studentMarksInstance.hasErrors()) {
            respond studentMarksInstance.errors, view:'edit'
            return
        }

        studentMarksInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StudentMarks.label', default: 'StudentMarks'), studentMarksInstance.id])
                redirect studentMarksInstance
            }
            '*'{ respond studentMarksInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StudentMarks studentMarksInstance) {

        if (studentMarksInstance == null) {
            notFound()
            return
        }

        studentMarksInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StudentMarks.label', default: 'StudentMarks'), studentMarksInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'studentMarksInstance.label', default: 'StudentMarks'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
