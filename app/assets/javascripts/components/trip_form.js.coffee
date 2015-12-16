@TripForm = React.createClass
    getInitialState: ->
      date: ''
      time: ''
      driver: ''
      start_point: ''
      destination: ''
      number_of_children: ''
    render: ->
      React.DOM.form
        className: 'form-inline'
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'date'
            className: 'form-control'
            placeholder: 'Date'
            name: 'date'
            value: @state.date
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Time'
            name: 'time'
            value: @state.time
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Driver'
            name: 'driver'
            value: @state.driver
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Start Point'
            name: 'start_point'
            value: @state.start_point
            onChange: @handleChange
         React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'integer'
            className: 'form-control'
            placeholder: 'Number of Children'
            name: 'number_of_children'
            value: @state.number_of_children
            onChange: @handleChange           
        React.DOM.button
          type: 'submit'
          className: 'btn btn-primary'
          disabled: !@valid()
          'Create record'

      handleChange: (e) ->
      name = e.target.name
      @setState "#{ name }": e.target.value

       valid: ->
      @state.date && @state.driver && @state.number_of_children