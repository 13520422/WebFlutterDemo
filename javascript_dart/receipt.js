function printReceipt(obj) {
    // console.log(obj);
    try {
        window.chrome.webview.postMessage(obj);
    } catch (e) {
        console.log(e);
        return false;
    }
    return true;
}

function exportFileExcel(obj) {
    // console.log(obj);
    try {
        // console.log(obj);
        window.chrome.webview.postMessage(obj);
    } catch (e) {
        console.log(e);
        return false;
    }
    return true;
}

function postMessage(obj) {
    // console.log(obj);
    try {
        window.chrome.webview.postMessage(obj);
    } catch (e) {
        console.log(e);
        return false;
    }
    return true;
}

function pdfViewer(obj) {


    try {
        var data = JSON.parse(obj)
        var content = data.data;
        var printWindow = window.open('', '_blank', 'height="100%",width="100%"');
        printWindow.document.write(content);
        printWindow.document.close();
    } catch (e) {
        console.log(e);
        return false;
    }
 
    
    return true;
}