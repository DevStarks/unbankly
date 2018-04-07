import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import { login, signup } from '../../actions';


const mapDispatchToProps = (dispatch) => bindActionCreators({ login, signup }, dispatch);

export default connect(null, mapDispatchToProps);
