    clc;
    clear all;
    %Cloths given
    cloths = ["baby"; "woolen"; "synthetic"];
    %Initialize vectors for washtime and hotwater
    washTime = zeros(length(cloths),1);
    hotWater = zeros(length(cloths),1);
    for i = 1:length(cloths)
        %hotWater(i) = 0;
        if cloths(i) == "baby"
            washTime(i) = 20;
            hotWater(i) = 1;
        elseif cloths(i) == "woolen"
            washTime(i) = 25;
        else
            washTime(i) = 15;
        end
    end
    result = table(cloths, washTime, hotWater,'VariableNames', {'Cloths', 'Wash time', 'Hot water'});
    disp(result)
    %write table to the excel
    writetable(result,"clothsInfo.xlsx");
    %write table to the csv
    writetable(result, "clothsInfo.csv");
