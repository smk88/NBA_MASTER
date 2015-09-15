package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CourseOfferingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CourseOffering.list(params), model:[courseOfferingInstanceCount: CourseOffering.count()]
    }

    def show(CourseOffering courseOfferingInstance) {
        respond courseOfferingInstance
    }

    def create() {
        respond new CourseOffering(params)
    }

    @Transactional
    def save(CourseOffering courseOfferingInstance) {
        if (courseOfferingInstance == null) {
            notFound()
            return
        }

        if (courseOfferingInstance.hasErrors()) {
            respond courseOfferingInstance.errors, view:'create'
            return
        }

        courseOfferingInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'courseOfferingInstance.label', default: 'CourseOffering'), courseOfferingInstance.id])
                redirect courseOfferingInstance
            }
            '*' { respond courseOfferingInstance, [status: CREATED] }
        }
    }

    def edit(CourseOffering courseOfferingInstance) {
        respond courseOfferingInstance
    }

    @Transactional
    def update(CourseOffering courseOfferingInstance) {
        if (courseOfferingInstance == null) {
            notFound()
            return
        }

        if (courseOfferingInstance.hasErrors()) {
            respond courseOfferingInstance.errors, view:'edit'
            return
        }

        courseOfferingInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CourseOffering.label', default: 'CourseOffering'), courseOfferingInstance.id])
                redirect courseOfferingInstance
            }
            '*'{ respond courseOfferingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CourseOffering courseOfferingInstance) {

        if (courseOfferingInstance == null) {
            notFound()
            return
        }

        courseOfferingInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CourseOffering.label', default: 'CourseOffering'), courseOfferingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'courseOfferingInstance.label', default: 'CourseOffering'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
