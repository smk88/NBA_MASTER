package nba_vit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TeacherCourseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TeacherCourse.list(params), model:[teacherCourseInstanceCount: TeacherCourse.count()]
    }

    def show(TeacherCourse teacherCourseInstance) {
        respond teacherCourseInstance
    }

    def create() {
        respond new TeacherCourse(params)
    }

    @Transactional
    def save(TeacherCourse teacherCourseInstance) {
        if (teacherCourseInstance == null) {
            notFound()
            return
        }

        if (teacherCourseInstance.hasErrors()) {
            respond teacherCourseInstance.errors, view:'create'
            return
        }

        teacherCourseInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'teacherCourseInstance.label', default: 'TeacherCourse'), teacherCourseInstance.id])
                redirect teacherCourseInstance
            }
            '*' { respond teacherCourseInstance, [status: CREATED] }
        }
    }

    def edit(TeacherCourse teacherCourseInstance) {
        respond teacherCourseInstance
    }

    @Transactional
    def update(TeacherCourse teacherCourseInstance) {
        if (teacherCourseInstance == null) {
            notFound()
            return
        }

        if (teacherCourseInstance.hasErrors()) {
            respond teacherCourseInstance.errors, view:'edit'
            return
        }

        teacherCourseInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TeacherCourse.label', default: 'TeacherCourse'), teacherCourseInstance.id])
                redirect teacherCourseInstance
            }
            '*'{ respond teacherCourseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TeacherCourse teacherCourseInstance) {

        if (teacherCourseInstance == null) {
            notFound()
            return
        }

        teacherCourseInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TeacherCourse.label', default: 'TeacherCourse'), teacherCourseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'teacherCourseInstance.label', default: 'TeacherCourse'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
