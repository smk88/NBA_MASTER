package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class InstituteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Institute.list(params), model:[instituteInstanceCount: Institute.count()]
    }

    def show(Institute instituteInstance) {
        respond instituteInstance
    }

    def create() {
        respond new Institute(params)
    }

    @Transactional
    def save(Institute instituteInstance) {
        if (instituteInstance == null) {
            notFound()
            return
        }

        if (instituteInstance.hasErrors()) {
            respond instituteInstance.errors, view:'create'
            return
        }

        instituteInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'instituteInstance.label', default: 'Institute'), instituteInstance.id])
                redirect instituteInstance
            }
            '*' { respond instituteInstance, [status: CREATED] }
        }
    }

    def edit(Institute instituteInstance) {
        respond instituteInstance
    }

    @Transactional
    def update(Institute instituteInstance) {
        if (instituteInstance == null) {
            notFound()
            return
        }

        if (instituteInstance.hasErrors()) {
            respond instituteInstance.errors, view:'edit'
            return
        }

        instituteInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Institute.label', default: 'Institute'), instituteInstance.id])
                redirect instituteInstance
            }
            '*'{ respond instituteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Institute instituteInstance) {

        if (instituteInstance == null) {
            notFound()
            return
        }

        instituteInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Institute.label', default: 'Institute'), instituteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'instituteInstance.label', default: 'Institute'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
