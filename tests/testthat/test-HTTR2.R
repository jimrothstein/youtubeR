test-HTTR2.R

## PURPOSE
With youtubeR as a guide,  can I get the same using only HTTR2 functions?
(if yes, then try with nectar)


get_test_playlists <- function(channelId,
                               max_results = 100,
                               client = yt_construct_client(),
                               cache_disk = getOption("yt_cache_disk", FALSE),
                               cache_key = getOption("yt_cache_key", NULL),
                               token = NULL) {}

max_results = 100
channelId = "2"
client = yt_construct_client()
cache_disk = getOption("yt_cache_disk", FALSE)
cache_key = getOption("yt_cache_key", NULL)
token=NULL


playlistId <- "PLbcglKxZP5PMU2rNPBpYIzLTgzd5aOHw2"

  res <- yt_call_api(
    endpoint = "playlists",
    query = list(
      part = "id, snippet, contentDetails",
      fields = "items(id, snippet(title, description))",
      maxResults = max_results,
      channelId = channelId
    ),
    client = client,
    cache_disk = cache_disk,
    cache_key = cache_key,
    token = token
  )

  #   if (F) {
  #     if (length(res$items)) {
  #       #   return(purrr::map(res$items, purrr::pluck, "contentDetails"))
  #       # return(purrr::map(res$items, purrr::pluck, "snippet"))
  #       return(purrr::map(res$items, unlist, recursive = F))
  #     } else {
  #       return(NULL) # nocov
  #     }
  #   }

