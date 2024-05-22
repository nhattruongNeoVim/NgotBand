const music1 = new Audio('./assets/music/nghethu1.mp3')
const music2 = new Audio('./assets/music/nghethu2.mp3')
const music3 = new Audio('./assets/music/nghethu3.mp3')
const music4 = new Audio('./assets/music/nghethu4.mp3')

const playMusic1 = document.getElementById('playMusic1').addEventListener('click', () => {
    if (music1.paused || music1.currentTime <= 0) {
        music1.play()
        document.getElementById('icon1').classList.remove('fa-circle-play')
        document.getElementById('icon1').classList.add('fa-circle-pause')
    } else {
        music1.pause()
        document.getElementById('icon1').classList.add('fa-circle-play')
        document.getElementById('icon1').classList.remove('fa-circle-pause')
    }
})

const playMusic2 = document.getElementById('playMusic2').addEventListener('click', () => {
    if (music2.paused || music2.currentTime <= 0) {
        music2.play()
        document.getElementById('icon2').classList.remove('fa-circle-play')
        document.getElementById('icon2').classList.add('fa-circle-pause')
    } else {
        music2.pause()
        document.getElementById('icon2').classList.add('fa-circle-play')
        document.getElementById('icon2').classList.remove('fa-circle-pause')
    }
})

const playMusic3 = document.getElementById('playMusic3').addEventListener('click', () => {
    if (music3.paused || music3.currentTime <= 0) {
        music3.play()
        document.getElementById('icon3').classList.remove('fa-circle-play')
        document.getElementById('icon3').classList.add('fa-circle-pause')
    } else {
        music3.pause()
        document.getElementById('icon3').classList.add('fa-circle-play')
        document.getElementById('icon3').classList.remove('fa-circle-pause')
    }
})

const playMusic4 = document.getElementById('playMusic4').addEventListener('click', () => {
    if (music4.paused || music4.currentTime <= 0) {
        music4.play()
        document.getElementById('icon4').classList.remove('fa-circle-play')
        document.getElementById('icon4').classList.add('fa-circle-pause')
    } else {
        music4.pause()
        document.getElementById('icon4').classList.add('fa-circle-play')
        document.getElementById('icon4').classList.remove('fa-circle-pause')
    }
})