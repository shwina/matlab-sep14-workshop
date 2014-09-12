for i = 1:3
    
    % Generate strings for file and image names:
    file_name = sprintf('inflammation-%02d.csv', i);
    img_name = strcat(file_name(1:end-3), 'jpg')
    
    patient_data = csvread(file_name);
    ave_inflammation = mean(patient_data, 1);

    figure()
    plot(ave_inflammation);
    print(img_name);
    close();

end
