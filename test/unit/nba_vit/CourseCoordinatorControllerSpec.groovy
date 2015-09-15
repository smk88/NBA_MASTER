package nba_vit



import grails.test.mixin.*
import spock.lang.*

@TestFor(CourseCoordinatorController)
@Mock(CourseCoordinator)
class CourseCoordinatorControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.courseCoordinatorInstanceList
            model.courseCoordinatorInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.courseCoordinatorInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def courseCoordinator = new CourseCoordinator()
            courseCoordinator.validate()
            controller.save(courseCoordinator)

        then:"The create view is rendered again with the correct model"
            model.courseCoordinatorInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            courseCoordinator = new CourseCoordinator(params)

            controller.save(courseCoordinator)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/courseCoordinator/show/1'
            controller.flash.message != null
            CourseCoordinator.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def courseCoordinator = new CourseCoordinator(params)
            controller.show(courseCoordinator)

        then:"A model is populated containing the domain instance"
            model.courseCoordinatorInstance == courseCoordinator
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def courseCoordinator = new CourseCoordinator(params)
            controller.edit(courseCoordinator)

        then:"A model is populated containing the domain instance"
            model.courseCoordinatorInstance == courseCoordinator
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def courseCoordinator = new CourseCoordinator()
            courseCoordinator.validate()
            controller.update(courseCoordinator)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.courseCoordinatorInstance == courseCoordinator

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            courseCoordinator = new CourseCoordinator(params).save(flush: true)
            controller.update(courseCoordinator)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/courseCoordinator/show/$courseCoordinator.id"
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
            def courseCoordinator = new CourseCoordinator(params).save(flush: true)

        then:"It exists"
            CourseCoordinator.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(courseCoordinator)

        then:"The instance is deleted"
            CourseCoordinator.count() == 0
            response.redirectedUrl == '/courseCoordinator/index'
            flash.message != null
    }
}
