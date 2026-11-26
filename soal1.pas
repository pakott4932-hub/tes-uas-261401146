program PenyaringanBilangan;
uses crt;

var
  N, kategori, i, total: integer;

begin
  clrscr;

  repeat
    writeln('Masukan batas akhir bilangan (1-100): ');
    readln(N);
    if (N < 1) or (N > 100) then
      writeln('Input tidak valid. Silakan masukkan angka antara 1 dan 100.');
    until (N >= 1) and (N <= 100);

    writeln('Masukan kategori bilangan : ');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Kategori : ');
    readln(kategori);

    total := 0;
    i := 1;

    writeln;
    writeln('Hasil penyaringan:');

    while i <= N do
    begin
        if (kategori = 1) and (i mod 2 <> 0) then
        begin
            i := i + 1;
            continue;
        end;

        if (kategori = 2) and (i mod 2 = 0) then
        begin
            i := i + 1;
            continue;
        end;

        if i mod 5 = 0 then
        begin
            i:= i + 1;
            continue;
        end;

        write(i, ' ');
        total := total + 1;

        i := i + 1;
    end;

    writeln;
    writeln('Total penjumlahan: ', total);
    readln;
end.