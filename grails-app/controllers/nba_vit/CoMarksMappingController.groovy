package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CoMarksMappingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CoMarksMapping.list(params), model:[coMarksMappingInstanceCount: CoMarksMapping.count()]
    }

    def show(CoMarksMapping coMarksMappingInstance) {
        respond coMarksMappingInstance
    }

    def create() {
        respond new CoMarksMapping(params)
    }

    @Transactional
    def save(CoMarksMapping coMarksMappingInstance) {
        if (coMarksMappingInstance == null) {
            notFound()
            return
        }

        if (coMarksMappingInstance.hasErrors()) {
            respond coMarksMappingInstance.errors, view:'create'
            return
        }

        coMarksMappingInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'coMarksMappingInstance.label', default: 'CoMarksMapping'), coMarksMappingInstance.id])
                redirect coMarksMappingInstance
            }
            '*' { respond coMarksMappingInstance, [status: CREATED] }
        }
    }

    def edit(CoMarksMapping coMarksMappingInstance) {
        respond coMarksMappingInstance
    }

    @Transactional
    def update(CoMarksMapping coMarksMappingInstance) {
        if (coMarksMappingInstance == null) {
            notFound()
            return
        }

        if (coMarksMappingInstance.hasErrors()) {
            respond coMarksMappingInstance.errors, view:'edit'
            return
        }

        coMarksMappingInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CoMarksMapping.label', default: 'CoMarksMapping'), coMarksMappingInstance.id])
                redirect coMarksMappingInstance
            }
            '*'{ respond coMarksMappingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CoMarksMapping coMarksMappingInstance) {

        if (coMarksMappingInstance == null) {
            notFound()
            return
        }

        coMarksMappingInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CoMarksMapping.label', default: 'CoMarksMapping'), coMarksMappingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'coMarksMappingInstance.label', default: 'CoMarksMapping'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
