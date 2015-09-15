package nba_vit



import grails.test.mixin.*
import spock.lang.*

@TestFor(CoMarksMappingController)
@Mock(CoMarksMapping)
class CoMarksMappingControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.coMarksMappingInstanceList
            model.coMarksMappingInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.coMarksMappingInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def coMarksMapping = new CoMarksMapping()
            coMarksMapping.validate()
            controller.save(coMarksMapping)

        then:"The create view is rendered again with the correct model"
            model.coMarksMappingInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            coMarksMapping = new CoMarksMapping(params)

            controller.save(coMarksMapping)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/coMarksMapping/show/1'
            controller.flash.message != null
            CoMarksMapping.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def coMarksMapping = new CoMarksMapping(params)
            controller.show(coMarksMapping)

        then:"A model is populated containing the domain instance"
            model.coMarksMappingInstance == coMarksMapping
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def coMarksMapping = new CoMarksMapping(params)
            controller.edit(coMarksMapping)

        then:"A model is populated containing the domain instance"
            model.coMarksMappingInstance == coMarksMapping
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def coMarksMapping = new CoMarksMapping()
            coMarksMapping.validate()
            controller.update(coMarksMapping)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.coMarksMappingInstance == coMarksMapping

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            coMarksMapping = new CoMarksMapping(params).save(flush: true)
            controller.update(coMarksMapping)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/coMarksMapping/show/$coMarksMapping.id"
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
            def coMarksMapping = new CoMarksMapping(params).save(flush: true)

        then:"It exists"
            CoMarksMapping.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(coMarksMapping)

        then:"The instance is deleted"
            CoMarksMapping.count() == 0
            response.redirectedUrl == '/coMarksMapping/index'
            flash.message != null
    }
}
