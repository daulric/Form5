program Parish_vote_Kelvin_Ulric;

var

    parishes : array [1..7] of string;
    vaccinated : array [1..7] of integer;
    unvaccinated : array [1..7] of integer;
    positive_cases : array [1..7] of integer;
    total_vaccinated : integer;
    total_unvaccinated : integer;
    total_positive_cases : integer;
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

    // the program will calculate the total number of vaccinated persons, total number of unvacccinated persons and total number of positive cases
    total_vaccinated := 0;
    total_unvaccinated := 0;
    total_positive_cases := 0;

    for uk := 1 to 7 do begin
        total_vaccinated := total_vaccinated + vaccinated[uk];
        total_unvaccinated := total_unvaccinated + unvaccinated[uk];
        total_positive_cases := total_positive_cases + positive_cases[uk];
    end;

    writeln('Thank You For Entering Data Needed!');
    readln;
    writeln('The program is going to display following information!');
    readln;

    writeln('The Total Number of Vaccinated Persons are ', total_vaccinated);
    readln;
    writeln('The Total Number of Unvaccinated Persons are: ', total_unvaccinated);
    readln;
    writeln('The Total Number of Positive Cases are: ', total_positive_cases);
    readln;

    // The program will now calculate the parish with the highest index for positive cases.

    highestPositiveIndex := 1;

    for uk := 2 to 7 do
        if positive_cases[uk] > positive_cases[highestPositiveIndex] then
            highestPositiveIndex := uk;
            writeln('The Parish with the Highest Positive Cases: ', parishes[highestPositiveIndex]);

end.