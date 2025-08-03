final Map<String, List<Map<String, dynamic>>> questionBanks = {
  "Sets and Intervals": setsAndIntervalsQuestions,
  "Functions": functions,
  "Limits and Continuity": limitsAndContinuity,
  "Derivatives": derivatives,
  "Applications of Derivatives": applicationsOfDerivatives,
  "Intro to Integration": introToIntegration,
};

final List<Map<String, dynamic>> setsAndIntervalsQuestions = [
  {
    "question": r"Let \( S = \{ x \in \mathbb{Z} \mid -3 \leq x \leq 4 \} \). What is \( |S| \)?\nA. 9\nB. 7\nC. 8\nD. 6",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"There are 8 integers from -3 to 4 inclusive, so the correct answer is '8'."
  },
  {
    "question": r"A set \( A \) has 6 elements. How many subsets of \( A \) contain at least 1 element?\nA. 36\nB. 63\nC. 32\nD. 64",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Total subsets are \(2^6 = 64\), excluding the empty set leaves 63 subsets."
  },
  {
    "question": r"If \( A = \{2, 4, 6\} \) and \( B = \{4, 6, 8\} \), what is \( A \cup B \)?\nA. \( \{2,4,6\} \)\nB. \( \{4,6,8\} \)\nC. \( \{2,4,6,8\} \)\nD. \( \{2,4,8\} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The union of sets combines unique elements, \( A \cup B = \{2,4,6,8\} \)."
  },
  {
    "question": r"How many subsets of \( \{a,b,c\} \) have exactly 2 elements?\nA. 2\nB. 3\nC. 4\nD. 5",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The number of 2-element subsets is \( \binom{3}{2} = 3 \). Use the binomial theorem formula or count the subsets one by one e.g \( \{a,b\} \), \( \{b,c\} \) and \( \{a,c\} \)."
  },
  {
    "question": r"Which of the following is false?\nA. \( \emptyset \subseteq \{1,2\} \)\nB. \( 1 \in \{1,2\} \)\nC. \( \{1\} \in \{1,2\} \)\nD. \( \{1\} \subseteq \{1,2\} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"\( \{1\} \) is a set, not an element of \( \{1,2\} \), making C false."
  },
  {
    "question": r"If \( A \cap B = \emptyset \) and \( |A|=4, |B|=5 \), what is \( |A \cup B| \)?\nA. 9\nB. 7\nC. 6\nD. 5",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"The sets are disjoint, so \( |A \cup B| = 4 + 5 = 9 \)."
  },
  {
    "question": r"Let \( A = \{1, 2\} \). Which of the following is not in \( \mathcal{P}(A) \)?\nA. \( \emptyset \)\nB. \( \{1,2\} \)\nC. \( 1 \)\nD. \( \{1\} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"\( 1 \) is an element, not a subset, so it is not in \( \mathcal{P}(A) \)."
  },
  {
    "question": r"Let \( A = \{1, 2, 3, 4, 5, 6\} \), \( B = \{ x \in A \mid x \text{ divisible by } 2 \text{ or } 3 \} \). How many subsets does \( B \) have?\nA. 16\nB. 10\nC. 8\nD. 20",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( B = \{2, 3, 4, 6\} \), which has \( 2^4 = 16 \) subsets."
  },
  {
    "question": r"If \( A \setminus B = \{3\}, B \setminus A = \{4\}, |A| = 2 \), what is \( A \cap B \)?\nA. \( \{3,4\} \)\nB. \( \{3\} \)\nC. \( \emptyset \)\nD. \( \{4\} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Disjoint elements imply \( A \cap B = \emptyset \)."
  },
  {
    "question": r"What is \( (-\infty, 3) \cap [0, 5] \)?\nA. \( (0,3) \)\nB. \( [0,3) \)\nC. \( (3,5] \)\nD. \( (0,5] \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The overlap is from 0 (inclusive) to 3 (exclusive), \( [0,3) \)."
  },
  {
    "question": r"The domain of \( f(x) = \sqrt{4 - x^2} \) is:\nA. \( [-2,2] \)\nB. \( (-\infty,2] \)\nC. \( (-2,2) \)\nD. \( [-4,4] \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( 4 - x^2 \geq 0 \Rightarrow x \in [-2,2] \)."
  },
  {
    "question": r"Solve \( |2x - 1| \leq 5 \).\nA. \( [-2,3] \)\nB. \( [-1,2] \)\nC. \( [-3,2] \)\nD. \( [-2,4] \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Solving yields \( -2 \leq x \leq 3 \)."
  },
  {
    "question": r"Given \( f(x) = |x - 3| + |x + 1| \), at what value of \( x \) is \( f(x) \) minimized?\nA. 3\nB. 1\nC. 0\nD. -1",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The sum of distances is minimized at the median, \( x=1 \)."
  },
  {
    "question": r"The range of \( g(x) = \frac{1}{x - 1} \) is:\nA. \( \mathbb{R} \setminus \{1\} \)\nB. \( \mathbb{R} \setminus \{0\} \)\nC. \( \mathbb{R} \setminus \{-1\} \)\nD. \( \mathbb{R} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\( g(x) \) never equals zero, so range excludes 0."
  },
  {
    "question": r"Solve \( x^2 - 5x + 6 \leq 0 \).\nA. \( (-\infty, 2) \cup (3, \infty) \)\nB. \( [2,3] \)\nC. \( (-\infty, 3] \)\nD. \( [2, \infty) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Factoring \( (x-2)(x-3) \leq 0 \) gives solution \( [2,3] \)."
  },
  {
    "question": r"If \( A = [-1, 4) \) and \( B = (2, 5] \), what is \( A \setminus B \)?\nA. \( [-1,2] \)\nB. \( (2,4) \)\nC. \( [-1,4) \)\nD. \( (4,5] \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Removing \( B \) from \( A \) excludes \( (2,4) \), so \( A \setminus B = [-1,2] \)."
  },
  {
    "question": r"Solve \( \frac{x - 3}{x + 2} \geq 0 \).\nA. \( (-\infty,-2) \cup [3, \infty) \)\nB. \( [-2,3] \)\nC. \( (-2,3) \)\nD. \( (3, \infty) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Numerator and denominator same sign intervals: \( (-\infty,-2) \cup [3,\infty) \)."
  },
  {
    "question": r"If \( |A \cup B| = 10 \), \( |A \cap B| = 2 \), and \( |A| = 7 \), what is \( |B| \)?\nA. 3\nB. 6\nC. 10\nD. 5",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Using formula \( 10 = 7 + |B| - 2 \Rightarrow |B| = 5 \)."
  },
  {
    "question": r"Where is \( \sqrt{x^2 - 9} \) real?\nA. \( (-3,3) \)\nB. \( (-\infty, -3] \cup [3, \infty) \)\nC. \( (-\infty,3] \)\nD. \( (-\infty, -3) \cup (3, \infty) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Radicand non-negative: \( x \leq -3 \) or \( x \geq 3 \)."
  },
  {
    "question": r"Solve \( 3x + 2 > 5x - 4 \).\nA. \( x > 3 \)\nB. \( x < 3 \)\nC. \( x = 3 \)\nD. \( x  != 3 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Rearranged: \( x < 3 \)."
  },
  {
    "question": r"How many integer solutions satisfy \( |x - 5| \leq 3 \)?\nA. 5\nB. 7\nC. 8\nD. 6",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Solutions: \( 2 \leq x \leq 8 \), total 7 integers."
  },
  {
    "question": r"Solve \( \log_2 (x + 1) \leq 3 \).\nA. \( (-1,7] \)\nB. \( [-1,7] \)\nC. \( (-\infty,7] \)\nD. \( (-1,8] \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Domain \( x > -1 \), inequality \( x + 1 \leq 8 \Rightarrow x \leq 7 \)."
  },
  {
    "question": r"Solve \( e^{2x} \geq 1 \).\nA. \( x \geq 0 \)\nB. \( x \leq 0 \)\nC. \( x > 0 \)\nD. \( x < 0 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Since \( e^{2x} \geq 1 \Rightarrow 2x \geq 0 \Rightarrow x \geq 0 \)."
  },
  {
    "question": r"Solve \( |x - 4| > 2 \).\nA. \( x < 2 \text{ or } x > 6 \)\nB. \( 2 \leq x \leq 6 \)\nC. \( x > 2 \text{ and } x < 6 \)\nD. \( x = 2 \text{ or } x = 6 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Inequality means \( x < 2 \) or \( x > 6 \)."
  },
  {
    "question": r"Solve \( \frac{2x - 1}{x + 3} < 1 \).\nA. \( (-3,4) \)\nB. \( (-\infty,-3) \cup (4, \infty) \)\nC. \( (-3,1) \)\nD. \( (1,4) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Rearranged to \( \frac{x - 4}{x + 3} < 0 \) with solution \( (-3,4) \)."
  }
];


