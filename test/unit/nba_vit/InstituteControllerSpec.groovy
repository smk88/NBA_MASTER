package nba_vit



import grails.test.mixin.*
import spock.lang.*

@TestFor(InstituteController)
@Mock(Institute)
class InstituteControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.instituteInstanceList
            model.instituteInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.instituteInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def institute = new Institute()
            institute.validate()
            controller.save(institute)

        then:"The create view is rendered again with the correct model"
            model.instituteInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            institute = new Institute(params)

            controller.save(institute)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/institute/show/1'
            controller.flash.message != null
            Institute.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def institute = new Institute(params)
            controller.show(institute)

        then:"A model is populated containing the domain instance"
            model.instituteInstance == institute
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def institute = new Institute(params)
            controller.edit(institute)

        then:"A model is populated containing the domain instance"
            model.instituteInstance == institute
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def institute = new Institute()
            institute.validate()
            controller.update(institute)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.instituteInstance == institute

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            institute = new Institute(params).save(flush: true)
            controller.update(institute)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/institute/show/$institute.id"
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
            def institute = new Institute(params).save(flush: true)

        then:"It exists"
            Institute.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(institute)

        then:"The instance is deleted"
            Institute.count() == 0
            response.redirectedUrl == '/institute/index'
            flash.message != null
    }
}
