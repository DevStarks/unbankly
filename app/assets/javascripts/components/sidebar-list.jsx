import React, { Component } from 'react';
import PropTypes from 'prop-types';
import SidebarListItem from './sidebar-list-item';


class SidebarList extends Component {
  renderListItem(item) {
    return (
      <SidebarListItem {...item} />
    );
  }

  render() {
    return (
      <section className='sidebar-list'>
        <h2>{this.props.header}</h2>

        <button className='sidebar-list-button' />

        <ul>{this.props.items.map(this.renderListItem)}</ul>
      </section>
    );
  }
}

SidebarList.propTypes = {
  header: PropTypes.string.isRequired,
  items: PropTypes.array.isRequired
};

SidebarList.defaultProps = {
  items: []
};


export default SidebarList;
