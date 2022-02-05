import { ShowOptions, Toast } from '@capacitor/toast';


export const applyPorts = (ports: any) => {
    ports.capacitorToastShow.subscribe(async (options: ShowOptions) => {
        await Toast.show(options);
    });
};