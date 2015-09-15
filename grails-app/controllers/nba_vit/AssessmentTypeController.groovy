package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AssessmentTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AssessmentType.list(params), model:[assessmentTypeInstanceCount: AssessmentType.count()]
    }

    def show(AssessmentType assessmentTypeInstance) {
        respond assessmentTypeInstance
    }

    def create() {
        respond new AssessmentType(params)
    }

    @Transactional
    def save(AssessmentType assessmentTypeInstance) {
        if (assessmentTypeInstance == null) {
            notFound()
            return
        }

        if (assessmentTypeInstance.hasErrors()) {
            respond assessmentTypeInstance.errors, view:'create'
            return
        }

        assessmentTypeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'assessmentTypeInstance.label', default: 'AssessmentType'), assessmentTypeInstance.id])
                redirect assessmentTypeInstance
            }
            '*' { respond assessmentTypeInstance, [status: CREATED] }
        }
    }

    def edit(AssessmentType assessmentTypeInstance) {
        respond assessmentTypeInstance
    }

    @Transactional
    def update(AssessmentType assessmentTypeInstance) {
        if (assessmentTypeInstance == null) {
            notFound()
            return
        }

        if (assessmentTypeInstance.hasErrors()) {
            respond assessmentTypeInstance.errors, view:'edit'
            return
        }

        assessmentTypeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AssessmentType.label', default: 'AssessmentType'), assessmentTypeInstance.id])
                redirect assessmentTypeInstance
            }
            '*'{ respond assessmentTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AssessmentType assessmentTypeInstance) {

        if (assessmentTypeInstance == null) {
            notFound()
            return
        }

        assessmentTypeInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AssessmentType.label', default: 'AssessmentType'), assessmentTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'assessmentTypeInstance.label', default: 'AssessmentType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
