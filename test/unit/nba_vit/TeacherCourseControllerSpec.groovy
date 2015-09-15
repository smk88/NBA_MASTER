package nba_vit



import grails.test.mixin.*
import spock.lang.*

@TestFor(TeacherCourseController)
@Mock(TeacherCourse)
class TeacherCourseControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.teacherCourseInstanceList
            model.teacherCourseInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.teacherCourseInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def teacherCourse = new TeacherCourse()
            teacherCourse.validate()
            controller.save(teacherCourse)

        then:"The create view is rendered again with the correct model"
            model.teacherCourseInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            teacherCourse = new TeacherCourse(params)

            controller.save(teacherCourse)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/teacherCourse/show/1'
            controller.flash.message != null
            TeacherCourse.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def teacherCourse = new TeacherCourse(params)
            controller.show(teacherCourse)

        then:"A model is populated containing the domain instance"
            model.teacherCourseInstance == teacherCourse
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def teacherCourse = new TeacherCourse(params)
            controller.edit(teacherCourse)

        then:"A model is populated containing the domain instance"
            model.teacherCourseInstance == teacherCourse
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def teacherCourse = new TeacherCourse()
            teacherCourse.validate()
            controller.update(teacherCourse)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.teacherCourseInstance == teacherCourse

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            teacherCourse = new TeacherCourse(params).save(flush: true)
            controller.update(teacherCourse)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/teacherCourse/show/$teacherCourse.id"
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
            def teacherCourse = new TeacherCourse(params).save(flush: true)

        then:"It exists"
            TeacherCourse.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(teacherCourse)

        then:"The instance is deleted"
            TeacherCourse.count() == 0
            response.redirectedUrl == '/teacherCourse/index'
            flash.message != null
    }
}
