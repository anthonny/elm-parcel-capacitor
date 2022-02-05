// @ts-ignore
import { Elm } from "../src/Main.elm";
import { applyPorts } from './capacitor';

const app = Elm.Main.init({
    flags: {},
});

applyPorts(app.ports);