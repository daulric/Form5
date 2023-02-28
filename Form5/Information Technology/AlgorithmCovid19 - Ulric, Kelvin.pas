program Parish_vote_Kelvin_Ulric;

var

    parishes : array [1..7] of string;
    vaccinated : array [1..7] of integer;
    unvaccinated : array [1..7] of integer;
    positive_cases : array [1..7] of integer;
    total_vaccinated : integer;
    total_unvaccinated : integer;
    uk : integer;
    highestPositiveIndex : integer;

begin
    // Intialize the parish variables

    parishes[1] := 'Carriacou';
    parishes[2] := 'St. Mark';
    parishes[3] := 'St. Patricks';
    parishes[4] := 'St. George';
    parishes[5] := 'St. David';
    parishes[6] := 'St. Andrew';
    parishes[7] := 'St. John';

    writeln('Hello, this program is created by Ulric and Kelvin');
    readln;
    writeln('This program will be used to find out the highest number of  vaccinated persons in Grenada');
    readln;

    for uk := 1 to 7 do begin
        // Input the current data for each parish

        write('Enter the Name of the Parish: ');
        readln(parishes[uk]);
        write('Enter The Number of Vaccinated Persons: ');
        readln(vaccinated[uk]);
        write('Tell Me The Number of Unvaccinated Persons: ');
        readln(unvaccinated[uk]);
        write('State The Number of Positive Cases: ');
        readln(positive_cases[uk]);
    end;

end.