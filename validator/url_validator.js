exports.check_url = async (url) => {
    let m = new URL(url)
    if (m.protocol == "https:"){
        return 1
    }
    else {
        return 0
    }
}