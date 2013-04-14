require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get index as json" do
  end
  
  test "should get index with filter query params" do
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, :event => @event.attributes
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, :id => @event.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @event.to_param
    assert_response :success
  end

  test "should update event" do
    put :update, :id => @event.to_param, :event => @event.attributes
    assert_redirected_to event_path(assigns(:event))
  end

  test "should update event as json" do
  end
  
  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, :id => @event.to_param
    end

    assert_redirected_to events_path
  end
  
  test "should get event" do
    get :index, { :start => DateTime.strptime("2013-04-14 00:00:00", "%Y-%m-%d %H:%M:%S").to_time.to_i, :end => DateTime.strptime("2013-04-21 00:00:00", "%Y-%m-%d %H:%M:%S").to_time.to_i}
    assert assigns['events'].count > 0
  end
end
