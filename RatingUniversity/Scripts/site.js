function OpenUrl(link) {
    var left = screen.width / 2 - 325;
    var top = screen.height / 2 - 340;
    window.open(link, 'targetWindow',
    'toolbar=no, location=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=650, height=600, top=' + top + ',left=' + left);
}