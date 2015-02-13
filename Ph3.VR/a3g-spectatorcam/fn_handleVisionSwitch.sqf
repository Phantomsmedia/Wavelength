switch (A3G_SpectatorCamVisionMode) do {
	case 0: {false setCamUseTi 0};
	case 1: {camUseNVG true};
	case 2: {camUseNVG false; true setCamUseTi 0};
};