'use strict';
Object.defineProperty(exports, "__esModule", { value: true });
const vscode = require("vscode");
const moment = require("moment");
class PythonCodingToolsExtension {
    constructor(context) {
        this._context = context;
        this.loadConfig();
    }
    updateModuleVariable(editor, document) {
        if (document.languageId != 'python') {
            return; // Not python
        }
        if (document.isClosed) {
            return; // File already closed
        }
        let pattern = '^' + this._variableName + '(\\s*)=(\\s*)([\'"])(.*)([\'"])$';
        let re = new RegExp(pattern);
        let lineNumber = null;
        let colStart = null;
        let colEnd = null;
        for (let i = 0; i < document.lineCount; i++) {
            let line = document.lineAt(i);
            if (line.isEmptyOrWhitespace) {
                continue;
            }
            let match = re.exec(line.text);
            if (match != null) {
                lineNumber = line.lineNumber;
                colStart = this._variableName.length + match[1].length + 1 + match[2].length + match[3].length;
                colEnd = colStart + match[4].length;
                break;
            }
        }
        if (!(lineNumber == null || colStart == null || colEnd == null)) {
            let rangeToReplace = new vscode.Range(new vscode.Position(lineNumber, colStart), new vscode.Position(lineNumber, colEnd));
            let textToReplace = moment().format(this._dateTimeFmt);
            editor.edit(function (edit) {
                edit.replace(rangeToReplace, textToReplace);
            });
        }
    }
    loadConfig() {
        let config = vscode.workspace.getConfiguration('python-coding-tools.update-module-variable');
        this._enableOnSave = config.get('enableOnSave');
        this._dateTimeFmt = config.get('dateTimeFmt');
        this._variableName = config.get('variableName');
    }
    isEnabledOnSave() {
        return this._enableOnSave;
    }
}
function activate(context) {
    var extension = new PythonCodingToolsExtension(context);
    context.subscriptions.push(vscode.commands.registerCommand('extension.python-coding-tools.update-module-variable', () => {
        if (!vscode.window) {
            return;
        }
        let editor = vscode.window.activeTextEditor;
        if (!editor) {
            return;
        }
        extension.updateModuleVariable(editor, editor.document);
    }));
    let onWillSave = null;
    if (extension.isEnabledOnSave()) {
        onWillSave = vscode.workspace.onWillSaveTextDocument((event) => {
            vscode.commands.executeCommand('extension.python-coding-tools.update-module-variable');
        });
        context.subscriptions.push(onWillSave);
    }
    context.subscriptions.push(vscode.workspace.onDidChangeConfiguration(() => {
        extension.loadConfig();
        if (extension.isEnabledOnSave()) {
            if (onWillSave == null) {
                context.subscriptions.push(vscode.workspace.onWillSaveTextDocument((event) => {
                    vscode.commands.executeCommand('extension.python-coding-tools.update-module-variable');
                }));
            }
        }
        else {
            if (onWillSave != null) {
                onWillSave.dispose();
                onWillSave = null;
            }
        }
    }));
}
exports.activate = activate;
function deactivate() {
}
exports.deactivate = deactivate;
//# sourceMappingURL=extension.js.map