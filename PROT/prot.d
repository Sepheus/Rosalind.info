/* http://rosalind.info/problems/prot/ */
import std.stdio;
import std.file;
import std.string;

void main(string[] args) {
    if(args.length == 2) {
        immutable filename = args[1];
        auto translate = ['A' : 'T', 'C' : 'G', 'G' : 'C', 'T' : 'A'];
        if(filename.exists) {
            string sequence = filename.readText.strip;
            
        }
        else { "File %s does not exist".writefln(filename); }
    }
    else { "Usage ./prot file".writeln; }
}