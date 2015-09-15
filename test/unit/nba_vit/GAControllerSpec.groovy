package nba_vit



import grails.test.mixin.*
import spock.lang.*

@TestFor(GAController)
@Mock(GA)
class GAControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.GAInstanceList
            model.GAInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.GAInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def GA = new GA()
            GA.validate()
            controller.save(GA)

        then:"The create view is rendered again with the correct model"
            model.GAInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            GA = new GA(params)

            controller.save(GA)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/GA/show/1'
            controller.flash.message != null
            GA.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def GA = new GA(params)
            controller.show(GA)

        then:"A model is populated containing the domain instance"
            model.GAInstance == GA
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def GA = new GA(params)
            controller.edit(GA)

        then:"A model is populated containing the domain instance"
            model.GAInstance == GA
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def GA = new GA()
            GA.validate()
            controller.update(GA)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.GAInstance == GA

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            GA = new GA(params).save(flush: true)
            controller.update(GA)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/GA/show/$GA.id"
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
            def GA = new GA(params).save(flush: true)

        then:"It exists"
            GA.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(GA)

        then:"The instance is deleted"
            GA.count() == 0
            response.redirectedUrl == '/GA/index'
            flash.message != null
    }
}
