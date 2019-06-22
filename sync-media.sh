#!/usr/bin/env bash
rsyncarchive='sudo rsync --archive --progress --verbose'
$rsyncarchive /media/bigboy/Music/ /mnt/raid0/Music
$rsyncarchive /media/bigboy/Downloads/@@KidsTVShows/ /mnt/raid0/Kids/Tv
$rsyncarchive /media/bigboy/Downloads/@@Complete/ /mnt/raid0/Meta/Complete
$rsyncarchive /media/bigboy/Downloads/@@Complete/incomplete /mnt/raid0/Meta/Incomplete
$rsyncarchive /media/bigboy/Downloads/Torrents/ /mnt/raid0/Meta/Torrents
$rsyncarchive /media/bigboy/Downloads/@@WorkoutVideos/ /mnt/raid0/WorkoutVideos
$rsyncarchive /media/bigboy/Downloads/@@Videos/ /mnt/raid0/Movies
$rsyncarchive /media/bigboy/Downloads/@@Videos/ /mnt/raid0/Movies
$rsyncarchive /media/bigboy/Downloads/@@TV/ /mnt/raid0/Tv