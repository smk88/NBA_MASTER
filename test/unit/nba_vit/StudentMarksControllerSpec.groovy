package nba_vit



import grails.test.mixin.*
import spock.lang.*

@TestFor(StudentMarksController)
@Mock(StudentMarks)
class StudentMarksControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.studentMarksInstanceList
            model.studentMarksInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.studentMarksInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def studentMarks = new StudentMarks()
            studentMarks.validate()
            controller.save(studentMarks)

        then:"The create view is rendered again with the correct model"
            model.studentMarksInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            studentMarks = new StudentMarks(params)

            controller.save(studentMarks)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/studentMarks/show/1'
            controller.flash.message != null
            StudentMarks.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def studentMarks = new StudentMarks(params)
            controller.show(studentMarks)

        then:"A model is populated containing the domain instance"
            model.studentMarksInstance == studentMarks
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def studentMarks = new StudentMarks(params)
            controller.edit(studentMarks)

        then:"A model is populated containing the domain instance"
            model.studentMarksInstance == studentMarks
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def studentMarks = new StudentMarks()
            studentMarks.validate()
            controller.update(studentMarks)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.studentMarksInstance == studentMarks

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            studentMarks = new StudentMarks(params).save(flush: true)
            controller.update(studentMarks)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/studentMarks/show/$studentMarks.id"
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
            def studentMarks = new StudentMarks(params).save(flush: true)

        then:"It exists"
            StudentMarks.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(studentMarks)

        then:"The instance is deleted"
            StudentMarks.count() == 0
            response.redirectedUrl == '/studentMarks/index'
            flash.message != null
    }
}
