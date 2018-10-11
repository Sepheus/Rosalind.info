/* http://rosalind.info/problems/dna/ */
import std.stdio;
import std.file;

void main(string[] args) {
    if(args.length == 2) {
        immutable filename = args[1];
        auto count = ['A' : 0, 'C' : 0, 'G' : 0, 'T' : 0];
        if(filename.exists) {
            immutable data = filename.readText.strip;
            foreach(ref l; data) {
                count[l]++;
            }
            foreach(l; ['A', 'C', 'G', 'T']) {
                "%s ".writef(count[l]);
            }
            "\n".write;
        }
        else { "File %s does not exist".writefln(filename); }
    }
    else { "Usage ./dna file".writeln; }
}