TP = input('TP(True Positive) 값을 입력하세요: ');
FP = input('FP(False Positive) 값을 입력하세요: ');
FN = input('FN(False Negative) 값을 입력하세요: ');
TN = input('TN(True Negative) 값을 입력하세요: ');
N = TP + FP + FN + TN;

accuracy = (TP + TN) / N;

sensitivity = TP / (TP + FN);

specificity = TN / (TN + FP);

precision = TP / (TP + FP);

npv = TN / (TN + FN);

f1_score = 2 * precision * sensitivity / (precision + sensitivity);

error_rate = (FP + FN) / N;

fprintf('========== 혼동행렬 ==========\n');
fprintf('            실제 +     실제 -\n');
fprintf('예측 +      %5d      %5d\n', TP, FP);
fprintf('예측 -      %5d      %5d\n', FN, TN);

fprintf('\n========== 성능 평가 ==========\n');
fprintf('정확도 Accuracy       : %.2f%%\n', accuracy * 100);
fprintf('민감도 Sensitivity    : %.2f%%\n', sensitivity * 100);
fprintf('특이도 Specificity    : %.2f%%\n', specificity * 100);
fprintf('정밀도 Precision      : %.2f%%\n', precision * 100);
fprintf('음성예측도 NPV        : %.2f%%\n', npv * 100);
fprintf('F1-score              : %.2f%%\n', f1_score * 100);
fprintf('오분류율 Error Rate   : %.2f%%\n', error_rate * 100);

fprintf('\n========== 오류 해석 ==========\n');
fprintf('FP(False Positive) = %d\n', FP);
fprintf('→ 실제 음성을 양성으로 잘못 판단\n');
fprintf('→ 불필요한 검사나 처치 등 ''비용'' 발생 가능\n');

fprintf('\n');

fprintf('FN(False Negative) = %d\n', FN);
fprintf('→ 실제 양성을 음성으로 잘못 판단\n');
fprintf('→ 질병이나 이상을 놓치는 ''위험'' 발생 가능\n');