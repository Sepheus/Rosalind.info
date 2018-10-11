/* http://rosalind.info/problems/hamm/ */
import std.stdio;
import std.file;
import std.string;

void main(string[] args) {
    if(args.length == 2) {
        immutable filename = args[1];
        int count;
        if(filename.exists) {
            File file = File(filename, "r");
            string seqA;
            string seqB;
            file.readf("%s\n%s\n", seqA, seqB);
            for(int i = 0; i < seqA.length; i++) {
                seqA[i] != seqB[i] ? count++ : count;
            }
            count.writeln;
        }
        else { "File %s does not exist".writefln(filename); }
    }
    else { "Usage ./hamm file".writeln; }
}