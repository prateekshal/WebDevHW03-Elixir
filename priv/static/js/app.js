!function(n){var r={};function o(t){if(r[t])return r[t].exports;var e=r[t]={i:t,l:!1,exports:{}};return n[t].call(e.exports,e,e.exports,o),e.l=!0,e.exports}o.m=n,o.c=r,o.d=function(t,e,n){o.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:n})},o.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},o.t=function(e,t){if(1&t&&(e=o(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var n=Object.create(null);if(o.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var r in e)o.d(n,r,function(t){return e[t]}.bind(null,r));return n},o.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return o.d(e,"a",e),e},o.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},o.p="",o(o.s=0)}([function(t,e,n){t.exports=n(1)},function(t,e,n){"use strict";var r,o=n(2);(r=o)&&r.__esModule;n(3)},function(t,e,n){},function(t,e,n){"use strict";function c(t,e){var n=document.createElement("input");return n.type="hidden",n.name=t,n.value=e,n}var l;l=function(){if("function"==typeof window.CustomEvent)return window.CustomEvent;function t(t,e){e=e||{bubbles:!1,cancelable:!1,detail:void 0};var n=document.createEvent("CustomEvent");return n.initCustomEvent(t,e.bubbles,e.cancelable,e.detail),n}return t.prototype=window.Event.prototype,t}(),window.addEventListener("click",function(t){for(var e,n,r,o,i,u,a=t.target;a&&a.getAttribute;){var d=new l("phoenix.link.click",{bubbles:!0,cancelable:!0});if(!a.dispatchEvent(d))return t.preventDefault(),t.stopImmediatePropagation(),!1;if(a.getAttribute("data-method"))return i=void 0,n=(e=a).getAttribute("data-to"),r=c("_method",e.getAttribute("data-method")),o=c("_csrf_token",e.getAttribute("data-csrf")),i=document.createElement("form"),u=e.getAttribute("target"),i.method="get"===e.getAttribute("data-method")?"get":"post",i.action=n,i.style.display="hidden",u&&(i.target=u),i.appendChild(o),i.appendChild(r),document.body.appendChild(i),i.submit(),t.preventDefault(),!1;a=a.parentNode}},!1),window.addEventListener("phoenix.link.click",function(t){var e=t.target.getAttribute("data-confirm");e&&!window.confirm(e)&&t.preventDefault()},!1)}]);