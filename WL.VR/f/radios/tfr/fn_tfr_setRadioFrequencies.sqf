// F3 - Set TFR Frequencies Function
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

tf_freq_west 	= [0 ,7, ["31","32","33","34","35","36","37","38","39"],0, tf_west_radio_code, -1, 0];
tf_freq_west_lr = [3 ,7, ["31","32","33","34","35","36","37","38","39"],0, tf_west_radio_code, -1, 0];
tf_freq_east  	= [0 ,7, ["31","32","33","34","35","36","37","38","39"],0, tf_east_radio_code, -1, 0];
tf_freq_east_lr = [3 ,7, ["31","32","33","34","35","36","37","38","39"],0, tf_east_radio_code, -1, 0];
tf_freq_guer 	= [0 ,7, ["31","32","33","34","35","36","37","38","39"],0, tf_guer_radio_code, -1, 0];
tf_freq_guer_lr = [3 ,7, ["31","32","33","34","35","36","37","38","39"],0, tf_guer_radio_code, -1, 0];

// ====================================================================================

{
_side = side leader _x;
switch (_side) do
{
	case WEST:
	{
		_x setVariable ["tf_sw_frequency", tf_freq_west, true];
		_x setVariable ["tf_lr_frequency", tf_freq_west_lr, true];
	};

	case EAST:
	{
		_x setVariable ["tf_sw_frequency", tf_freq_east, true];
		_x setVariable ["tf_lr_frequency", tf_freq_east_lr, true];
	};

	case resistance:
	{
		_x setVariable ["tf_sw_frequency", tf_freq_guer, true];
		_x setVariable ["tf_lr_frequency", tf_freq_guer_lr, true];
	};

	default
	{
		_x setVariable ["tf_sw_frequency", tf_freq_west, true];
		_x setVariable ["tf_lr_frequency", tf_freq_west_lr, true];
	};
};
} forEach f_var_groups;