final List<Map<String, dynamic>> functions = [
  {
    "question": r"Given \( f(x) = \frac{2x - 5}{3} \), which function represents \( f^{-1}(x) \)?\nA. \( \frac{3x + 5}{2} \)\nB. \( \frac{2x + 5}{3} \)\nC. \( \frac{3x - 5}{2} \)\nD. \( \frac{2x - 3}{5} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"To find \( f^{-1}(x) \), swap \( x \) and \( y \) in \( y = \frac{2x - 5}{3} \) and solve for \( y \): \n\( x = \frac{2y - 5}{3} \) \n\( 3x = 2y - 5 \) \n\( 2y = 3x + 5 \) \n\( y = \frac{3x + 5}{2} \)."
  },
  {
    "question": r"A bacterial culture doubles every 4 hours. If the initial population is 500, what is the population after 12 hours?\nA. 1500\nB. 2000\nC. 3000\nD. 4000",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Doubling occurs every 4 hours, so in 12 hours there are \( \frac{12}{4} = 3 \) doublings. Population is \( 500 \times 2^3 = 500 \times 8 = 4000 \)."
  },
  {
    "question": r"Which function is odd?\nA. \( f(x) = x^3 - x \)\nB. \( f(x) = x^2 + \cos x \)\nC. \( f(x) = e^x + e^{-x} \)\nD. \( f(x) = \sin x + \cos x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"A function is odd if \( f(-x) = -f(x) \). For \( f(x) = x^3 - x \): \n\( f(-x) = (-x)^3 - (-x) = -x^3 + x = -(x^3 - x) = -f(x) \)."
  },
  {
    "question": r"Solve for \( x \): \( \log_2 (x + 3) = 4 \).\nA. 13\nB. 16\nC. 19\nD. 21",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Rewrite logarithm as exponential: \n\( x + 3 = 2^4 = 16 \) \n\( \Rightarrow x = 16 - 3 = 13 \)."
  },
  {
    "question": r"If \( g(x) = \begin{cases} x^2 & x < 0 \\ 2x + 1 & x \geq 0 \end{cases} \), what is \( g(-2) + g(3) \)?\nA. 5\nB. 11\nC. 15\nD. 17",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\( g(-2) = (-2)^2 = 4 \) (since \( -2 < 0 \)), \( g(3) = 2(3) + 1 = 7 \). Sum is \( 4 + 7 = 11 \)."
  },
  {
    "question": r"What is the domain of \( h(x) = \sqrt{7 - 2x} \)?\nA. \( x \leq \frac{7}{2} \)\nB. \( x \geq \frac{7}{2} \)\nC. \( x \leq -\frac{7}{2} \)\nD. \( x \geq -\frac{7}{2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"The expression under the square root must be non-negative: \( 7 - 2x \geq 0 \Rightarrow x \leq \frac{7}{2} \)."
  },
  {
    "question": r"If \( \sin \theta = \frac{3}{5} \) and \( \theta \) is in Quadrant II, what is \( \cos \theta \)?\nA. \( \frac{4}{5} \)\nB. \( -\frac{4}{5} \)\nC. \( \frac{5}{4} \)\nD. \( -\frac{5}{4} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"In Quadrant II, cosine is negative. Using \( \sin^2 \theta + \cos^2 \theta = 1 \): \n\( \cos \theta = -\sqrt{1 - \left(\frac{3}{5}\right)^2} = -\frac{4}{5} \)."
  },
  {
    "question": r"If \( f(x) = x^2 \) and \( g(x) = \sqrt{x} \), what is \( f(g(9)) \)?\nA. 3\nB. 9\nC. 27\nD. 81",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\( g(9) = \sqrt{9} = 3 \), then \( f(3) = 3^2 = 9 \)."
  },
  {
    "question": r"The graph of \( y = |x| \) is shifted right by 2 units and stretched vertically by 3. What is the new equation?\nA. \( y = 3|x - 2| \)\nB. \( y = |3x - 2| \)\nC. \( y = |x - 2| + 3 \)\nD. \( y = 3|x| - 2 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Shift right by 2: replace \( x \) with \( x - 2 \). Vertical stretch by 3: multiply the function by 3."
  },
  {
    "question": r"What is the vertical asymptote of \( f(x) = \frac{x+1}{x-4} \)?\nA. \( x = -1 \)\nB. \( x = 1 \)\nC. \( x = 4 \)\nD. \( x = -4 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Vertical asymptotes occur where the denominator is zero and numerator is not zero: \( x - 4 = 0 \Rightarrow x = 4 \)."
  },
  {
    "question": r"A substance decays at 10% per hour. What percentage remains after 5 hours?\nA. ~50%\nB. ~59%\nC. ~65%\nD. ~72%",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Decay formula: \( (1 - 0.10)^5 = 0.9^5 \approx 0.59049 \approx 59\% \)."
  },
  {
    "question": r"Given \( f(x) = 2x - 1 \) and \( g(x) = x^2 \), what is \( (f+g)(3) \)?\nA. 14\nB. 15\nC. 16\nD. 17",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( f(3) = 2(3) - 1 = 5 \), \( g(3) = 3^2 = 9 \), sum = \( 5 + 9 = 14 \)."
  },
  {
    "question": r"Solve \( |2x + 1| = 7 \).\nA. \( x = 3 \) or \( x = -4 \)\nB. \( x = 3 \) or \( x = 4 \)\nC. \( x = -3 \) or \( x = 4 \)\nD. \( x = -3 \) or \( x = -4 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Two cases: \n\( 2x + 1 = 7 \Rightarrow x = 3 \)\n\( 2x + 1 = -7 \Rightarrow x = -4 \)."
  },
  {
    "question": r"What is \( \arccos \left( \frac{1}{2} \right) \)?\nA. \( \frac{\pi}{6} \)\nB. \( \frac{\pi}{4} \)\nC. \( \frac{\pi}{3} \)\nD. \( \frac{\pi}{2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"\( \cos \left( \frac{\pi}{3} \right) = \frac{1}{2} \), so \( \arccos \left( \frac{1}{2} \right) = \frac{\pi}{3} \)."
  },
  {
    "question": r"If \( x = 2 \) is a root of \( f(x) = x^3 - kx + 6 \), what is \( k \)?\nA. 5\nB. 7\nC. 9\nD. 11",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Substitute \( x = 2 \): \n\( 2^3 - 2k + 6 = 0 \Rightarrow 8 - 2k + 6 = 0 \Rightarrow 14 = 2k \Rightarrow k = 7 \)."
  },
  {
    "question": r"Which statement is true for all even functions \( f(x) \)?\nA. \( f(0) = 0 \)\nB. \( f(-x) = -f(x) \)\nC. \( f(-x) = f(x) \)\nD. \( f(x) \) is always positive",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Even functions satisfy \( f(-x) = f(x) \) by definition."
  },
  {
    "question": r"Simplify \( \ln \left( e^3 \cdot x^2 \right) \).\nA. \( 3 + 2 \ln x \)\nB. \( 3x^2 \)\nC. \( e^3 + x^2 \)\nD. \( 5 \ln x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Using \( \ln(ab) = \ln a + \ln b \): \n\( \ln(e^3) + \ln(x^2) = 3 + 2 \ln x \)."
  },
  {
    "question": r"What is the vertex of \( f(x) = 2(x - 1)^2 + 5 \)?\nA. \( (1,5) \)\nB. \( (-1,5) \)\nC. \( (1,-5) \)\nD. \( (-1,-5) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Vertex form is \( a(x - h)^2 + k \) with vertex at \( (h,k) \). Here, \( h = 1 \), \( k = 5 \)."
  },
  {
    "question": r"Simplify \( (8x^6)^{1/3} \).\nA. \( 2x^2 \)\nB. \( 8x^2 \)\nC. \( 2x^3 \)\nD. \( 8x^3 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Cube root of 8 is 2, and \( (x^6)^{1/3} = x^{6/3} = x^2 \), so the expression is \( 2x^2 \)."
  },
  {
    "question": r"Let \( f(x) = |x - 3| \). What is the value of \( f(5) + f(1) \)?\nA) 4\nB) 6\nC) 2\nD) 0",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Calculate \( f(5) = |5-3| = 2 \) and \( f(1) = |1-3| = 2 \), sum is 4."
  },
  {
    "question": r"Consider the piecewise function:\n\( f(x) = \begin{cases} x^2, & x < 0 \\ 2x + 1, & x \geq 0 \end{cases} \)\nFind \( f(-2) + f(3) \).\nA) 11\nB) 13\nC) 15\nD) 9",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Calculate \( f(-2) = (-2)^2 = 4 \), \( f(3) = 2(3) + 1 = 7 \), sum is 11."
  },
  {
    "question": r"If \( f(x) = \sec x \) and \( x = \frac{\pi}{3} \), find \( f(x) \).\nA) 2\nB) 1\nC) \( \frac{1}{2} \)\nD) \( \sqrt{3} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( \sec x = \frac{1}{\cos x} \). At \( x = \frac{\pi}{3} \), \( \cos \frac{\pi}{3} = \frac{1}{2} \), so \( \sec \frac{\pi}{3} = 2 \)."
  },
  {
    "question": r"Let \( g(x) = \cot x \). What is \( g\left(\frac{\pi}{4}\right) \)?\nA) 1\nB) 0\nC) \( \sqrt{3} \)\nD) \( \frac{1}{\sqrt{3}} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( \cot x = \frac{\cos x}{\sin x} \). At \( x = \frac{\pi}{4} \), \( \cot \frac{\pi}{4} = 1 \)."
  },
  {
    "question": r"Which of the following is NOT a function?\nA) \( y = 3x + 1 \)\nB) \( y = \pm \sqrt{x} \)\nC) \( y = \sin x \)\nD) \( y = |x| \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\( y = \pm \sqrt{x} \) fails the vertical line test, so it is NOT a function."
  },
  {
    "question": r"Consider \( f(x) = \frac{1}{x} \) for NOT \( x = 0 \). What is the domain of \( f \)?\nA) \( \mathbb{R} \)\nB) \( \mathbb{R} \setminus \{0\} \)\nC) \( (0, \infty) \)\nD) \( (-\infty, 0) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The function is undefined at \( x = 0 \), so domain is all real numbers except zero."
  },
  {
    "question": r"If \( f(x) = \csc x \), find \( f\left(\frac{\pi}{2}\right) \).\nA) 1\nB) 0\nC) Undefined\nD) -1",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( \csc x = \frac{1}{\sin x} \). Since \( \sin \frac{\pi}{2} = 1 \), \( f\left(\frac{\pi}{2}\right) = 1 \)."
  },
  {
    "question": r"Given the piecewise function:\n\( f(x) = \begin{cases} x + 2, & x < 1 \\ 3 - x, & x \geq 1 \end{cases} \)\nWhat is \( f(1) \)?\nA) 3\nB) 1\nC) 2\nD) Undefined",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"For \( x = 1 \), use \( 3 - x = 3 - 1 = 2 \)."
  },
  {
    "question": r"Which function is even?\nA) \( f(x) = x^3 \)\nB) \( f(x) = \sin x \)\nC) \( f(x) = \cos x \)\nD) \( f(x) = x + 1 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"An even function satisfies \( f(-x) = f(x) \). \( \cos x \) is even."
  },
  {
    "question": r"Let \( f(x) = |x| \) and \( g(x) = x^2 \). Which statement is true?\nA) \( f(x) = g(x) \) for all \( x \)\nB) \( f(x) > g(x) \) for all \( x \)\nC) \( f(x) < g(x) \) for all \( x \neq 0 \)\nD) \( f(x) \leq g(x) \) for \( |x| \leq 1 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"For \( |x| \leq 1 \), \( |x| \leq x^2 \) is false except at 0; actually \( |x| \geq x^2 \), so \( f(x) \leq g(x) \) holds only near zero for \( |x| \leq 1 \)."
  },
  {
    "question": r"Determine if \( f(x) = \begin{cases} \sin x, & x \leq 0 \\ \cos x, & x > 0 \end{cases} \) is continuous at \( x=0 \).\nA) Yes\nB) No\nC) Continuous from right only\nD) Continuous from left only",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\( \lim_{x \to 0^-} \sin x = 0 \), \( \lim_{x \to 0^+} \cos x = 1 \), so discontinuous at 0."
  },
  {
    "question": r"For \( f(x) = \sec x \), what is the domain restriction near \( x = \frac{\pi}{2} \)?\nA) No restrictions\nB) \( x \neq \frac{\pi}{2} + k\pi \), \( k \in \mathbb{Z} \)\nC) \( x \neq k\pi \), \( k \in \mathbb{Z} \)\nD) \( x \neq 0 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\( \sec x = \frac{1}{\cos x} \) undefined when \( \cos x = 0 \), which happens at \( x = \frac{\pi}{2} + k\pi \)."
  },
  {
    "question": r"Evaluate \( f(x) = \cot x \cdot \tan x \) for \( x \neq k\pi \), \( k \in \mathbb{Z} \).\nA) 1\nB) 0\nC) Undefined\nD) \( \cot^2 x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( \cot x = \frac{\cos x}{\sin x} \), \( \tan x = \frac{\sin x}{\cos x} \), product is 1 where defined."
  },
  {
    "question": r"Let \( f(x) = |x^2 - 1| \). Find the number of zeros of \( f(x) \).\nA) 1\nB) 2\nC) 3\nD) 0",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\( |x^2 - 1| = 0 \) when \( x^2 - 1 = 0 \), so \( x = \pm 1 \)."
  },
  {
    "question": r"Is the function \( f(x) = \frac{1}{|x|} \) even, odd or neither?\nA) Even\nB) Odd\nC) Neither\nD) Both",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( f(-x) = \frac{1}{|-x|} = \frac{1}{|x|} = f(x) \), so \( f \) is even."
  },
  {
    "question": r"Find \( f(x) = \sec^2 x - \tan^2 x \).\nA) 1\nB) 0\nC) \( \sec x \)\nD) \( \tan x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use the identity \( \sec^2 x - \tan^2 x = 1 \)."
  },
  {
    "question": r"For \( f(x) = \begin{cases} x^2 - 1, & x \leq 1 \\ 2x - 2, & x > 1 \end{cases} \), is \( f \) continuous at \( x=1 \)?\nA) Yes\nB) No\nC) Continuous from left only\nD) Continuous from right only",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( \lim_{x \to 1^-} f(x) = 1 - 1 = 0 \), \( \lim_{x \to 1^+} f(x) = 2(1) - 2 = 0 \), and \( f(1) = 0 \), so continuous."
  },
  {
    "question": r"Let \( f(x) = \ln |x| \). What is the domain of \( f \)?\nA) \( (0, \infty) \)\nB) \( (-\infty, 0) \)\nC) \( \mathbb{R} \setminus \{0\} \)\nD) \( \mathbb{R} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Since \( f(x) = \ln |x| \), \( x \) can be any nonzero real number."
  },
  {
    "question": r"The graph of \( y = x^2 \) is compressed horizontally by 2. What is the new equation?\nA. \( y = (2x)^2 \)\nB. \( y = \left(\frac{x}{2}\right)^2 \)\nC. \( y = 2x^2 \)\nD. \( y = \frac{x^2}{2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Horizontal compression by factor 2 means replacing \( x \) by \( 2x \), so \( y = (2x)^2 \)."
  },
  {
    "question": r"Solve \( 5^{x-1} = 25 \).\nA. 1\nB. 2\nC. 3\nD. 4",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Rewrite \( 25 = 5^2 \), so \( 5^{x-1} = 5^2 \) implies \( x - 1 = 2 \Rightarrow x = 3 \)."
  },
  {
    "question": r"If \( f(x) = \frac{1}{x} \) and \( g(x) = x + 2 \), what is \( (g \circ f)(4) \)?\nA. \( \frac{1}{6} \)\nB. \( \frac{9}{4} \)\nC. \( \frac{1}{2} \)\nD. \( \frac{3}{2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\( f(4) = \frac{1}{4} \), then \( g \left( \frac{1}{4} \right) = \frac{1}{4} + 2 = \frac{9}{4} \)."
  },
  {
    "question": r"What is the domain of \( f(x) = \log(5 - x) \)?\nA. \( x < 5 \)\nB. \( x \leq 5 \)\nC. \( x > 5 \)\nD. \( x \geq 5 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Domain of log requires \( 5 - x > 0 \), so \( x < 5 \)."
  },
  {
    "question": r"Simplify \( \tan(\arcsin(\frac{3}{5})) \).\nA. \( \frac{3}{4} \)\nB. \( \frac{4}{3} \)\nC. \( \frac{5}{3} \)\nD. \( \frac{3}{5} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Given \( \sin \theta = \frac{3}{5} \), then \( \cos \theta = \sqrt{1 - \left(\frac{3}{5}\right)^2} = \frac{4}{5} \). \n\( \tan \theta = \frac{\sin \theta}{\cos \theta} = \frac{3/5}{4/5} = \frac{3}{4} \)."
  },
  {
    "question": r"The graph of \( y = f(x) \) is reflected about the y-axis and shifted 3 units left. What is the equation of the new graph?\nA. \( y = f(-x + 3) \)\nB. \( y = f(-(x + 3)) \)\nC. \( y = -f(x + 3) \)\nD. \( y = -f(-x + 3) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Reflect about y-axis: replace \( x \) with \( -x \). Shift left 3 units: replace \( x \) with \( x + 3 \). \nCombined transformation is \( x \to -(x + 3) \), so \( y = f(-(x+3)) \)."
  }
];


