

document.addEventListener('DOMContentLoaded', function () {
    var autoTaskButton = document.getElementById('autoTaskButton');
  
    autoTaskButton.addEventListener('click', function () {
      chrome.tabs.query({ active: true, currentWindow: true }, function (tabs) {
        var currentTab = tabs[0];
  
        // Inject content script into the current tab
        chrome.tabs.executeScript(currentTab.id, { file: 'content.js' });
      });
    });
  });
  