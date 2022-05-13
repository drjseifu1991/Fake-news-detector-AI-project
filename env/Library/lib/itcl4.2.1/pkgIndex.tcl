if {[package vsatisfies 8.0 [package provide Tcl]]} {
    set add 80
} else {
    set add {t}
}
if {[::tcl::pkgconfig get debug] && \
        [file exists [file join $dir itcl421${add}g.dll]]} {
    package ifneeded Itcl 4.2.1 [list load [file join $dir itcl421${add}g.dll] Itcl]
} else {
    package ifneeded Itcl 4.2.1 [list load [file join $dir itcl421${add}.dll] Itcl]
}
unset add
