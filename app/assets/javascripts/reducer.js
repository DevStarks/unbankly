import { combineReducers } from 'redux';
import { reducer as SidebarReducer } from './modules/Sidebar';

const reducer = combineReducers({
  sidebar: SidebarReducer,
});

export default reducer;
