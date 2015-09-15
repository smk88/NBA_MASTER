package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PEOController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PEO.list(params), model:[PEOInstanceCount: PEO.count()]
    }

    def show(PEO PEOInstance) {
        respond PEOInstance
    }

    def create() {
        respond new PEO(params)
    }

    @Transactional
    def save(PEO PEOInstance) {
        if (PEOInstance == null) {
            notFound()
            return
        }

        if (PEOInstance.hasErrors()) {
            respond PEOInstance.errors, view:'create'
            return
        }

        PEOInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'PEOInstance.label', default: 'PEO'), PEOInstance.id])
                redirect PEOInstance
            }
            '*' { respond PEOInstance, [status: CREATED] }
        }
    }

    def edit(PEO PEOInstance) {
        respond PEOInstance
    }

    @Transactional
    def update(PEO PEOInstance) {
        if (PEOInstance == null) {
            notFound()
            return
        }

        if (PEOInstance.hasErrors()) {
            respond PEOInstance.errors, view:'edit'
            return
        }

        PEOInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PEO.label', default: 'PEO'), PEOInstance.id])
                redirect PEOInstance
            }
            '*'{ respond PEOInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PEO PEOInstance) {

        if (PEOInstance == null) {
            notFound()
            return
        }

        PEOInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PEO.label', default: 'PEO'), PEOInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'PEOInstance.label', default: 'PEO'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
