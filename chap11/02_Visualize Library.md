# 햄버거메뉴 - Visualize Library 메뉴 클릭
# Create new visualization 클릭
# Aggregation Based -> Vertical Bar 클릭(막대 그래프)
# 예제1) 
#  1) x-axis: 
##    - Aggregation: Histogram 
##    - Field      : salary    
#  2) y-axis:
##    - Aggregation: Count


# 예제2) 부서별(x) 평균 급여(y) 막대그래프
#  1) x-axis: 
##    - Aggregation: Terms 
##    - Field      : dno    
#  2) y-axis:
##    - Aggregation: Average
##    - Field      : salary



# 예제3) 부서별(x) 하위 25%, 상위 25% 막대그래프
#  1) x-axis: 
##    - Aggregation: Terms 
##    - Field      : dno    
#  2) y-axis:
##    - Aggregation: Average
##    - Field      : salary


# 예제4) 직위별(x) 평균 급여(y) 막대그래프
#  1) x-axis: 
##    - Aggregation: Terms 
##    - Field      : job    
#  2) y-axis:
##    - Aggregation: Average
##    - Field      : salary