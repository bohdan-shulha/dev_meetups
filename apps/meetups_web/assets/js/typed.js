import Typed from 'typed.js';

const logoOpt = {
    strings: [
        '<span class="logo--color-primary">Dev.</span><span class="logo--color-secondary">meetups()</span>'
    ],
    typeSpeed: 100,
    showCursor: false
};

const meetingOpt = {
    strings: ["registration"],
    typeSpeed: 100,
    showCursor: false
};

const aboutUsOpt = {
    strings: ["about us"],
    typeSpeed: 100,
    showCursor: false
};

const msgGregOpt = {
    strings: ["Hey guys! let's go at Dev meetup!"],
    typeSpeed: 40,
    showCursor: false
};

const logo = new Typed(".js-logo", logoOpt);

setTimeout(() => {
    const meeting = new Typed(".js-nav__link-meetings", meetingOpt);
}, 2500);

setTimeout(() => {
    const aboutUs = new Typed(".js-nav__link-about-us", aboutUsOpt);
}, 4000);

setTimeout(() => {
    const msgGreg = new Typed(".js-greg-msg-text", msgGregOpt);
}, 4200);
