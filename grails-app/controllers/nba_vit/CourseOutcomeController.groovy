package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CourseOutcomeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CourseOutcome.list(params), model:[courseOutcomeInstanceCount: CourseOutcome.count()]
    }

    def show(CourseOutcome courseOutcomeInstance) {
        respond courseOutcomeInstance
    }

    def create() {
        respond new CourseOutcome(params)
    }

    @Transactional
    def save(CourseOutcome courseOutcomeInstance) {
        if (courseOutcomeInstance == null) {
            notFound()
            return
        }

        if (courseOutcomeInstance.hasErrors()) {
            respond courseOutcomeInstance.errors, view:'create'
            return
        }

        courseOutcomeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'courseOutcomeInstance.label', default: 'CourseOutcome'), courseOutcomeInstance.id])
                redirect courseOutcomeInstance
            }
            '*' { respond courseOutcomeInstance, [status: CREATED] }
        }
    }

    def edit(CourseOutcome courseOutcomeInstance) {
        respond courseOutcomeInstance
    }

    @Transactional
    def update(CourseOutcome courseOutcomeInstance) {
        if (courseOutcomeInstance == null) {
            notFound()
            return
        }

        if (courseOutcomeInstance.hasErrors()) {
            respond courseOutcomeInstance.errors, view:'edit'
            return
        }

        courseOutcomeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CourseOutcome.label', default: 'CourseOutcome'), courseOutcomeInstance.id])
                redirect courseOutcomeInstance
            }
            '*'{ respond courseOutcomeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CourseOutcome courseOutcomeInstance) {

        if (courseOutcomeInstance == null) {
            notFound()
            return
        }

        courseOutcomeInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CourseOutcome.label', default: 'CourseOutcome'), courseOutcomeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'courseOutcomeInstance.label', default: 'CourseOutcome'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
