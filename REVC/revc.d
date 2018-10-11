/* http://rosalind.info/problems/revc/ */
import std.stdio;
import std.file;
import std.string;

void main(string[] args) {
    if(args.length == 2) {
        immutable filename = args[1];
        auto translate = ['A' : 'T', 'C' : 'G', 'G' : 'C', 'T' : 'A'];
        if(filename.exists) {
            immutable data = filename.readText.strip;
            foreach_reverse(ref l; data) {
                translate[l].write;
            }
            "\n".write;
        }
        else { "File %s does not exist".writefln(filename); }
    }
    else { "Usage ./revc file".writeln; }
}