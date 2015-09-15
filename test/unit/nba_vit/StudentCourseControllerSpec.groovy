package nba_vit



import grails.test.mixin.*
import spock.lang.*

@TestFor(StudentCourseController)
@Mock(StudentCourse)
class StudentCourseControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.studentCourseInstanceList
            model.studentCourseInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.studentCourseInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def studentCourse = new StudentCourse()
            studentCourse.validate()
            controller.save(studentCourse)

        then:"The create view is rendered again with the correct model"
            model.studentCourseInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            studentCourse = new StudentCourse(params)

            controller.save(studentCourse)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/studentCourse/show/1'
            controller.flash.message != null
            StudentCourse.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def studentCourse = new StudentCourse(params)
            controller.show(studentCourse)

        then:"A model is populated containing the domain instance"
            model.studentCourseInstance == studentCourse
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def studentCourse = new StudentCourse(params)
            controller.edit(studentCourse)

        then:"A model is populated containing the domain instance"
            model.studentCourseInstance == studentCourse
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def studentCourse = new StudentCourse()
            studentCourse.validate()
            controller.update(studentCourse)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.studentCourseInstance == studentCourse

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            studentCourse = new StudentCourse(params).save(flush: true)
            controller.update(studentCourse)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/studentCourse/show/$studentCourse.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            status == 404

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def studentCourse = new StudentCourse(params).save(flush: true)

        then:"It exists"
            StudentCourse.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(studentCourse)

        then:"The instance is deleted"
            StudentCourse.count() == 0
            response.redirectedUrl == '/studentCourse/index'
            flash.message != null
    }
}
