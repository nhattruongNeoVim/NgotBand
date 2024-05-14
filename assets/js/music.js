let left_scroll = document.getElementById("left-scroll")
let right_scroll = document.getElementById("right-scroll")
let pop_album = document.getElementsByClassName("pop-album")[0];

left_scroll.addEventListener("click", () => {
    pop_album.scrollLeft -= 300;
});

right_scroll.addEventListener("click", () => {
    pop_album.scrollLeft += 300;
});

