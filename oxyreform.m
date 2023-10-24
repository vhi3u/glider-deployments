%TSP CORRECTIONS
% Corefficients values
coeffValues = [-2.988314E-06, -6.137785E-06, 1.684659E-03, -1.857173E-01, 6.784399E-04, -5.597908E-07, 1.040158E+01, -5.986907E-02, 1.360425E-04, -4.776977E-07, -3.032937E+02, 2.530496E+00, -1.267045E-02, 1.040454E-04, -3.560390E-07, 3.816713E+03, -4.475507E+01, 4.386164E-01, -7.146342E-03, 8.906236E-05, -6.343012E-07, 0.000000E+00, 0.000000E+00, 0.000000E+00, 0.000000E+00, 0.000000E+00, 0.000000E+00, 0.000000E+00];
foilpolyT = [1, 0, 0, 0, 1, 2, 0, 1, 2, 3, 0, 1, 2, 3, 4, 0, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0];
foilpolyO = [4, 5, 4, 3, 3, 3, 2, 2, 2, 2, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
% Create a structure array
coefficients = struct();

% Assign values to fields
for i = 1:numel(coeffValues)
    fieldName = sprintf('C%d', i-1);
    coefficients.(fieldName) = coeffValues(i);
end

foilT = struct();

% Assign values to fields
for i = 1:numel(foilpolyT)
    fieldName = sprintf('f%d', i-1);
    foilT.(fieldName) = foilpolyT(i);
end

foilO = struct();

% Assign values to fields
for i = 1:numel(foilpolyO)
    fieldName = sprintf('f%d', i-1);
    foilO.(fieldName) = foilpolyO(i);
end

C0 = coefficients.C0 .* (tempi.^foilT.f0) .* do.oxyw_dphase.^foilO.f0;
C1 = coefficients.C1 .* (tempi.^foilT.f1) .* do.oxyw_dphase.^foilO.f1;
C2 = coefficients.C2 .* (tempi.^foilT.f2) .* do.oxyw_dphase.^foilO.f2;
C3 = coefficients.C3 .* (tempi.^foilT.f3) .* do.oxyw_dphase.^foilO.f3;
C4 = coefficients.C4 .* (tempi.^foilT.f4) .* do.oxyw_dphase.^foilO.f4;
C5 = coefficients.C5 .* (tempi.^foilT.f5) .* do.oxyw_dphase.^foilO.f5;
C6 = coefficients.C6 .* (tempi.^foilT.f6) .* do.oxyw_dphase.^foilO.f6;
C7 = coefficients.C7 .* (tempi.^foilT.f7) .* do.oxyw_dphase.^foilO.f7;
C8 = coefficients.C8 .* (tempi.^foilT.f8) .* do.oxyw_dphase.^foilO.f8;
C9 = coefficients.C9 .* (tempi.^foilT.f9) .* do.oxyw_dphase.^foilO.f9;
C10 = coefficients.C10 .* (tempi.^foilT.f10) .* do.oxyw_dphase.^foilO.f10;
C11 = coefficients.C11 .* (tempi.^foilT.f11) .* do.oxyw_dphase.^foilO.f11;
C12 = coefficients.C12 .* (tempi.^foilT.f12) .* do.oxyw_dphase.^foilO.f12;
C13 = coefficients.C13 .* (tempi.^foilT.f13) .* do.oxyw_dphase.^foilO.f13;
C14 = coefficients.C14 .* (tempi.^foilT.f14) .* do.oxyw_dphase.^foilO.f14;
C15 = coefficients.C15 .* (tempi.^foilT.f15) .* do.oxyw_dphase.^foilO.f15;
C16 = coefficients.C16 .* (tempi.^foilT.f16) .* do.oxyw_dphase.^foilO.f16;
C17 = coefficients.C17 .* (tempi.^foilT.f17) .* do.oxyw_dphase.^foilO.f17;
C18 = coefficients.C18 .* (tempi.^foilT.f18) .* do.oxyw_dphase.^foilO.f18;
C19 = coefficients.C19 .* (tempi.^foilT.f19) .* do.oxyw_dphase.^foilO.f19;
C20 = coefficients.C20 .* (tempi.^foilT.f20) .* do.oxyw_dphase.^foilO.f20;
C21 = coefficients.C21 .* (tempi.^foilT.f21) .* do.oxyw_dphase.^foilO.f21;
C22 = coefficients.C22 .* (tempi.^foilT.f22) .* do.oxyw_dphase.^foilO.f22;
C23 = coefficients.C23 .* (tempi.^foilT.f23) .* do.oxyw_dphase.^foilO.f23;
C24 = coefficients.C24 .* (tempi.^foilT.f24) .* do.oxyw_dphase.^foilO.f24;
C25 = coefficients.C25 .* (tempi.^foilT.f25) .* do.oxyw_dphase.^foilO.f25;
C26 = coefficients.C26 .* (tempi.^foilT.f26) .* do.oxyw_dphase.^foilO.f26;
C27 = coefficients.C27 .* (tempi.^foilT.f27) .* do.oxyw_dphase.^foilO.f27;

o2_tcorr = C0 + C1 + C3 + C4 + C5 + C6 + C7 + C8 + C9 + C10 + C11 + ...
    C12 + C13 + C14 + C15 + C16 + C17 + C18 + C19 + C20 + C21 + C22 + ...
    C23 + C24 + C25 + C26 + C27;





