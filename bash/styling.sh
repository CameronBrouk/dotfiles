# ================= LS STYLING ======================
# this makes the directory colors the blue color when using ls
# NOTE: di is technically the way to color directories, but tw and ow are considered special directories.  
# - currently, for some fucking reason, just styling di doesn't cover half the directories in my home folder.  ugh
LS_COLORS='rs=0:di=1;35:tw=1;35:ow=1;35';
export LS_COLORS


# =============== Command Prompt Stying ====================
# If this is an xterm set the title to user@host:dir
# This adds the line above each command and decides what is shown and it's colors
case "$TERM" in
xterm*|rxvt*)
    PS1="------------------------------------------------------------------
 \[\033[32m\]-/\W \[\033[00m\]"
    ;;
*)
    ;;
esac

# How To Style LS
#------------------------------------
# 1: There are 3 potential styles you can add to a file type
#   - color
#   - background
#   - effect ( bold / underline / etc )
# 2: The Syntax is as follows:  {TYPE}={style};{style};{style};{style}:
    # - You can add the styles in any order, since their specification is unique
    #   i.e. {color};{background};{effect} vs {background};{color};{effect};{effect}
    # - You can add multiple effects

# LS TYPES
#------------------------------------
# bd = (BLOCK, BLK)   Block device (buffered) special file
# cd = (CHAR, CHR)    Character device (unbuffered) special file
# di = (DIR)  Directory
# do = (DOOR) [Door][1]
# ex = (EXEC) Executable file (ie. has 'x' set in permissions)
# fi = (FILE) Normal file
# ln = (SYMLINK, LINK, LNK)   Symbolic link. If you set this to ‘target’ instead of a numerical value, the color is as for the file pointed to.
# mi = (MISSING)  Non-existent file pointed to by a symbolic link (visible when you type ls -l)
# no = (NORMAL, NORM) Normal (non-filename) text. Global default, although everything should be something
# or = (ORPHAN)   Symbolic link pointing to an orphaned non-existent file
# ow = (OTHER_WRITABLE)   Directory that is other-writable (o+w) and not sticky
# pi = (FIFO, PIPE)   Named pipe (fifo file)
# sg = (SETGID)   File that is setgid (g+s)
# so = (SOCK) Socket file
# st = (STICKY)   Directory with the sticky bit set (+t) and not other-writable
# su = (SETUID)   File that is setuid (u+s)
# tw = (STICKY_OTHER_WRITABLE)    Directory that is sticky and other-writable (+t,o+w)
# *.extension =   Every file using this extension e.g. *.rpm = files with the ending .rpm

# LS COLORS
#------------------------------------
# 30  = black
# 31  = red
# 32  = green
# 33  = orange
# 34  = blue
# 35  = purple
# 36  = cyan
# 37  = grey
# 90  = dark grey
# 91  = light red
# 92  = light green
# 93  = yellow
# 94  = light blue
# 95  = light purple
# 96  = turquoise
# 97  = white

# LS Backgrounds
#------------------------------------
# 40  = black background
# 41  = red background
# 42  = green background
# 43  = orange background
# 44  = blue background
# 45  = purple background
# 46  = cyan background
# 47  = grey background
# 100 = dark grey background
# 101 = light red background
# 102 = light green background
# 103 = yellow background
# 104 = light blue background
# 105 = light purple background
# 106 = turquoise background
# 107 = white background

# LS Effects
#------------------------------------
# 0   = default colour
# 1   = bold
# 4   = underlined
# 5   = flashing text (disabled on some terminals)
# 7   = reverse field (exchange foreground and background color)
# 8   = concealed (invisible)
