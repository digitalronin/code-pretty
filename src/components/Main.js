import React, { Component } from 'react';
import SourcePanel from './SourcePanel';
import FormattedPanel from './FormattedPanel';

class Main extends Component {
  render() {
    return (
      <div>
        Hello from Main
        <SourcePanel />
        <FormattedPanel />
      </div>
    );
  }
}

export default Main;

