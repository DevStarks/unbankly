import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import { login } from '../../actions';


const mapDispatchToProps = (dispatch) => bindActionCreators({ login }, dispatch);


export default connect({}, mapDispatchToProps);
