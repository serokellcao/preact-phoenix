import { h, Component, render } from 'preact'
import socket from "./socket"

class ChannelDemo extends Component {
  constructor() {
    super()
    this.state = { status: "Initializing" }
  }
  componentDidMount() {
    let channel =
    this.setState( { status: "Going",
                     channel: socket.channel("location:C-100", {}) } )
  }
  onChannelOpen() {
    this.state.channel.join()
      .receive("ok", resp       => { this.setState( {status: "Connected"} ) })
      .receive("error", reasons => { this.setState( {status: "Rejected with " + reasons} ) })
      .receive("timeout", ()    => { this.setState( {status: "Networking issue"} ) })
  }
  componentWillUnmount() {
    this.state.channel.leave()
  }
  render(props, state) {
    if (state.status == 'Going') {
      this.onChannelOpen()
    }
    return h('div', null, [ "Status of " + props.team, h('div', {style: 'color: red;'}, state.status) ])
  }
}

render(h(ChannelDemo, {team: 'Team Test!'}), document.getElementById('app_root'))
