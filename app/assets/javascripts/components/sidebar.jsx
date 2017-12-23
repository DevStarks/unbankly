import React from 'react';
import PropTypes from 'prop-types';
import SidebarList from './sidebar-list';

const Sidebar = function () {
  return (
    <aside className='sidebar'>
      <SidebarList header='Owes me money' items={[]}/>

    </aside>
  );
};


export default Sidebar;