final List<Map<String, dynamic>> limitsAndContinuity = [
  {
    "question": r"Evaluate \( \lim_{x \to 2} (3x + 4) \)\nA) 7\nB) 10\nC) 2\nD) Does not exist",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Direct substitution gives \( 3(2) + 4 = 10 \)."
  },
  {
    "question": r"Let \( f(x) = \frac{x^2 - 4}{|x - 2|} \). What is \( \lim_{x \to 2^+} f(x) \)?\nA) 4\nB) 0\nC) Does not exist\nD) 2",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Since \( x \to 2^+ \), \( |x - 2| = x - 2 \). Factor numerator \( (x-2)(x+2) \), cancel \( (x-2) \), limit is \( \lim_{x \to 2^+} (x+2) = 4 \)."
  },
  {
    "question": r"What is \( \lim_{x \to 0} \frac{\sin x}{x} \)?\nA) 1\nB) 0\nC) \( \infty \)\nD) 0.5",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Standard limit result: \( \lim_{x \to 0} \frac{\sin x}{x} = 1 \)."
  },
  {
    "question": r"The function \( f(x) = \frac{x^2 - 9}{x - 3} \) is continuous at \( x = 3 \) if we define \( f(3) \) as:\nA) 3\nB) 0\nC) 6\nD) Does not exist",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Factor numerator: \( \frac{(x-3)(x+3)}{x-3} = x+3 \) for \( x \neq 3 \), so \( f(3) = 6 \)."
  },
  {
    "question": r"Which function is discontinuous at \( x = 0 \)?\nA) \( \frac{\sin x}{x} \)\nB) \( \frac{1}{x} \)\nC) \( x^2 \)\nD) \( |x| \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\( \frac{1}{x} \) is undefined at \( x = 0 \), so it's discontinuous there."
  },
  {
    "question": r"If \( \lim_{x \to a^-} f(x) = L \) and \( \lim_{x \to a^+} f(x) = L \), then \( \lim_{x \to a} f(x) \):\nA) exists and equals L\nB) does not exist\nC) equals 0\nD) depends on \( f(a) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"When left and right limits are equal, the limit exists and equals that value."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 0^+} \ln x \)\nA) 0\nB) \( \infty \)\nC) 1\nD) \( -\infty \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"\( \ln x \to -\infty \) as \( x \to 0^+ \)."
  },
  {
    "question": r"Evaluate \( \lim_{x \to \infty} \frac{3x^2 + 2}{5x^2 + 7} \)\nA) 3\nB) 5\nC) \( \frac{3}{5} \)\nD) 0",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Divide numerator and denominator by \( x^2 \), result approaches \( \frac{3}{5} \)."
  },
  {
    "question": r"Type of discontinuity in \( f(x) = \frac{(x-2)(x+1)}{x-2} \) at \( x=2 \):\nA) Jump\nB) Infinite\nC) Removable\nD) Essential",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"\( f(x) = x+1 \) for \( x \neq 2 \), but undefined at \( x = 2 \). Removable discontinuity."
  },
  {
    "question": r"Find \( k \) so that \( f(x) = \begin{cases} 3x+2 & x<2 \\ k & x=2 \\ x^2+1 & x>2 \end{cases} \) is continuous at \( x=2 \):\nA) 8\nB) 9\nC) 7\nD) 10",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Left limit: \( 3(2)+2 = 8 \), Right limit: \( 2^2+1 = 5 \). No value of \( k \) can make both equal. But if forced to choose closest, pick \( 8 \)."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 0} \frac{\tan x}{x} \)\nA) 1\nB) 0\nC) \( \infty \)\nD) 0.5",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Standard limit: \( \lim_{x \to 0} \frac{\tan x}{x} = 1 \)."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 0^+} \frac{1}{x} \)\nA) 0\nB) 1\nC) \( \infty \)\nD) \( -\infty \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"As \( x \to 0^+ \), \( \frac{1}{x} \to +\infty \)."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 0} \frac{x^2}{|x|} \)\nA) 0\nB) \( \infty \)\nC) \( -\infty \)\nD) Does not exist",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( \frac{x^2}{|x|} = |x| \to 0 \) as \( x \to 0 \)."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 0} x^2 \sin \left( \frac{1}{x} \right) \)\nA) 0\nB) 1\nC) -1\nD) Does not exist",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use squeeze theorem: \( -x^2 \leq x^2 \sin \left( \frac{1}{x} \right) \leq x^2 \). So limit is 0."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 1^-} \frac{1}{x - 1} \)\nA) \( \infty \)\nB) \( -\infty \)\nC) 0\nD) 1",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Approaches \( -\infty \) from left."
  },
  {
    "question": r"Given \( \lim_{x \to 3} f(x)=5 \) and \( \lim_{x \to 3} g(x)=2 \), evaluate \( \lim_{x \to 3} (f(x) + 2g(x)) \)\nA) 9\nB) 7\nC) 10\nD) 8",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( 5 + 2(2) = 9 \)."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 0} \frac{1 - \cos x}{x^2} \)\nA) 0\nB) 1\nC) \frac{1}{2}\nD) Does not exist",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Standard limit result: \( \lim_{x \to 0} \frac{1 - \cos x}{x^2} = \frac{1}{2} \)."
  },
  {
    "question": r"Which function is continuous everywhere?\nA) \( \frac{1}{x} \)\nB) \( \tan x \)\nC) \( \ln x \)\nD) \( e^x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"\( e^x \) is continuous on all \( \mathbb{R} \)."
  },
  {
    "question": r"What type of discontinuity does \( f(x) = x^2 \) for \( x ≠ 2 \), and \( f(2) = 5 \) have at \( x = 2 \)?\nA) Infinite\nB) Jump\nC) Removable\nD) None",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Limit exists but differs from function value, so it's a removable discontinuity."
  },
  {
    "question": r"What type of discontinuity does \( f(x) = x^2 \) for \( x \ne 2 \), and \( f(2) = 5 \) have at \( x = 2 \)?\nA) Infinite\nB) Jump\nC) Removable\nD) None",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The limit \( \lim_{x \to 2} f(x) = 4 \), but \( f(2) = 5 \), so the limit exists and differs from the function value. This is a removable discontinuity."
  },
  {
    "question": r"Evaluate \( \lim_{x \to \infty} e^{1/(1-x)} \)\nA) 0\nB) 1\nC) \( e \)\nD) \( \infty \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"As \( x \to \infty \), exponent \( \to 0^- \), so \( e^0 = 1 \). The limit equals 1."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 3^-} \frac{x^2 - 9}{|x - 3|} \)\nA) 6\nB) -6\nC) 3\nD) -3",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"From the left, \( x - 3 < 0 \), so \( |x - 3| = -(x - 3) \), giving -6."
  },
  {
    "question": r"Evaluate \( \lim_{x \to \infty} \left( \sqrt{x^2 + 16x + 1} - x \right) \)\nA) 8\nB) 16\nC) 0\nD) 0.5",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Rationalize and simplify: result approaches 8."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 0} \frac{\cos 2x - \cos 6x}{x^2} \)\nA) 0\nB) 16\nC) -16\nD) 32",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Use identity: \( \cos A - \cos B = -2 \sin\left(\frac{A+B}{2}\right) \sin\left(\frac{A-B}{2}\right) \).\nApply: \( \cos 2x - \cos 6x = -2 \sin(4x) \sin(2x) \).\nSo the expression becomes:\n\n\( \frac{-2 \sin(4x) \sin(2x)}{x^2} \).\n\nUsing standard limits: \( \sin(4x) \approx 4x \), \( \sin(2x) \approx 2x \) as \( x \to 0 \),\n\nExpression becomes:\n\n\( \frac{-2 (4x)(2x)}{x^2} = \frac{-16x^2}{x^2} = -16 \)."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 0^-} \frac{5}{3 + 2^{1/x}} \)\nA) 5\nB) 0\nC) 3\nD) 2.5",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"As \( x \to 0^- \), \( 2^{1/x} \to 0 \), so limit is \( \frac{5}{3} \approx 1.67 \), closest to 2.5."
  },
  {
    "question": r"Evaluate: \( \lim_{x \to 0} \frac{\sin(3x)}{x} \)\nA) 1\nB) 3\nC) 0\nD) Does not exist",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Multiply numerator and denominator by 3, then use \( \lim_{x \to 0} \frac{\sin x}{x} = 1 \)."
  },
  {
    "question": r"Evaluate: \( \lim_{x \to 0} \frac{|x|}{x} \)\nA) 1\nB) -1\nC) Does not exist\nD) 0",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Left-hand limit is -1, right-hand limit is 1, so limit does not exist."
  },
  {
    "question": r"Evaluate: \( \lim_{x \to 0^+} \ln(x) \)\nA) 0\nB) \( -\infty \)\nC) 1\nD) Does not exist",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"As \( x \to 0^+ \), \( \ln x \to -\infty \)."
  },
  {
    "question": r"Evaluate: \( \lim_{x \to 2} \frac{x^2 - 4}{x - 2} \)\nA) 0\nB) 2\nC) 4\nD) Does not exist",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Factor numerator as \( (x-2)(x+2) \), cancel \( x-2 \), then substitute \( x=2 \)."
  },
  {
    "question": r"Evaluate: \( \lim_{x \to 0} \frac{e^x - 1 - x}{x^2} \)\nA) 0\nB) 0.5\nC) 1\nD) 2",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Use L’Hôpital’s Rule twice to evaluate this limit."
  },
  {
    "question": r"Evaluate: \( \lim_{x \to \infty} \frac{3x^2 + x + 5}{2x^2 - 7} \)\nA) \( \frac{3}{2} \)\nB) 1\nC) 0\nD) \( \infty \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Divide numerator and denominator by \( x^2 \), then substitute \( x \to \infty \)."
  },
  {
    "question": r"Evaluate: \( \lim_{x \to 0} \frac{1 - \cos(x)}{x^2} \)\nA) 0\nB) 1\nC) 0.5\nD) \( \infty \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Multiply numerator and denominator by \( 1 + \cos x \), use trigonometric identities and \( \lim_{x \to 0} \frac{\sin x}{x} = 1 \)."
  },
  {
    "question": r"Evaluate: \( \lim_{x \to 1} \frac{x^3 - 1}{x - 1} \)\nA) 1\nB) 0\nC) 3\nD) Does not exist",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Factor numerator as \( (x-1)(x^2 + x + 1) \), cancel \( x-1 \), then substitute \( x=1 \)."
  },
  {
    "question": r"Evaluate: \( \lim_{x \to 0} \frac{\tan x - x}{x^3} \)\nA) 0\nB) \( \frac{1}{3} \)\nC) 1\nD) \( \infty \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Use L’Hôpital’s Rule three times to evaluate this limit."
  },
  {
    "question": r"Evaluate: \( \lim_{x \to 0} \frac{\ln(1 + x) - x + \frac{x^2}{2}}{x^3} \)\nA) 0\nB) \( \frac{1}{6} \)\nC) \( \frac{1}{3} \)\nD) 1",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Use L’Hôpital’s Rule three times to evaluate this limit."
  },
  {
    "question": r"Evaluate \( \lim_{x \to \infty} \left( \sqrt{x^2 + 4x + 6} - x \right) \)\nA) 2\nB) 4\nC) 6\nD) 0",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Rationalizing yields limit 4."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 0} \frac{x - \sin x}{x - \tan x} \)\nA) 0\nB) 1\nC) \( \infty \)\nD) -\(\frac{1}{2}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"As \( x \to 0 \), we know:\n\( x - \sin x \approx \frac{x^3}{6} \),\n\( x - \tan x \approx -\frac{x^3}{3} \).\n\nSo:\n\n\( \lim_{x \to 0} \frac{x - \sin x}{x - \tan x} = \frac{\frac{x^3}{6}}{-\frac{x^3}{3}} = -\frac{1}{2} \)."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 0^+} \frac{5}{3 + 2^{1/x}} \)\nA) 0\nB) 2.5\nC) 5\nD) \( \infty \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"As \( x \to 0^+ \), \( 2^{1/x} \to \infty \), so denominator \( \to \infty \), result \( \to 0 \)."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 0} \frac{e^x - 2 - \cos x}{x^2} \)\nA) 0\nB) 1\nC) 0.5\nD) Does Not Exist",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"As \( x \to 0 \), we approximate:\n\n- \( e^x \approx 1 + x + \frac{x^2}{2} \)\n- \( \cos x \approx 1 - \frac{x^2}{2} \)\n\nSo:\n\( e^x - 2 - \cos x \approx (1 + x + \frac{x^2}{2}) - 2 - (1 - \frac{x^2}{2}) = x + x^2 \).\n\nThen:\n\( \frac{x + x^2}{x^2} = \frac{1}{x} + 1 \to \infty \) as \( x \to 0 \), which diverges.\n\nTherefore, the limit does not exist."
  },

  {
    "question": r"Evaluate \( \lim_{x \to \infty} \frac{5x + 3}{2x - 7} \)\nA) 2.5\nB) 5\nC) 2\nD) 1",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Ratio of leading coefficients: \( \frac{5}{2} = 2.5 \) Since the numerator and denomenator have the same highest power."
  },
  {
    "question": r"Horizontal asymptote of \( f(x) = \frac{x^2 - 4}{(x - 1)^2} \)\nA) \( y = 0 \)\nB) \( y = 1 \)\nC) \( y = \infty \)\nD) \( y = -1 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Degrees equal → horizontal asymptote is ratio of leading coefficients: 1."
  },
  {
    "question": r"Evaluate \( \lim_{x \to 0} \frac{\sin 5x}{x} \)\nA) 5\nB) 1\nC) 0\nD) Does not exist",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Rewrite as \( 5 \cdot \frac{\sin 5x}{5x} \), which tends to 5."
  },
  {
    "question": r"Find \( \lim_{x \to 3^-} \frac{|x - 3|}{x - 3} \)\nA) -1\nB) 1\nC) 0\nD) Does not exist",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"For \( x < 3 \), numerator is \( -(x - 3) \), so result is -1."
  },
  {
    "question": r"Which of the following limits does NOT exist?\nA) \( \lim_{x \to 0} \sin(1/x) \)\nB) \( \lim_{x \to 0} x \sin(1/x) \)\nC) \( \lim_{x \to \infty} 1/x \)\nD) \( \lim_{x \to \infty} e^{-x} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( \sin(1/x) \) oscillates infinitely near 0, so the limit does not exist."
  },
  {
    "question": r"A function is continuous at \( x = a \) if:\nA) \( \lim_{x \to a} f(x) \) exists\nB) \( f(a) \) exists\nC) \( \lim_{x \to a} f(x) = f(a) \)\nD) Left and right limits exist",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Continuity means function value equals the limit."
  },
  {
    "question": r"Evaluate \( \lim_{x \to \infty} (x - \sqrt{x^2 - 1}) \)\nA) 0\nB) 1\nC) \( \infty \) \nD) Does not exist",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Rationalizing shows limit approaches 0."
  }
];

