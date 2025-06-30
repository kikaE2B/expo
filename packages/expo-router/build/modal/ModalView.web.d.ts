import React from 'react';
import { ExtendedStackNavigationOptions } from '../layouts/StackClient';
export declare function ModalView({ routeKey, options, renderScreen, onDismiss, themeColors, }: {
    routeKey: string;
    options: ExtendedStackNavigationOptions;
    renderScreen: () => React.ReactNode;
    onDismiss: () => void;
    themeColors: {
        card: string;
        background: string;
    };
}): React.JSX.Element;
//# sourceMappingURL=ModalView.web.d.ts.map