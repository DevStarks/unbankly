import { combineReducers } from 'redux';
import { reducer as SidebarReducer } from '../Sidebar';

const reducer = combineReducers({
  sidebar: SidebarReducer,
});

export default reducer;
