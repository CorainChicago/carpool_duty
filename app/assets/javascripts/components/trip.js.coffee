@Trip = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.trip.date
      React.DOM.td null, @props.trip.time
      React.DOM.td null, @props.trip.driver
      React.DOM.td null, @props.trip.start_point
      React.DOM.td null, @props.trip.destination
      React.DOM.td null, childrenFormat(@props.trip.number_of_children)