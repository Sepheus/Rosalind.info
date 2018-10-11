/* http://rosalind.info/problems/rna/ */
import std.stdio;
import std.file;
import std.string;

void main(string[] args) {
    if(args.length == 2) {
        immutable filename = args[1];
        auto translate = ['A' : 'A', 'C' : 'C', 'G' : 'G', 'T' : 'U'];
        if(filename.exists) {
            immutable data = filename.readText.strip;
            foreach(ref l; data) {
                translate[l].write;
            }
            "\n".write;
        }
        else { "File %s does not exist".writefln(filename); }
    }
    else { "Usage ./rna file".writeln; }
}