import React, { Component } from 'react';
import PropTypes from 'prop-types';

const SidebarListItem = ({ onClick, text, iconClass }) => {
  return (
    <li onClick={onClick}>
      <i className={iconClass} />
      <p>{text}</p>
    </li>
  );
};

SidebarListItem.propTypes = {
  onClick: PropTypes.func.isRequired,
  text: PropTypes.string.isRequired,
  iconClass: PropTypes.string.isRequired,
};


export default SidebarListItem;
