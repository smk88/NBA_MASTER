package nba_vit



import grails.test.mixin.*
import spock.lang.*

@TestFor(CourseOutcomeController)
@Mock(CourseOutcome)
class CourseOutcomeControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.courseOutcomeInstanceList
            model.courseOutcomeInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.courseOutcomeInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def courseOutcome = new CourseOutcome()
            courseOutcome.validate()
            controller.save(courseOutcome)

        then:"The create view is rendered again with the correct model"
            model.courseOutcomeInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            courseOutcome = new CourseOutcome(params)

            controller.save(courseOutcome)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/courseOutcome/show/1'
            controller.flash.message != null
            CourseOutcome.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def courseOutcome = new CourseOutcome(params)
            controller.show(courseOutcome)

        then:"A model is populated containing the domain instance"
            model.courseOutcomeInstance == courseOutcome
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def courseOutcome = new CourseOutcome(params)
            controller.edit(courseOutcome)

        then:"A model is populated containing the domain instance"
            model.courseOutcomeInstance == courseOutcome
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def courseOutcome = new CourseOutcome()
            courseOutcome.validate()
            controller.update(courseOutcome)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.courseOutcomeInstance == courseOutcome

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            courseOutcome = new CourseOutcome(params).save(flush: true)
            controller.update(courseOutcome)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/courseOutcome/show/$courseOutcome.id"
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
            def courseOutcome = new CourseOutcome(params).save(flush: true)

        then:"It exists"
            CourseOutcome.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(courseOutcome)

        then:"The instance is deleted"
            CourseOutcome.count() == 0
            response.redirectedUrl == '/courseOutcome/index'
            flash.message != null
    }
}
