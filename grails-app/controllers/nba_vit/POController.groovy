package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class POController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PO.list(params), model:[POInstanceCount: PO.count()]
    }

    def show(PO POInstance) {
        respond POInstance
    }

    def create() {
        respond new PO(params)
    }

    @Transactional
    def save(PO POInstance) {
        if (POInstance == null) {
            notFound()
            return
        }

        if (POInstance.hasErrors()) {
            respond POInstance.errors, view:'create'
            return
        }

        POInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'POInstance.label', default: 'PO'), POInstance.id])
                redirect POInstance
            }
            '*' { respond POInstance, [status: CREATED] }
        }
    }

    def edit(PO POInstance) {
        respond POInstance
    }

    @Transactional
    def update(PO POInstance) {
        if (POInstance == null) {
            notFound()
            return
        }

        if (POInstance.hasErrors()) {
            respond POInstance.errors, view:'edit'
            return
        }

        POInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PO.label', default: 'PO'), POInstance.id])
                redirect POInstance
            }
            '*'{ respond POInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PO POInstance) {

        if (POInstance == null) {
            notFound()
            return
        }

        POInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PO.label', default: 'PO'), POInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'POInstance.label', default: 'PO'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
