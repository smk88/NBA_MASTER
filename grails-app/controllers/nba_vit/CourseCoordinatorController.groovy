package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CourseCoordinatorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CourseCoordinator.list(params), model:[courseCoordinatorInstanceCount: CourseCoordinator.count()]
    }

    def show(CourseCoordinator courseCoordinatorInstance) {
        respond courseCoordinatorInstance
    }

    def create() {
        respond new CourseCoordinator(params)
    }

    @Transactional
    def save(CourseCoordinator courseCoordinatorInstance) {
        if (courseCoordinatorInstance == null) {
            notFound()
            return
        }

        if (courseCoordinatorInstance.hasErrors()) {
            respond courseCoordinatorInstance.errors, view:'create'
            return
        }

        courseCoordinatorInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'courseCoordinatorInstance.label', default: 'CourseCoordinator'), courseCoordinatorInstance.id])
                redirect courseCoordinatorInstance
            }
            '*' { respond courseCoordinatorInstance, [status: CREATED] }
        }
    }

    def edit(CourseCoordinator courseCoordinatorInstance) {
        respond courseCoordinatorInstance
    }

    @Transactional
    def update(CourseCoordinator courseCoordinatorInstance) {
        if (courseCoordinatorInstance == null) {
            notFound()
            return
        }

        if (courseCoordinatorInstance.hasErrors()) {
            respond courseCoordinatorInstance.errors, view:'edit'
            return
        }

        courseCoordinatorInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CourseCoordinator.label', default: 'CourseCoordinator'), courseCoordinatorInstance.id])
                redirect courseCoordinatorInstance
            }
            '*'{ respond courseCoordinatorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CourseCoordinator courseCoordinatorInstance) {

        if (courseCoordinatorInstance == null) {
            notFound()
            return
        }

        courseCoordinatorInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CourseCoordinator.label', default: 'CourseCoordinator'), courseCoordinatorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'courseCoordinatorInstance.label', default: 'CourseCoordinator'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
