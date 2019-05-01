const imgGregRun = document.querySelector(".js-g-greg--run");
const imgGregStand = document.querySelector(".js-g-greg--stand");
const msgGreg = document.querySelector(".js-greg-msg");
const btnArrowDown = document.querySelector(".js-btn-arrow-down");
const terminalResponse = document.querySelector(".js-terminal__inner-response");
const terminalRequest = document.querySelector(".js-terminal-msg");
const showBtn = document.querySelector(".js-show-schedule-btn");
const schedule = document.querySelector(".js-schedule");

const terminalRequestOpt = {
    strings: ["show the nearest meetups"],
    typeSpeed: 65,
    showCursor: false
};

let isFirstLoad = true;

btnArrowDown.addEventListener("click", () => {
    scrollBy({ top: window.innerHeight, behavior: "smooth" });

    if (isFirstLoad) {
        terminalRequest.textContent = "";
        setTimeout(() => {
            const getSchedule = new Typed(".js-terminal-msg", terminalRequestOpt);
        }, 1000);
        setTimeout(() => {
            terminalResponse.classList.add("d-block");
            terminalResponse.classList.remove("d-none");
        }, 3500);
    }

    isFirstLoad = false;
});

window.onscroll = function () {
    const scrolled = window.pageYOffset || document.documentElement.scrollTop;

    if (isFirstLoad) {
        if (scrolled > window.innerHeight * 0.6) {
            terminalRequest.textContent = "";
            setTimeout(() => {
                const getSchedule = new Typed(".js-terminal-msg", terminalRequestOpt);
            }, 1000);
            setTimeout(() => {
                terminalResponse.classList.add("d-block");
                terminalResponse.classList.remove("d-none");
            }, 3500);

            isFirstLoad = false;
        }
    }
};

showBtn.addEventListener("click", () => {
    schedule.classList.toggle("d-block");
});

setTimeout(() => {
    btnArrowDown.classList.remove("hide");
    btnArrowDown.classList.add("show");
}, 6000);

setTimeout(() => {
    imgGregRun.classList.add("run");
}, 1000);

setTimeout(() => {
    imgGregRun.classList.add("d-none");
    imgGregStand.classList.add("d-block");
    imgGregStand.classList.remove("d-none");
}, 3000);

setTimeout(() => {
    msgGreg.classList.add("show");
    msgGreg.classList.remove("hide");
}, 3200);
