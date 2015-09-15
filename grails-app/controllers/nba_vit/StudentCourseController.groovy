package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StudentCourseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StudentCourse.list(params), model:[studentCourseInstanceCount: StudentCourse.count()]
    }

    def show(StudentCourse studentCourseInstance) {
        respond studentCourseInstance
    }

    def create() {
        respond new StudentCourse(params)
    }

    @Transactional
    def save(StudentCourse studentCourseInstance) {
        if (studentCourseInstance == null) {
            notFound()
            return
        }

        if (studentCourseInstance.hasErrors()) {
            respond studentCourseInstance.errors, view:'create'
            return
        }

        studentCourseInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'studentCourseInstance.label', default: 'StudentCourse'), studentCourseInstance.id])
                redirect studentCourseInstance
            }
            '*' { respond studentCourseInstance, [status: CREATED] }
        }
    }

    def edit(StudentCourse studentCourseInstance) {
        respond studentCourseInstance
    }

    @Transactional
    def update(StudentCourse studentCourseInstance) {
        if (studentCourseInstance == null) {
            notFound()
            return
        }

        if (studentCourseInstance.hasErrors()) {
            respond studentCourseInstance.errors, view:'edit'
            return
        }

        studentCourseInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StudentCourse.label', default: 'StudentCourse'), studentCourseInstance.id])
                redirect studentCourseInstance
            }
            '*'{ respond studentCourseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StudentCourse studentCourseInstance) {

        if (studentCourseInstance == null) {
            notFound()
            return
        }

        studentCourseInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StudentCourse.label', default: 'StudentCourse'), studentCourseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'studentCourseInstance.label', default: 'StudentCourse'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
