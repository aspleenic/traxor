require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { event_city: @event.event_city, event_country: @event.event_country, event_impact_score: @event.event_impact_score, event_location: @event.event_location, event_name: @event.event_name, event_physical_goods_cost: @event.event_physical_goods_cost, event_sponsorship_cost: @event.event_sponsorship_cost, event_total_cost: @event.event_total_cost, event_tracking_url: @event.event_tracking_url, event_travel_cost: @event.event_travel_cost, event_url: @event.event_url } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { event_city: @event.event_city, event_country: @event.event_country, event_impact_score: @event.event_impact_score, event_location: @event.event_location, event_name: @event.event_name, event_physical_goods_cost: @event.event_physical_goods_cost, event_sponsorship_cost: @event.event_sponsorship_cost, event_total_cost: @event.event_total_cost, event_tracking_url: @event.event_tracking_url, event_travel_cost: @event.event_travel_cost, event_url: @event.event_url } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
