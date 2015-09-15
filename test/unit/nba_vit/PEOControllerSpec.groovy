package nba_vit



import grails.test.mixin.*
import spock.lang.*

@TestFor(PEOController)
@Mock(PEO)
class PEOControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.PEOInstanceList
            model.PEOInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.PEOInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def PEO = new PEO()
            PEO.validate()
            controller.save(PEO)

        then:"The create view is rendered again with the correct model"
            model.PEOInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            PEO = new PEO(params)

            controller.save(PEO)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/PEO/show/1'
            controller.flash.message != null
            PEO.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def PEO = new PEO(params)
            controller.show(PEO)

        then:"A model is populated containing the domain instance"
            model.PEOInstance == PEO
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def PEO = new PEO(params)
            controller.edit(PEO)

        then:"A model is populated containing the domain instance"
            model.PEOInstance == PEO
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def PEO = new PEO()
            PEO.validate()
            controller.update(PEO)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.PEOInstance == PEO

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            PEO = new PEO(params).save(flush: true)
            controller.update(PEO)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/PEO/show/$PEO.id"
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
            def PEO = new PEO(params).save(flush: true)

        then:"It exists"
            PEO.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(PEO)

        then:"The instance is deleted"
            PEO.count() == 0
            response.redirectedUrl == '/PEO/index'
            flash.message != null
    }
}
