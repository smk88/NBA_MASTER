package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GAController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GA.list(params), model:[GAInstanceCount: GA.count()]
    }

    def show(GA GAInstance) {
        respond GAInstance
    }

    def create() {
        respond new GA(params)
    }

    @Transactional
    def save(GA GAInstance) {
        if (GAInstance == null) {
            notFound()
            return
        }

        if (GAInstance.hasErrors()) {
            respond GAInstance.errors, view:'create'
            return
        }

        GAInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'GAInstance.label', default: 'GA'), GAInstance.id])
                redirect GAInstance
            }
            '*' { respond GAInstance, [status: CREATED] }
        }
    }

    def edit(GA GAInstance) {
        respond GAInstance
    }

    @Transactional
    def update(GA GAInstance) {
        if (GAInstance == null) {
            notFound()
            return
        }

        if (GAInstance.hasErrors()) {
            respond GAInstance.errors, view:'edit'
            return
        }

        GAInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GA.label', default: 'GA'), GAInstance.id])
                redirect GAInstance
            }
            '*'{ respond GAInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GA GAInstance) {

        if (GAInstance == null) {
            notFound()
            return
        }

        GAInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GA.label', default: 'GA'), GAInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'GAInstance.label', default: 'GA'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