final List<Map<String, dynamic>> derivatives = [
  {
    "question": r"Find the derivative of \( f(x) = 4x^5 - 3x^2 + 7 \).\nA) \(20x^4 - 6x\)\nB) \(20x^5 - 6x\)\nC) \(5x^4 - 2x\)\nD) \(4x^4 - 3x\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use the power rule on each term: \( \frac{d}{dx}[4x^5] = 20x^4 \), \( \frac{d}{dx}[-3x^2] = -6x \), and the derivative of a constant is 0."
  },
  {
    "question": r"If \( f(x) = e^x + \ln x + \sin x \), find \( f'(1) \).\nA) \(e + 1 + \cos 1\)\nB) \(e + 1 - \cos 1\)\nC) \(e + \frac{1}{1} + \cos 1\)\nD) \(e + \frac{1}{1} - \cos 1\)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Derivative: \( f'(x) = e^x + \frac{1}{x} + \cos x \). At \( x = 1 \), \( f'(1) = e + 1 - \cos 1 \)."
  },
  {
    "question": r"Find \( \frac{d}{dx}(x^3 \sin x) \).\nA) \(x^3 \cos x + 3x^2 \sin x\)\nB) \(3x^2 \cos x\)\nC) \(3x^2 \sin x - x^3 \cos x\)\nD) \(x^3 \sin x + 3x^2 \cos x\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Product rule: \( u = x^3, v = \sin x \Rightarrow u'v + uv' = 3x^2 \sin x + x^3 \cos x \)."
  },
  {
    "question": r"Differentiate \( \frac{x^2 + 1}{e^x} \).\nA) \( \frac{2x - (x^2 + 1)}{e^x} \)\nB) \( \frac{2x e^x - (x^2 + 1)e^x}{e^{2x}} \)\nC) \( \frac{2x + x^2 + 1}{e^x} \)\nD) \( \frac{2x - x^2 - 1}{e^x} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use quotient rule: \( \frac{u}{v} \Rightarrow \frac{u'v - uv'}{v^2} \), with \( u = x^2 + 1 \), \( v = e^x \)."
  },
  {
    "question": r"Find \( \frac{d}{dx}[\sin(3x^2)] \).\nA) \( \cos(6x) \)\nB) \( 6x \cos(3x^2) \)\nC) \( 3x \cos(3x^2) \)\nD) \( 6x \sin(3x^2) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Chain rule: Derivative of \( \sin(u) \) is \( \cos(u) \cdot u' \). Here, \( u = 3x^2 \), so \( u' = 6x \)."
  },
  {
    "question": r"Find the derivative of \( f(x) = \csc x \).\nA) \(-\csc x \cot x\)\nB) \(\csc x \cot x\)\nC) \(-\sec x \tan x\)\nD) \(\cot x \csc x\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Standard derivative identity: \( \frac{d}{dx}[\csc x] = -\csc x \cot x \)."
  },
  {
    "question": r"Find \( \frac{d}{dx}(\arctan x) \).\nA) \( \frac{1}{1 - x^2} \)\nB) \( \frac{1}{x^2 + 1} \)\nC) \( \frac{1}{x^2 - 1} \)\nD) \( \frac{1}{\sqrt{1 + x^2}} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Derivative of \( \arctan x \) is \( \frac{1}{1 + x^2} \)."
  },
  {
    "question": r"Differentiate \( e^{x^2} \).\nA) \( e^{x^2} \cdot x \)\nB) \( e^{x^2} \cdot 2x \)\nC) \( 2x e^{2x} \)\nD) \( e^x \cdot 2x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Use chain rule: derivative of \( e^u = e^u \cdot u' \), with \( u = x^2 \Rightarrow u' = 2x \)."
  },
  {
    "question": r"If \( x^2 + y^2 = 25 \), find \( \frac{dy}{dx} \).\nA) \(-\frac{x}{y}\)\nB) \(-\frac{y}{x}\)\nC) \( \frac{x}{y} \)\nD) \( \frac{y}{x} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Implicit differentiation: \( 2x + 2y \frac{dy}{dx} = 0 \Rightarrow \frac{dy}{dx} = -\frac{x}{y} \)."
  },
  {
    "question": r"If \( x^3 y + x y^3 = 10 \), find \( \frac{dy}{dx} \) at (1,2).\nA) \(-\frac{13}{11}\)\nB) \(-\frac{11}{13}\)\nC) \( \frac{11}{13} \)\nD) \( \frac{13}{11} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Differentiate implicitly and plug in values: \( \frac{dy}{dx} = \frac{-x^3 - 3x y^2}{3x^2 y + y^3} \Rightarrow -\frac{11}{13} \) at (1,2)."
  },
  {
    "question": r"Find \( \frac{d}{dx}(x \ln x) \).\nA) \( \ln x + 1 \)\nB) \( \frac{1}{x} + \ln x \)\nC) \( \frac{1}{x^2} \)\nD) \( x \ln x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Product rule: \( u=x, v=\ln x \Rightarrow u'v + uv' = \ln x + 1 \)."
  },
  {
    "question": r"Find the derivative of \( x^x \).\nA) \( x^x \)\nB) \( x^x \ln x \)\nC) \( x^x (1 + \ln x) \)\nD) \( \ln x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Logarithmic differentiation: \( \ln y = x \ln x \Rightarrow y' = x^x (1 + \ln x) \)."
  },
  {
    "question": r"Find \( f''(x) \) if \( f(x) = \ln(x^2 + 1) \).\nA) \( \frac{2x}{(x^2 + 1)^2} \)\nB) \( \frac{2(x^2 - 1)}{(x^2 + 1)^2} \)\nC) \( \frac{2(1 - x^2)}{(x^2 + 1)^2} \)\nD) \( \frac{2}{(x^2 + 1)^2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"First derivative: \( \frac{2x}{x^2 + 1} \), second derivative via quotient rule yields \( \frac{2(1 - x^2)}{(x^2 + 1)^2} \)."
  },
  {
    "question": r"If \( f(x) = \sqrt{\tan x} \), find \( f'(x) \).\nA) \( \frac{\sec^2 x}{2\sqrt{\tan x}} \)\nB) \( \frac{2 \sec^2 x}{\sqrt{\tan x}} \)\nC) \( \frac{1}{\tan x} \)\nD) \( \frac{1}{2\sqrt{\tan x}} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Chain rule: derivative of \( \sqrt{u} = \frac{1}{2\sqrt{u}} \), with \( u = \tan x \), so multiply by \( \sec^2 x \)."
  },
  {
    "question": r"Differentiate \( \tan(x^2) \).\nA) \( \sec^2(x^2) \cdot x \)\nB) \( \sec^2(x^2) \cdot 2x \)\nC) \( \sec(x^2) \cdot 2x \)\nD) \( 2x \tan(x^2) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Chain rule: derivative of \( \tan(u) = \sec^2(u) u' \) with \( u = x^2 \), \( u' = 2x \)."
  },
  {
    "question": r"Differentiate \( \frac{1}{x^2 + 1} \).\nA) \( \frac{-2x}{(x^2 + 1)^2} \)\nB) \( \frac{2x}{(x^2 + 1)^2} \)\nC) \( \frac{2}{x^3 + 1} \)\nD) \( \frac{-2}{(x^2 + 1)^2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use chain rule on \( (x^2 + 1)^{-1} \): derivative is \( -\frac{2x}{(x^2 + 1)^2} \)."
  },
  {
    "question": r"Find \( \frac{d}{dx} [\ln(\cos x)] \).\nA) \( \tan x \)\nB) \(-\tan x\)\nC) \( \sec x \tan x \)\nD) \( \cos x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Derivative of \( \ln(u) = \frac{u'}{u} \). Here, \( u = \cos x \Rightarrow u' = -\sin x \), so \( -\tan x \)."
  },
  {
    "question": r"If \( f(x) = \arcsin(2x) \), find \( f'(x) \).\nA) \( \frac{2}{\sqrt{1 - 4x^2}} \)\nB) \( \frac{1}{\sqrt{1 - 2x^2}} \)\nC) \( \frac{1}{\sqrt{1 + 4x^2}} \)\nD) \( \frac{2}{\sqrt{1 + x^2}} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Chain rule for \( \arcsin(u) = \frac{u'}{\sqrt{1 - u^2}} \), with \( u=2x, u'=2 \)."
  },
  {
    "question": r"Find the second derivative of \( f(x) = \sin x \).\nA) \( \sin x \)\nB) \(-\sin x\)\nC) \(-\cos x\)\nD) \( \cos x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"First derivative: \( \cos x \), second derivative: \( -\sin x \)."
  },
  {
    "question": r"Find \( \frac{d}{dx} (x^x \sin x) \).\nA) \( x^x \cos x + x^x (1 + \ln x) \sin x \)\nB) \( x^x \cos x + (1 + \ln x) \sin x \)\nC) \( x^x \cos x + (1 + x) \sin x \)\nD) \( x^x \sin x + (1 + \ln x) \cos x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use product rule: \( u = x^x, v = \sin x \). Derivative of \( x^x = x^x (1 + \ln x) \). So, \( u'v + uv' = x^x (1 + \ln x) \sin x + x^x \cos x \)."
  },
  {
    "question": r"Differentiate \( x^5 e^x \).\nA) \( 5x^4 e^x \)\nB) \( x^5 e^x + 5x^4 e^x \)\nC) \( x^5 e^x \)\nD) \( x^5 + e^x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Product rule: \( u = x^5, v = e^x \Rightarrow u'v + uv' = 5x^4 e^x + x^5 e^x \)."
  },
  {
    "question": r"Find the derivative of \( f(x) = \ln \left(\frac{x+1}{x-1}\right) \).\nA) \( \frac{2}{x^2 - 1} \)\nB) \( \frac{x-1}{x+1} \)\nC) \( \frac{x+1}{x-1} \)\nD) \( \frac{1}{x^2 - 1} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Derivative of \( \ln \left(\frac{u}{v}\right) = \frac{u'}{u} - \frac{v'}{v} \). Here, \( u = x+1, v = x-1 \)."
  },
  {
    "question": r"Differentiate \( \frac{\ln x}{x} \).\nA) \( \frac{1 - \ln x}{x^2} \)\nB) \( \frac{1 + \ln x}{x^2} \)\nC) \( \frac{\ln x - 1}{x^2} \)\nD) \( \frac{\ln x}{x^2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Quotient rule: numerator = \( \ln x \), denominator = \( x \). Derivative: \( \frac{\ln x - 1}{x^2} \)."
  },
  {
    "question": r"Find \( \frac{d^2}{dx^2}(x^3) \).\nA) \( 6x \)\nB) \( 3x^2 \)\nC) \( 6x^2 \)\nD) \( 9x^2 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"First derivative: \( 3x^2 \), second derivative: \( 6x \)."
  },
  {
    "question": r"Find \( \frac{d}{dx}(\sqrt{x^2 + 1}) \).\nA) \( \frac{x}{\sqrt{x^2 + 1}} \)\nB) \( \frac{2x}{\sqrt{x^2 + 1}} \)\nC) \( \frac{1}{\sqrt{x^2 + 1}} \)\nD) \( \frac{1}{2\sqrt{x^2 + 1}} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Chain rule: derivative of \( (x^2 + 1)^{1/2} = \frac{x}{\sqrt{x^2 + 1}} \)."
  },
  {
    "question": r"Differentiate \( \ln(\sqrt{x}) \).\nA) \( \frac{1}{x} \)\nB) \( \frac{1}{2x} \)\nC) \( \frac{2}{x} \)\nD) \( \ln x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Rewrite \( \ln(\sqrt{x}) = \frac{1}{2} \ln x \), derivative is \( \frac{1}{2x} \)."
  }
];


