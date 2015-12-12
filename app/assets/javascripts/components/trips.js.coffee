@Trips = React.createClass
  getInitialState: ->
    trips: @props.data
  getDefaultProps: ->
    trips: []
  render: ->
    React.DOM.div
      className: 'trips'
      React.DOM.h2
        className: 'title'
        'Trips'
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Date'
            React.DOM.th null, 'Time'
            React.DOM.th null, 'Driver'
            React.DOM.th null, 'Start Point'
            React.DOM.th null, 'Destination'
            React.DOM.th null, 'Number of Children'
        React.DOM.tbody null,
          for trip in @state.trips
            React.createElement Trip, key: trip.id, trip: trip


      