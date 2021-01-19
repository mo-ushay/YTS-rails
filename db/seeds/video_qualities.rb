# video_quality = {
#   '4K': VideoQuality.find_by_resolution('4K'),
#   '1080p': VideoQuality.find_by_resolution('1080p'),
#   '720p': VideoQuality.find_by_resolution('720p'),
#   '480p': VideoQuality.find_by_resolution
# }

VideoQuality.where(resolution: '4K').find_or_create_by!(resolution: '4K')
VideoQuality.where(resolution: '1080p').find_or_create_by!(resolution: '1080p')
VideoQuality.where(resolution: '720p').find_or_create_by!(resolution: '720p')
VideoQuality.where(resolution: '480p').find_or_create_by!(resolution: '480p')