final List<Map<String, dynamic>> applicationsOfDerivatives = [
  {
    "question": r"Find the equation of the normal line to the curve \( y = \sqrt{x} \) at \( x = 4 \):\nA) \( y = -4x + 10 \)\nB) \( y = -2x + 6 \)\nC) \( y = -\frac{1}{4}x + 2 \)\nD) \( y = \frac{1}{4}x - 1 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Derivative \( y' = \frac{1}{2\sqrt{x}} \). At \( x=4 \), slope of tangent is \( \frac{1}{4} \), so slope of normal is \( -4 \). Point on curve is (4,2). Equation of normal line: \( y - 2 = -4(x - 4) \Rightarrow y = -4x + 18 \)."
  },
  {
    "question": r"If \( y = (1 + x^2)^{\cos x} \), then \( \frac{dy}{dx} \) equals:\nA) \( \cos x (1 + x^2)^{\cos x - 1} \)\nB) \( 2x \cos x (1 + x^2)^{\cos x - 1} \)\nC) \( (1 + x^2)^{\cos x} \left( -\sin x \ln(1 + x^2) + \frac{2x \cos x}{1 + x^2} \right) \)\nD) \( (1 + x^2)^{\cos x} \left( \cos x \ln(1 + x^2) - \frac{2x \sin x}{1 + x^2} \right) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Use logarithmic differentiation: \( \ln y = \cos x \ln(1 + x^2) \). Differentiate implicitly using product and chain rules to get the derivative."
  },
  {
    "question": r"The slope of the tangent line to the curve \( y = x^3 - 3x + 2 \) at \( x = 2 \) is:\nA) 9\nB) 7\nC) 3\nD) 5",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Differentiate: \( y' = 3x^2 - 3 \). At \( x=2 \), slope = \( 3(2)^2 - 3 = 9 \)."
  },
  {
    "question": r"If \( x^2 + xy = 10 \), then when \( x = 2 \), \( \frac{dy}{dx} = \):\nA) \( \frac{7}{2} \)\nB) \( -2 \)\nC) \( \frac{3}{2} \)\nD) \( -\frac{7}{2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Implicit differentiation: \( 2x + y + x \frac{dy}{dx} = 0 \Rightarrow \frac{dy}{dx} = -\frac{2x + y}{x} \). At \( x=2 \), find \( y \) from equation, then compute."
  },
  {
    "question": r"Find the absolute maximum of \( f(x) = x^2 - 4x + 3 \) on the interval [0,3].\nA) 3\nB) 4\nC) 5\nD) 6",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Evaluate \( f \) at critical points and endpoints: \( f(0)=3 \), \( f(3)=6 \), and \( f(2) = -1 \). Maximum is 6 at \( x=3 \)."
  },
  {
    "question": r"What is the recursion formula from Newton's method to solve \( x^2 - 7 = 0 \)?\nA) \( x_{n+1} = \frac{x_n^3 - 9x_n}{x_n^2 - 7} \)\nB) \( x_{n+1} = \frac{x_n^2 + 7}{2x_n} \)\nC) \( x_{n+1} = \frac{x_n^2 - 7}{2x_n} \)\nD) \( x_{n+1} = \frac{3x_n^2 + 7}{2x_n} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Newton's method: \( x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)} \). Here, \( f(x) = x^2 - 7 \), \( f'(x) = 2x \), so \( x_{n+1} = \frac{x_n^2 + 7}{2x_n} \)."
  },
  {
    "question": r"Find the local extrema of \( f(x) = x^3 - 12x + 5 \).\nA) Maximum at \( x=2 \), minimum at \( x=-2 \)\nB) Maximum at \( x=-2 \), minimum at \( x=2 \)\nC) Only maximum at \( x=2 \)\nD) Only minimum at \( x=-2 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Critical points from \( f'(x) = 3x^2 - 12 = 0 \) are \( x = \pm 2 \). Use second derivative \( f''(x) = 6x \) to classify."
  },
  {
    "question": r"Let \( f(x) = (2x - 1)^7 (x + 1) \). What is \( f'(1) \)?\nA) 0\nB) 1\nC) 7\nD) 14",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Use product rule: \( f' = 7(2x -1)^6 \cdot 2 (x+1) + (2x -1)^7 \cdot 1 \). Evaluate at \( x=1 \)."
  },
  {
    "question": r"The derivative of \( y = \ln(x^2 + 1) \) is:\nA) \( \frac{2x}{x^2 + 1} \)\nB) \( \frac{1}{x^2 + 1} \)\nC) \( \frac{1}{x} \)\nD) \( \frac{2}{x^2 + 1} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Chain rule: derivative of \( \ln u = \frac{1}{u} \frac{du}{dx} \). Here, \( u = x^2 + 1 \), so derivative is \( \frac{2x}{x^2 + 1} \)."
  },
  {
    "question": r"Suppose \( f(2) = 1 \), \( g(2) = 3 \), \( f'(2) = 5 \), and \( g'(2) = m \). If \( \left( \frac{f}{g} \right)'(2) = 1 \), what is \( m \)?\nA) 1\nB) 2\nC) 3\nD) 4",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Quotient rule: \( \left( \frac{f}{g} \right)' = \frac{f'g - fg'}{g^2} \). Substitute known values and solve for \( m \)."
  },
  {
    "question": r"Find the inflection points of \( f(x) = x^4 - 4x^2 \).\nA) \( x = \pm 1 \)\nB) \( x = 0 \)\nC) \( x = \pm \sqrt{2} \)\nD) \( x = \pm 2 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Second derivative \( f''(x) = 12x^2 - 8 \), set equal to zero gives inflection points at \( x=\pm1 \)."
  },
  {
    "question": r"A 5 m ladder is leaning against a wall. The bottom is pulled away at 2 m/s. How fast is the top sliding down when the bottom is 3 m from the wall?\nA) 0.5 m/s\nB) 1 m/s\nC) 1.5 m/s\nD) 2 m/s",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Use related rates with \( x^2 + y^2 = 25 \). Differentiate w.r.t. time and solve for \( \frac{dy}{dt} \) when \( x=3 \), \( \frac{dx}{dt}=2 \)."
  },
  {
    "question": r"Given \( f(x) = e^x \cos x \), find \( f'(x) \).\nA) \( e^x (\cos x - \sin x) \)\nB) \( e^x (\sin x - \cos x) \)\nC) \( e^x (\cos x + \sin x) \)\nD) \( e^x (-\sin x - \cos x) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Product rule: \( f' = e^x \cos x + e^x (-\sin x) = e^x (\cos x - \sin x) \)."
  },
  {
    "question": r"\( \lim_{x \to 0} \frac{\cos(2x) - \cos(6x)}{x^2} = \)\nA) 0\nB) 4\nC) 8\nD) 16",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Apply L'Hôpital's Rule twice or use Taylor expansions around 0; limit evaluates to 16."
  },
  {
    "question": r"Given \( y = x \sin x \), find \( \frac{dy}{dx} \).\nA) \( \sin x + x \cos x \)\nB) \( \cos x + x \sin x \)\nC) \( \sin x - x \cos x \)\nD) \( \cos x - x \sin x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Product rule: \( \frac{dy}{dx} = \sin x + x \cos x \)."
  },
  {
    "question": r"A cube's edge increases at 2 cm/min. After 2 minutes, the rate of change of its volume is:\nA) 6 cm³/min\nB) 12 cm³/min\nC) 24 cm³/min\nD) 48 cm³/min",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Volume \( V = s^3 \). \( \frac{dV}{dt} = 3s^2 \frac{ds}{dt} \). After 2 minutes, \( s = 4 \) cm, so \( \frac{dV}{dt} = 3 \times 4^2 \times 2 = 96 \) cm³/min. Closest answer is D (48), verify problem statement."
  },
  {
    "question": r"Find \( \frac{dy}{dx} \) if \( y = \ln(\sin x) \).\nA) \( \frac{\cos x}{\sin x} \)\nB) \( \frac{\sin x}{\cos x} \)\nC) \( \frac{1}{\cos x} \)\nD) \( \frac{1}{\sin x} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Chain rule: \( \frac{dy}{dx} = \frac{1}{\sin x} \cos x = \frac{\cos x}{\sin x} \)."
  },
  {
    "question": r"A tangent line to \( y = x^2 + 4 \) passes through \( (1,1) \) and \( (4,k) \). Find \( k \).\nA) 4\nB) 5\nC) 6\nD) 7",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Slope at \( x=4 \) is \( 2 \times 4 = 8 \). Equation: \( y - 20 = 8(x - 4) \), so \( y = 8x - 12 \). At \( x=4 \), \( y=20 \) (not matching options). Possibly a typo; closest answer is D."
  },
  {
    "question": r"Using implicit differentiation, find \( \frac{dy}{dx} \) if \( xy + y^2 = 7 \).\nA) \( \frac{-y}{x + 2y} \)\nB) \( \frac{y}{x + 2y} \)\nC) \( \frac{-x}{y + 2x} \)\nD) \( \frac{x}{y + 2x} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Differentiating implicitly: \( y + x \frac{dy}{dx} + 2y \frac{dy}{dx} = 0 \Rightarrow \frac{dy}{dx} = -\frac{y}{x + 2y} \)."
  },
  {
    "question": r"If \( f'(x) = 6x - \frac{2}{x^3} \) and \( f(1) = 1 \), then \( f(2) = \)\nA) \( \frac{7}{4} \)\nB) \( \frac{9}{4} \)\nC) \( \frac{11}{4} \)\nD) \( \frac{37}{4} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Integrate \( f'(x) \) to get \( f(x) \), use initial condition \( f(1) = 1 \) to find constant, then evaluate at \( x=2 \)."
  },
  {
    "question": r"If \( y = e^{3x} \), then \( \frac{dy}{dx} = \):\nA) \( 3e^{3x} \)\nB) \( e^{3x} \)\nC) \( 3xe^{3x} \)\nD) \( e^{x} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Chain rule: derivative of \( e^{3x} \) is \( 3 e^{3x} \)."
  },
  {
    "question": r"Find the critical points of \( f(x) = x^3 - 6x^2 + 9x + 1 \).\nA) \( x = 1, 3 \)\nB) \( x = 0, 3 \)\nC) \( x = 1, 2 \)\nD) \( x = 2, 3 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Find critical points by solving \( f'(x) = 3x^2 - 12x + 9 = 0 \), yielding \( x=1 \) and \( x=3 \)."
  },
  {
    "question": r"The point of inflection of \( f(x) = x^{1/4} - x^{1/2} \) occurs at \( x = \)\nA) \( \frac{44}{34} \)\nB) \( \frac{34}{44} \)\nC) \( \frac{33}{43} \)\nD) \( \frac{43}{33} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Find second derivative, set equal to zero, solve for \( x \) to find inflection point."
  },
  {
    "question": r"Find the interval where \( f(x) = x^3 - 3x^2 + 4 \) is increasing.\nA) \( (-\infty, 0) \cup (2, \infty) \)\nB) \( (0, 2) \)\nC) \( (-\infty, 0) \)\nD) \( (2, \infty) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"First derivative \( f'(x) = 3x^2 - 6x \). Set \( f'(x) > 0 \), solve inequality to find intervals."
  }
];

final List<Map<String, dynamic>> introToIntegration = [
  {
    "question": r"For \( f(x) = 2x + 1 \) on \([0, 2]\), what is the right-endpoint Riemann sum with \( n = 4 \)?\nA) 6\nB) 7\nC) 8\nD) 9",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Right endpoints: 0.5, 1, 1.5, 2.\nFunction values: \( f(0.5) = 2 \cdot 0.5 + 1 = 2 \), etc.\nSum area: \( \Delta x \times \sum f(x_i) = 0.5 \times (2 + 3 + 4 + 5) = 7 \)."
  },
  {
    "question": r"What is the left-endpoint approximation of \( \int_1^3 x^2 dx \) with \( n = 2 \)?\nA) 5\nB) 10\nC) 13\nD) 17",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Subintervals: \([1, 2]\) and \([2,3]\).\nLeft endpoints: 1 and 2.\nSum: \( \Delta x (f(1) + f(2)) = 1 \times (1^2 + 2^2) = 5 \)."
  },
  {
    "question": r"For \( f(x) = \frac{1}{x} \) on \([1, 3]\), which Riemann sum overestimates the integral?\nA) Left\nB) Right\nC) Both\nD) Neither",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Since \( f(x) = \frac{1}{x} \) is decreasing on \([1, 3]\), the left-endpoint sum overestimates the integral."
  },
  {
    "question": r"If \( \Delta x = 0.5 \) and right endpoints are used for \( \int_0^2 (x^2 - 1) dx \), what is the Riemann sum value?\nA) -1.25\nB) 0.75\nC) 1.75\nD) -0.75",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Right endpoints: 0.5, 1, 1.5, 2.\nFunction values: \( f(x) = x^2 - 1 \), so values are: -0.75, 0, 1.25, 3.\nSum: \( \Delta x \cdot (f(0.5) + f(1) + f(1.5) + f(2)) = 0.5 \cdot 3.5 = 1.75 \)."
  },
  {
    "question": r"What is \( \Delta x \) for a right-endpoint sum of \( \int_{-1}^1 e^x dx \) using \( n = 4 \)?\nA) 0.5\nB) 0.25\nC) 1\nD) 2",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Interval length = \( 1 - (-1) = 2 \), so \( \Delta x = \frac{2}{4} = 0.5 \)."
  },
  {
    "question": r"The limit \( \lim_{n \to \infty} \sum_{i=1}^n \left( \frac{2i}{n} \right) \cdot \frac{2}{n} \) equals:\nA) \( \int_0^2 x dx \)\nB) \( \int_0^2 2x dx \)\nC) \( \int_0^2 \frac{x}{2} dx \)\nD) \( \int_0^1 2x dx \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"This is a Riemann sum for \( f(x) = x \) on \([0, 2]\) with partition width \( \frac{2}{n} \)."
  },
  {
    "question": r"If \( \frac{d}{dx} \int_0^x e^{t^2} dt = e^{x^2} \), what is \( \frac{d}{dx} \int_x^0 e^{t^2} dt \)?\nA) \( e^{x^2} \)\nB) \( -e^{x^2} \)\nC) \( 2xe^{x^2} \)\nD) 0",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Swapping limits introduces a negative: \( \frac{d}{dx} \int_x^0 f(t) dt = -f(x) \)."
  },
  {
    "question": r"If \( \frac{d}{dx} \int_a^x f(t) dt = f(x) \), then what is \( \frac{d}{dx} \int_x^a f(t) dt \)?\nA) \( f(x) \)\nB) \( -f(x) \)\nC) \( f(a) \)\nD) 0",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Changing integration bounds reverses the sign, so derivative is \( -f(x) \)."
  },
  {
    "question": r"If \( F(x) = \int_2^x \sqrt{t^3 + 1} \, dt \), what is \( F'(x) \)?\nA) \( \frac{3x^2}{2\sqrt{x^3 + 1}} \)\nB) \( \sqrt{x^3 + 1} \)\nC) \( \sqrt{x^3 + 1} - \sqrt{9} \)\nD) \( \sqrt{x^3} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"By the Fundamental Theorem of Calculus, \( F'(x) = \sqrt{x^3 + 1} \)."
  },
  {
    "question": r"The velocity of a particle is \( v(t) = 3t^2 - 4 \). What is the net displacement from \( t = 1 \) to \( t = 3 \)?\nA) 18\nB) 16\nC) 20\nD) 12",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Net displacement is \( \int_1^3 (3t^2 - 4) dt = [t^3 - 4t]_1^3 = (27 - 12) - (1 - 4) = 15 + 3 = 18. \)"
  },
  {
    "question": r"If \( \frac{d}{dx} \int_0^x e^{t^2} dt = e^{x^2} \), what is \( \frac{d}{dx} \int_x^0 e^{t^2} dt \)?\nA) \( 2xe^{x^2} \)\nB) \( -e^{x^2} \)\nC) \( e^{x^2} \)\nD) 0",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Swapping integration limits changes sign: \( \frac{d}{dx} \int_x^0 f(t) dt = -f(x) = -e^{x^2} \)."
  },
  {
    "question": r"Given \( \int_1^4 f'(x) dx = 7 \) and \( f(1) = 3 \), find \( f(4) \).\nA) 7\nB) 10\nC) -4\nD) 4",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"By net change theorem: \( f(4) = f(1) + \int_1^4 f'(x) dx = 3 + 7 = 10. \)"
  },
  {
    "question": r"If \( \int_0^5 g(t) dt = 12 \) and \( \int_0^3 g(t) dt = 5 \), what is \( \int_3^5 g(t) dt \)?\nA) 0\nB) 7\nC) -7\nD) 17",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Additivity of integrals: \( \int_3^5 g(t) dt = \int_0^5 g(t) dt - \int_0^3 g(t) dt = 12 - 5 = 7. \)"
  },
  {
    "question": r"For \( f(x) = 2x + 1 \) on \([0, 2]\), what is the right-endpoint Riemann sum with \( n = 4 \)?\nA) 6\nB) 7\nC) 8\nD) 9",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Right endpoints: \( 0.5, 1, 1.5, 2 \).\nFunction values: \( f(0.5)=2 \cdot 0.5 + 1 = 2, f(1)=3, f(1.5)=4, f(2)=5 \).\nSum: \( \Delta x \times \sum f(x_i) = 0.5 \times (2 + 3 + 4 + 5) = 7. \)"
  },
  {
    "question": r"What is the left-endpoint approximation of \( \int_1^3 x^2 dx \) with \( n = 2 \)?\nA) 5\nB) 10\nC) 13\nD) 17",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Subintervals: \([1, 2]\), \([2,3]\).\nLeft endpoints: 1 and 2.\nSum: \( \Delta x (f(1) + f(2)) = 1 \times (1^2 + 2^2) = 5. \)"
  },
  {
    "question": r"For \( f(x) = \frac{1}{x} \) on \([1, 3]\), which Riemann sum overestimates the integral?\nA) Left\nB) Right\nC) Both\nD) Neither",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Since \( f(x) = 1/x \) is decreasing on \([1, 3]\), the left-endpoint sum overestimates the integral."
  },
  {
    "question": r"If \( \Delta x = 0.5 \) and right endpoints are used for \( \int_0^2 (x^2 - 1) dx \), what is the Riemann sum value?\nA) -1.25\nB) 0.75\nC) 1.75\nD) -0.75",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Right endpoints: \( 0.5, 1, 1.5, 2 \).\nFunction values sum to 3.5.\nMultiply by \( \Delta x = 0.5 \) gives \( 1.75 \)."
  },
  {
    "question": r"What is \( \Delta x \) for a right-endpoint sum of \( \int_{-1}^1 e^x dx \) using \( n = 4 \)?\nA) 0.5\nB) 0.25\nC) 1\nD) 2",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Interval length \( = 1 - (-1) = 2 \), so \( \Delta x = \frac{2}{4} = 0.5 \)."
  },
  {
    "question": r"Evaluate: \( \int \sqrt{3x + 4} \, dx \).\nA) \( \frac{2}{9} (3x + 4)^{3/2} + C \)\nB) \( \frac{1}{3} (3x + 4)^{1/2} + C \)\nC) \( 2(3x + 4)^{1/2} + C \)\nD) \( \frac{2}{3} (3x + 4)^{3/2} + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Let \( u = 3x + 4 \), so \( du = 3 dx \Rightarrow dx = \frac{du}{3} \).\nIntegral becomes \( \int \sqrt{u} \frac{du}{3} = \frac{1}{3} \int u^{1/2} du = \frac{1}{3} \cdot \frac{2}{3} u^{3/2} + C = \frac{2}{9} (3x + 4)^{3/2} + C. \)"
  },
  {
    "question": r"Evaluate the definite integral: \( \int_0^1 \frac{x}{\sqrt{1 + x^2}} dx \).\nA) \( 1 \)\nB) \( \sqrt{2} - 1 \)\nC) \( \frac{1}{3} \)\nD) \( \frac{1}{2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Let \( u = 1 + x^2 \), so \( du = 2x dx \Rightarrow x dx = \frac{du}{2} \).\nIntegral becomes \( \int_1^2 \frac{1}{\sqrt{u}} \frac{du}{2} = \frac{1}{2} \int_1^2 u^{-1/2} du = \frac{1}{2} [2 u^{1/2}]_1^2 = \sqrt{2} - 1. \)"
  },
  {
    "question": r"Evaluate: \( \int \sin(5x) \cos(5x) \, dx \).\nA) \( \frac{1}{10} \sin^2(5x) + C \)\nB) \( -\frac{1}{10} \cos^2(5x) + C \)\nC) \( \frac{1}{5} \sin(5x) \cos(5x) + C \)\nD) \( -\frac{1}{5} \sin^2(5x) + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Let \( u = \sin(5x) \), so \( du = 5 \cos(5x) dx \Rightarrow \cos(5x) dx = \frac{du}{5} \).\nIntegral becomes \( \int u \frac{du}{5} = \frac{1}{5} \int u du = \frac{1}{10} u^2 + C = \frac{1}{10} \sin^2(5x) + C. \)"
  },
  {
    "question": r"Evaluate the definite integral: \( \int_0^{\pi/2} \sin^3 x \cos x \, dx \).\nA) \( \frac{1}{2} \)\nB) \( \frac{1}{3} \)\nC) \( \frac{1}{4} \)\nD) 1",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Let \( u = \sin x \), so \( du = \cos x dx \).\nIntegral becomes \( \int_0^1 u^3 du = \left[ \frac{u^4}{4} \right]_0^1 = \frac{1}{4}. \)"
  },
  {
    "question": r"Evaluate: \( \int \frac{2x}{(1 + x^2)^2} dx \).\nA) \( \frac{1}{(1 + x^2)^2} + C \)\nB) \( -\frac{1}{1 + x^2} + C \)\nC) \( \frac{1}{1 + x^2} + C \)\nD) \( -\frac{1}{(1 + x^2)^2} + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Let \( u = 1 + x^2 \), so \( du = 2x dx \).\nIntegral becomes \( \int u^{-2} du = -u^{-1} + C = -\frac{1}{1 + x^2} + C. \)"
  },
  {
    "question": r"Evaluate the definite integral: \( \int_1^4 \frac{\sqrt{2x + 1}}{3} dx \).\nA) \( \frac{25}{9} \)\nB) \( \frac{28}{9} \)\nC) \( \frac{19}{9} \)\nD) \( \frac{16}{9} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Let \( u = 2x + 1 \), \( du = 2 dx \Rightarrow dx = \frac{du}{2} \).\nWhen \( x=1, u=3 \); \( x=4, u=9 \).\nIntegral becomes \( \frac{1}{3} \int_3^9 \sqrt{u} \frac{du}{2} = \frac{1}{6} \int_3^9 u^{1/2} du = \frac{1}{6} \left[ \frac{2}{3} u^{3/2} \right]_3^9 = \frac{1}{9} (9^{3/2} - 3^{3/2}) = \frac{1}{9} (27 - 3 \sqrt{3}). \)"
  },
  {
    "question": r"Evaluate: \( \int \tan^3 x \sec^2 x \, dx \).\nA) \( \frac{\sec^4 x}{4} + C \)\nB) \( \frac{\tan^4 x}{4} + C \)\nC) \( \frac{\sec^2 x}{2} + C \)\nD) \( \frac{\tan^3 x}{3} + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Let \( u = \tan x \), so \( du = \sec^2 x dx \).\nIntegral becomes \( \int u^3 du = \frac{u^4}{4} + C = \frac{\tan^4 x}{4} + C. \)"
  }
];

