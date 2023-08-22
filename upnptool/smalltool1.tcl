#############################################################################
# Generated by PAGE version 7.6
#  in conjunction with Tcl version 8.6
#  Aug 22, 2023 11:11:40 PM CST  platform: Windows NT
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    ::vTcl::MessageBox -title Error -message  "You must open project files from within PAGE."
    exit}


set image_list { 
}
vTcl:create_project_images $image_list   ;# In image.tcl

if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
########################################### 
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) gray40
set vTcl(analog_color_p) #c3c3c3
set vTcl(analog_color_m) beige
set vTcl(tabfg1) black
set vTcl(tabfg2) black
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
########################################### 
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top1 {base} {
    global vTcl
    if {$base == ""} {
        set base .top1
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    set target $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 755x403+994+296
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 2052 1133
    wm minsize $top 152 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    set toptitle "UPnP Manager"
    wm title $top $toptitle
    namespace eval ::widgets::${top}::ClassOption {}
    set ::widgets::${top}::ClassOption(-toptitle) $toptitle
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl::widgets::ttk::scrolledtext::CreateCmd "$top.scr54" \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 75 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 125 
    vTcl:DefineAlias "$top.scr54" "Scrolledtext_log" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A

    $top.scr54.01 configure -background white \
        -font "-family {Consolas} -size 9" \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10 \
        -wrap none
    ttk::style configure TFrame -background $vTcl(actual_gui_bg)
    ttk::frame "$top.tFr57" \
        -borderwidth 2 -relief groove -width 218 -height 281 
    vTcl:DefineAlias "$top.tFr57" "TFrame1" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    set site_3_0 $top.tFr57
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button "$site_3_0.tBu61" \
        -command "add_portmap" -takefocus {} -text "AddPortMap" \
        -compound left 
    vTcl:DefineAlias "$site_3_0.tBu61" "TButton_addportmap" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::label "$site_3_0.tLa66" \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font "TkDefaultFont" -relief flat -anchor w -justify left \
        -text "LocalHost" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa66" "TLabel1" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::entry "$site_3_0.tEn67" \
        -font "TkTextFont" -textvariable "localhostvar" -foreground {} \
        -background {} -takefocus {} -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn67" "TEntry_localhost" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    bind $site_3_0.tEn67 <<SetBalloon>> {
        set ::vTcl::balloon::%W {device who use port}
    }
    ttk::label "$site_3_0.tLa68" \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font "TkDefaultFont" -relief flat -anchor w -justify left \
        -text "LocalPort" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa68" "TLabel2" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::label "$site_3_0.tLa69" \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font "TkDefaultFont" -relief flat -anchor w -justify left \
        -text "RemotePort" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa69" "TLabel3" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::entry "$site_3_0.tEn47" \
        -font "TkTextFont" -textvariable "localportvar" -foreground {} \
        -background {} -takefocus {} -cursor fleur 
    vTcl:DefineAlias "$site_3_0.tEn47" "TEntry_localport" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    bind $site_3_0.tEn47 <<SetBalloon>> {
        set ::vTcl::balloon::%W {1-65535}
    }
    ttk::entry "$site_3_0.tEn48" \
        -font "TkTextFont" -textvariable "remotehostvar" -foreground {} \
        -background {} -takefocus {} -cursor fleur 
    vTcl:DefineAlias "$site_3_0.tEn48" "TEntry_remotehost" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    bind $site_3_0.tEn48 <<SetBalloon>> {
        set ::vTcl::balloon::%W {route listening}
    }
    ttk::label "$site_3_0.tLa49" \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font "TkDefaultFont" -relief flat -anchor w -justify left \
        -text "RemoteHost" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa49" "TLabel4" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::entry "$site_3_0.tEn50" \
        -font "TkTextFont" -textvariable "remoteportvar" -foreground {} \
        -background {} -takefocus {} -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn50" "TEntry_remoteport" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    bind $site_3_0.tEn50 <<SetBalloon>> {
        set ::vTcl::balloon::%W {1-65535}
    }
    ttk::entry "$site_3_0.tEn49" \
        -font "TkTextFont" -textvariable "timeoutvar" -foreground {} \
        -background {} -takefocus {} -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn49" "TEntry_timeout" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    bind $site_3_0.tEn49 <<SetBalloon>> {
        set ::vTcl::balloon::%W {≥0}
    }
    ttk::label "$site_3_0.tLa50" \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font "TkDefaultFont" -relief flat -anchor w -justify left \
        -text "Timeout" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa50" "TLabel5" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::combobox "$site_3_0.tCo51" \
        -values "TCP UDP" -font "TkTextFont" -textvariable "comboboxtype" \
        -foreground {} -background {} -takefocus {} 
    vTcl:DefineAlias "$site_3_0.tCo51" "TCombobox_type" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    bind $site_3_0.tCo51 <<SetBalloon>> {
        set ::vTcl::balloon::%W {select TCP/UDP}
    }
    ttk::label "$site_3_0.tLa52" \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font "TkDefaultFont" -relief flat -anchor w -justify left \
        -text "Type" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa52" "TLabel6" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::entry "$site_3_0.tEn53" \
        -font "TkTextFont" -textvariable "descriptvar" -foreground {} \
        -background {} -takefocus {} -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn53" "TEntry_description" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::label "$site_3_0.tLa54" \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font "-family {Microsoft YaHei UI} -size 9 -weight normal -slant roman -underline 0 -overstrike 0" \
        -relief flat -anchor w -justify left -text "Description" \
        -compound left 
    vTcl:DefineAlias "$site_3_0.tLa54" "TLabel7" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    place $site_3_0.tBu61 \
        -in $site_3_0 -x 0 -relx 0.048 -y 0 -rely 0.854 -width 187 \
        -relwidth 0 -height 27 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa66 \
        -in $site_3_0 -x 0 -relx 0.032 -y 0 -rely 0.036 -width 0 \
        -relwidth 0.39 -height 0 -relheight 0.128 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tEn67 \
        -in $site_3_0 -x 0 -relx 0.413 -y 0 -rely 0.075 -width 0 \
        -relwidth 0.56 -height 0 -relheight 0.082 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tLa68 \
        -in $site_3_0 -x 0 -relx 0.038 -y 0 -rely 0.146 -width 0 \
        -relwidth 0.341 -height 0 -relheight 0.128 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tLa69 \
        -in $site_3_0 -x 0 -relx 0.032 -y 0 -rely 0.498 -width 0 \
        -relwidth 0.482 -height 0 -relheight 0.128 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tEn47 \
        -in $site_3_0 -x 0 -relx 0.413 -y 0 -rely 0.178 -width 0 \
        -relwidth 0.56 -height 0 -relheight 0.085 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tEn48 \
        -in $site_3_0 -x 0 -relx 0.55 -y 0 -rely 0.427 -width 92 -relwidth 0 \
        -height 23 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa49 \
        -in $site_3_0 -x 0 -relx 0.037 -y 0 -rely 0.427 -width 0 \
        -relwidth 0.468 -height 0 -relheight 0.075 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tEn50 \
        -in $site_3_0 -x 0 -relx 0.55 -y 0 -rely 0.534 -width 92 -relwidth 0 \
        -height 24 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn49 \
        -in $site_3_0 -x 0 -relx 0.55 -y 0 -rely 0.641 -width 92 -relwidth 0 \
        -height 24 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa50 \
        -in $site_3_0 -x 0 -relx 0.032 -y 0 -rely 0.605 -width 0 \
        -relwidth 0.326 -height 0 -relheight 0.114 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tCo51 \
        -in $site_3_0 -x 0 -relx 0.413 -y 0 -rely 0.747 -width 0 \
        -relwidth 0.56 -height 0 -relheight 0.085 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tLa52 \
        -in $site_3_0 -x 0 -relx 0.046 -y 0 -rely 0.712 -width 0 \
        -relwidth 0.234 -height 0 -relheight 0.11 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tEn53 \
        -in $site_3_0 -x 0 -relx 0.413 -y 0 -rely 0.285 -width 0 \
        -relwidth 0.56 -height 0 -relheight 0.1 -anchor nw -bordermode ignore 
    place $site_3_0.tLa54 \
        -in $site_3_0 -x 0 -relx 0.018 -y 0 -rely 0.285 -width 0 \
        -relwidth 0.381 -height 0 -relheight 0.075 -anchor nw \
        -bordermode ignore 
    ttk::style configure TFrame -background $vTcl(actual_gui_bg)
    ttk::frame "$top.tFr59" \
        -borderwidth 2 -relief groove -width 215 -height 275 
    vTcl:DefineAlias "$top.tFr59" "TFrame2" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    set site_3_0 $top.tFr59
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button "$site_3_0.tBu60" \
        -command "query_devices" -takefocus {} -text "Query" -compound left 
    vTcl:DefineAlias "$site_3_0.tBu60" "TButton_querydevice" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    vTcl::widgets::ttk::scrolledlistbox::CreateCmd "$site_3_0.scr62" \
        -background $vTcl(actual_gui_bg) -height 75 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -width 125 
    vTcl:DefineAlias "$site_3_0.scr62" "Scrolledlistbox_devices" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A

    $site_3_0.scr62.01 configure -background white \
        -cursor xterm \
        -disabledforeground #a3a3a3 \
        -font TkFixedFont \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor #d9d9d9 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10
    place $site_3_0.tBu60 \
        -in $site_3_0 -x 0 -relx 0.048 -y 0 -rely 0.036 -width 217 \
        -relwidth 0 -height 27 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.scr62 \
        -in $site_3_0 -x 0 -relx 0.04 -y 0 -rely 0.142 -width 0 \
        -relwidth 0.884 -height 0 -relheight 0.804 -anchor nw \
        -bordermode ignore 
    ttk::style configure TFrame -background $vTcl(actual_gui_bg)
    ttk::frame "$top.tFr63" \
        -borderwidth 2 -relief groove -width 228 -height 281 
    vTcl:DefineAlias "$top.tFr63" "TFrame3" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    set site_3_0 $top.tFr63
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button "$site_3_0.tBu64" \
        -command "delete_portmap" -takefocus {} -text "DeletePortMap" \
        -compound left 
    vTcl:DefineAlias "$site_3_0.tBu64" "TButton_deleteport" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    vTcl::widgets::ttk::scrolledlistbox::CreateCmd "$site_3_0.scr47" \
        -background $vTcl(actual_gui_bg) -height 75 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -width 125 
    vTcl:DefineAlias "$site_3_0.scr47" "Scrolledlistbox_portmaps" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A

    $site_3_0.scr47.01 configure -background white \
        -cursor xterm \
        -disabledforeground #a3a3a3 \
        -font TkFixedFont \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor #d9d9d9 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button "$site_3_0.tBu48" \
        -command "list_portmaps" -takefocus {} -text "ListPortMap" \
        -compound left 
    vTcl:DefineAlias "$site_3_0.tBu48" "TButton_queryport" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    place $site_3_0.tBu64 \
        -in $site_3_0 -x 0 -relx 0.044 -y 0 -rely 0.854 -width 197 \
        -relwidth 0 -height 27 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.scr47 \
        -in $site_3_0 -x 0 -relx 0.066 -y 0 -rely 0.142 -width 0 \
        -relwidth 0.851 -height 0 -relheight 0.69 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tBu48 \
        -in $site_3_0 -x 0 -relx 0.066 -y 0 -rely 0.036 -width 187 \
        -relwidth 0 -height 27 -relheight 0 -anchor nw -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.scr54 \
        -in $top -x 0 -relx 0.031 -y 0 -rely 0.736 -width 0 -relwidth 0.943 \
        -height 0 -relheight 0.226 -anchor nw -bordermode ignore 
    place $top.tFr57 \
        -in $top -x 0 -relx 0.371 -y 0 -rely 0.025 -width 0 -relwidth 0.289 \
        -height 0 -relheight 0.697 -anchor nw -bordermode ignore 
    place $top.tFr59 \
        -in $top -x 0 -relx 0.031 -y 0 -rely 0.025 -width 0 -relwidth 0.33 \
        -height 0 -relheight 0.698 -anchor nw -bordermode ignore 
    place $top.tFr63 \
        -in $top -x 0 -relx 0.67 -y 0 -rely 0.025 -width 0 -relwidth 0.302 \
        -height 0 -relheight 0.697 -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

proc 36 {args} {return 1}


Window show .
set btop1 ""
if {$vTcl(borrow)} {
    set btop1 .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop1 $vTcl(tops)] != -1} {
        set btop1 .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop1
Window show .top1 $btop1
if {$vTcl(borrow)} {
    $btop1 configure -background plum
}

