package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MarkingSchemeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MarkingScheme.list(params), model:[markingSchemeInstanceCount: MarkingScheme.count()]
    }

    def show(MarkingScheme markingSchemeInstance) {
        respond markingSchemeInstance
    }

    def create() {
        respond new MarkingScheme(params)
    }

    @Transactional
    def save(MarkingScheme markingSchemeInstance) {
        if (markingSchemeInstance == null) {
            notFound()
            return
        }

        if (markingSchemeInstance.hasErrors()) {
            respond markingSchemeInstance.errors, view:'create'
            return
        }

        markingSchemeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'markingSchemeInstance.label', default: 'MarkingScheme'), markingSchemeInstance.id])
                redirect markingSchemeInstance
            }
            '*' { respond markingSchemeInstance, [status: CREATED] }
        }
    }

    def edit(MarkingScheme markingSchemeInstance) {
        respond markingSchemeInstance
    }

    @Transactional
    def update(MarkingScheme markingSchemeInstance) {
        if (markingSchemeInstance == null) {
            notFound()
            return
        }

        if (markingSchemeInstance.hasErrors()) {
            respond markingSchemeInstance.errors, view:'edit'
            return
        }

        markingSchemeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MarkingScheme.label', default: 'MarkingScheme'), markingSchemeInstance.id])
                redirect markingSchemeInstance
            }
            '*'{ respond markingSchemeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MarkingScheme markingSchemeInstance) {

        if (markingSchemeInstance == null) {
            notFound()
            return
        }

        markingSchemeInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MarkingScheme.label', default: 'MarkingScheme'), markingSchemeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'markingSchemeInstance.label', default: 'MarkingScheme'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
