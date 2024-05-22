const song = document.getElementById("song");
const left_scroll = document.getElementById("left-scroll");
const right_scroll = document.getElementById("right-scroll");
const pop_album = document.getElementsByClassName("pop-album")[0];
const playRepeat = document.querySelector(".btn-repeat");
const randomBtn = document.querySelector(".btn-random");
const music = new Audio("./assets/music/lancuoi.wav");
const nextBtn = document.querySelector(".btn-next");
const prevBtn = document.querySelector(".btn-prev");
const durationTime = document.querySelector(".duration");
const remainingTime = document.querySelector(".remaining");
const progressBar = document.getElementById("progress");

const songs = [
    {
        id: 1,
        songName: `
            <strong>MÀU (đen trắng)</strong>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-5.png",
        file: "./assets/music/nghethu1.mp3",
    },
    {
        id: 2,
        songName: `
            <strong>MẾU MÁO (T.T)</strong>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-4.png",
        file: "./assets/music/nghethu2.mp3",
    },
    {
        id: 3,
        songName: `
            <strong>EM CÓ CHẮC KHÔNG(?)(bài ca rebound)</strong>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-6.png",
        file: "./assets/music/nghethu3.mp3",
    },
    {
        id: 4,
        songName: `
            <strong>GIẢ VỜ</strong>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-5.png",
        file: "./assets/music/nghethu4.mp3",
    },
    {
        id: 5,
        songName: `
            <strong>CHUÔNG BÁO THỨC (sáng rồi)</strong>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-1.png",
        file: "./assets/music/nghethu1.mp3",
    },
    {
        id: 6,
        songName: `
            <strong>(sau đây là) DỰ BÁO THỜI TIẾT (cho các vùng vào ...)</strong>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-4.png",
        file: "./assets/music/nghethu2.mp3",
    },
    {
        id: 7,
        songName: `
            <strong>CHUYỂN KÊNH (sản phẩm này không phải là thuốc)</strong>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-2.png",
        file: "./assets/music/nghethu3.mp3",
    },
    {
        id: 8,
        songName: `
            <strong>HẾT THỜI</strong>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-1.png",
        file: "./assets/music/nghethu4.mp3",
    },
    {
        id: 9,
        songName: `
            <strong>VÉ ĐI THIÊN ĐƯỜNG (một chiều)</strong>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-6.png",
        file: "./assets/music/nghethu1.mp3",
    },
    {
        id: 10,
        songName: `
            <strong>(tôi) ĐI TRÚ ĐÔNG</strong>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-2.png",
        file: "./assets/music/nghethu2.mp3",
    },
    {
        id: 11,
        songName: `
            <strong>(bé)</strong>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-3.png",
        file: "./assets/music/nghethu3.mp3",
    },
    {
        id: 12,
        songName: `
            <strong>LẦN CUỐI (đi bên em xót xa người ơi)</strong>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-4.png",
        file: "./assets/music/nghethu4.mp3",
    },
    {
        id: 13,
        songName: `
            <p><strong>NỨT (đôi chân đôi tay đôi mắt trái tim)</strong></p>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-1.png",
        file: "./assets/music/nghethu1.mp3",
    },
    {
        id: 14,
        songName: `
            <p><strong>RU MÌNH</strong></p>
            <p>Ngọt</p>
        `,
        poster: "./assets/img/music/album-5.png",
        file: "./assets/music/nghethu2.mp3",
    },
];

left_scroll.addEventListener("click", () => {
    pop_album.scrollLeft -= 300;
});

right_scroll.addEventListener("click", () => {
    pop_album.scrollLeft += 300;
});

Array.from(document.getElementsByClassName("mv-item")).forEach((element, i) => {
    element.getElementsByTagName("img")[0].src = songs[i].poster;
    element.getElementsByClassName("mv-item-content")[0].innerHTML =
        songs[i].songName;
});

let playMaster = document.getElementById("playMaster");
playMaster.addEventListener("click", () => {
    if (music.paused || music.currentTime <= 0) {
        music.play();
        playMaster.classList.remove("fa-play");
        playMaster.classList.add("fa-pause");
    } else {
        music.pause();
        playMaster.classList.add("fa-play");
        playMaster.classList.remove("fa-pause");
    }
});

nextBtn.addEventListener("click", () => {
    makeAllBackgrounds();
    if (isRandomMode) {
        playRandomSong();
    } else {
        currentIndex = (currentIndex + 1) % songs.length;
        updatePlayer(currentIndex);
    }
    const currentRow = document.getElementsByTagName("tr")[currentIndex];
    currentRow.style.background = "lightgray";
});

prevBtn.addEventListener("click", () => {
    makeAllBackgrounds();
    if (isRandomMode) {
        playRandomSong();
    } else {
        currentIndex = (currentIndex - 1 + songs.length) % songs.length;
        updatePlayer(currentIndex);
    }
    const currentRow = document.getElementsByTagName("tr")[currentIndex];
    currentRow.style.background = "lightgray";
});

let isRepeat = false;
playRepeat.addEventListener("click", function() {
    if (isRepeat) {
        isRepeat = false;
        playRepeat.classList.remove("active");
    } else {
        isRepeat = true;
        playRepeat.classList.toggle("active");
    }
});

const makeAllBackgrounds = () => {
    Array.from(document.getElementsByTagName("tr")).forEach((element) => {
        element.style.background = "white";
    });
};

let currentIndex = 0;
Array.from(document.getElementsByTagName("tr")).forEach((element, index) => {
    element.addEventListener("click", () => {
        makeAllBackgrounds();
        element.style.background = "lightgray";
        currentIndex = index;
        updatePlayer(currentIndex);
        if (music.paused || music.currentTime <= 0) {
            music.play();
            playMaster.classList.remove("fa-play");
            playMaster.classList.add("fa-pause");
        } else {
            music.pause();
            playMaster.classList.add("fa-play");
            playMaster.classList.remove("fa-pause");
        }
    });
});

let posterMasterPlay = document.getElementById("music-img-img");
let title = document.getElementById("title");
function updatePlayer(index) {
    const song = songs[index - 1];
    posterMasterPlay.src = song.poster;
    title.innerHTML = song.songName;
    music.src = song.file;

    const duration = music.duration;
    progressBar.max = duration;
    progressBar.value = 0;

    music.play();
}

music.addEventListener("ended", () => {
    if (isRepeat) {
        updatePlayer(currentIndex);
    } else {
        makeAllBackgrounds();
        currentIndex = (currentIndex + 1) % songs.length;
        updatePlayer(currentIndex);
        const currentRow = document.getElementsByTagName("tr")[currentIndex];
        currentRow.style.background = "lightgray";
    }
});

function formatTime(time) {
    let minutes = Math.floor(time / 60);
    let seconds = Math.floor(time % 60);
    return `${minutes}:${seconds < 10 ? "0" + seconds : seconds}`;
}

function updateTimer() {
    const currentTime = music.currentTime;
    const duration = music.duration;
    durationTime.textContent = formatTime(duration);
    remainingTime.textContent = `-${formatTime(duration - currentTime)}`;
}

let timerInterval;

function startTimer() {
    timerInterval = setInterval(updateTimer, 1000);
}

function stopTimer() {
    clearInterval(timerInterval);
}

music.addEventListener("play", startTimer);
music.addEventListener("pause", stopTimer);
music.addEventListener("ended", stopTimer);

function updateProgress() {
    const currentTime = music.currentTime;
    const duration = music.duration;
    const progress = (currentTime / duration) * 100;
    progressBar.value = progress;
}

music.addEventListener("timeupdate", updateProgress);

progressBar.addEventListener("input", () => {
    const seekTime = (progressBar.value / 100) * music.duration;
    music.currentTime = seekTime;
});

let isRandomMode = false;
randomBtn.addEventListener("click", () => {
    isRandomMode = !isRandomMode;
    randomBtn.classList.toggle("active");

    if (isRandomMode) {
        music.addEventListener("ended", playRandomSong);
    } else {
        music.removeEventListener("ended", playRandomSong);
    }
});

function playRandomSong() {
    let randomIndex;
    do {
        randomIndex = Math.floor(Math.random() * songs.length);
    } while (randomIndex === currentIndex);

    makeAllBackgrounds();
    currentIndex = randomIndex;
    updatePlayer(currentIndex);
    const currentRow = document.getElementsByTagName("tr")[currentIndex];
    currentRow.style.background = "lightgray";
}

