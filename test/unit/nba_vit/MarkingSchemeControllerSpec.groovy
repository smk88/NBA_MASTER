package nba_vit



import grails.test.mixin.*
import spock.lang.*

@TestFor(MarkingSchemeController)
@Mock(MarkingScheme)
class MarkingSchemeControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.markingSchemeInstanceList
            model.markingSchemeInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.markingSchemeInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def markingScheme = new MarkingScheme()
            markingScheme.validate()
            controller.save(markingScheme)

        then:"The create view is rendered again with the correct model"
            model.markingSchemeInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            markingScheme = new MarkingScheme(params)

            controller.save(markingScheme)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/markingScheme/show/1'
            controller.flash.message != null
            MarkingScheme.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def markingScheme = new MarkingScheme(params)
            controller.show(markingScheme)

        then:"A model is populated containing the domain instance"
            model.markingSchemeInstance == markingScheme
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def markingScheme = new MarkingScheme(params)
            controller.edit(markingScheme)

        then:"A model is populated containing the domain instance"
            model.markingSchemeInstance == markingScheme
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def markingScheme = new MarkingScheme()
            markingScheme.validate()
            controller.update(markingScheme)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.markingSchemeInstance == markingScheme

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            markingScheme = new MarkingScheme(params).save(flush: true)
            controller.update(markingScheme)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/markingScheme/show/$markingScheme.id"
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
            def markingScheme = new MarkingScheme(params).save(flush: true)

        then:"It exists"
            MarkingScheme.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(markingScheme)

        then:"The instance is deleted"
            MarkingScheme.count() == 0
            response.redirectedUrl == '/markingScheme/index'
            flash.message != null
    }
}
