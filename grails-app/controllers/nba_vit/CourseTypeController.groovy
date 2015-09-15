package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CourseTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CourseType.list(params), model:[courseTypeInstanceCount: CourseType.count()]
    }

    def show(CourseType courseTypeInstance) {
        respond courseTypeInstance
    }

    def create() {
        respond new CourseType(params)
    }

    @Transactional
    def save(CourseType courseTypeInstance) {
        if (courseTypeInstance == null) {
            notFound()
            return
        }

        if (courseTypeInstance.hasErrors()) {
            respond courseTypeInstance.errors, view:'create'
            return
        }

        courseTypeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'courseTypeInstance.label', default: 'CourseType'), courseTypeInstance.id])
                redirect courseTypeInstance
            }
            '*' { respond courseTypeInstance, [status: CREATED] }
        }
    }

    def edit(CourseType courseTypeInstance) {
        respond courseTypeInstance
    }

    @Transactional
    def update(CourseType courseTypeInstance) {
        if (courseTypeInstance == null) {
            notFound()
            return
        }

        if (courseTypeInstance.hasErrors()) {
            respond courseTypeInstance.errors, view:'edit'
            return
        }

        courseTypeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CourseType.label', default: 'CourseType'), courseTypeInstance.id])
                redirect courseTypeInstance
            }
            '*'{ respond courseTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CourseType courseTypeInstance) {

        if (courseTypeInstance == null) {
            notFound()
            return
        }

        courseTypeInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CourseType.label', default: 'CourseType'), courseTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'courseTypeInstance.label', default: 'CourseType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
