function update_graph(x, A, B, v)
    global pts;

    x_lim = [];
    y_lim = [];

    v_asym = 0;

    C = [];
    if (numel(x) <= 2)
        for i = 1:size(A,1)
            % contrainte n intercepte pas les y-axis 
            if (A(i,2) == 0)
                y_lim = [y_lim;0];
            else
                y_lim = [y_lim;B(i)/A(i,2)];
            end
            % contrainte n intercepte pas les x-axis
            if (A(i,1) == 0)
                x_lim = [x_lim;0];
            else
                x_lim = [x_lim;B(i)/A(i,1)];
            end
        end

        t = 0:0.1:max(x_lim);

        for i = 1:size(A,1)
            if (A(i,2) == 0)
                v_asym = B(i)/A(i,1);
            else
                C = [C; ((-A(i,1)/A(i,2))*t + B(i)/A(i,2))];
            end
        end

        pts = [pts; x(1) x(2)];
        disp(pts)
        subplot(1,1,1);
        plot(x(1), x(2), 'or', t, C, 'b');
        hold on;
        % asymptote vertical
        if ~isnan(v_asym)
            plot([v_asym v_asym], [0, max(y_lim)], 'b');
        end
        hold off;
        xlim([0 max(x_lim)]);
        ylim([0 max(y_lim)]);
        title(strcat('x1 =  ', num2str(x(1)), ' ;  x2 =  ', num2str(x(2)), ' ; v =  ', num2str(v)));
    end
end


%basta mohammed
%Recherche operationnelle
%master ds fssm