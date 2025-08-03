
final Map<String, List<Map<String, String>>> studyQuestions = {
  "Sets and Intervals": [
    {
      "question": r"Let \( A = \{a, b, c, d\} \).\nHow many subsets of \( A \) contain at least 2 elements?",
      "answer": r"Step 1: Total subsets of a 4-element set is \( 2^4 = 16 \).\n"
      r"Step 2: Count subsets with fewer than 2 elements:\n"
      r"\( \quad \) - 0-element subset (empty set): 1\n"
      r"\( \quad \) - 1-element subsets: \( \binom{4}{1} = 4 \)\n"
      r"Step 3: Subsets with at least 2 elements = total - subsets with fewer than 2\n"
      r"\( \quad \) = \( 16 - (1 + 4) = 11 \)."
    },
    {
      "question": r"Let \( B = \{x, y, z, w, t\} \).\nHow many subsets of \( B \) contain at least 2 elements?",
      "answer": r"Use total subsets of 5 elements and subtract empty + one-element sets."
    },
    {
      "question": r"Let \( C = \{1, 2, 3, 4, 5, 6\} \).\nHow many subsets of \( C \) contain **at least 3** elements?",
      "answer": r"Break total \( 2^6 \) into subset sizes and subtract the sizes < 3."
    },
    {
      "question": r"Let \( R = \{1, 2, 3, 4, 5\} \).\nHow many sets \( P \) satisfy: \( \{1, 2\} \subseteq P \subseteq R \)?",
      "answer": r"Step 1: Elements 1 and 2 must be in every set \( P \).\n"
      r"Step 2: Remaining elements \( \{3, 4, 5\} \) are optional.\n"
      r"Step 3: Each of the 3 optional elements can be included or not (2 choices each).\n"
      r"Step 4: Total number of such sets = \( 2^3 = 8 \)."
    },
    {
      "question": r"Let \( T = \{1, 2, 3, 4, 5, 6\} \).\nHow many sets \( Q \) satisfy: \( \{2, 4\} \subseteq Q \subseteq T \)?",
      "answer": r"Find how many ways to include/exclude elements other than 2 and 4."
    },
    {
      "question": r"Let \( U = \{1,2,3,4,5,6,7\} \).\nHow many sets \( K \) satisfy \( \{1,4,7\} \subseteq K \subseteq U \)?",
      "answer": r"Count subsets by fixing required elements and varying the rest."
    },
    {
      "question": r"Let \( A = \{1, 2, 3, 4\} \), \( B = \{3, 4, 5, 6\} \).\nFind the value of \( |A \cup B| - |A \cap B| \).",
      "answer": r"Step 1: Find union: \( A \cup B = \{1, 2, 3, 4, 5, 6\} \), so \( |A \cup B| = 6 \).\n"
      r"Step 2: Find intersection: \( A \cap B = \{3, 4\} \), so \( |A \cap B| = 2 \).\n"
      r"Step 3: Calculate difference: \( |A \cup B| - |A \cap B| = 6 - 2 = 4 \)."
    },
    {
      "question": r"Let \( M = \{0,1,2\} \), \( N = \{2,3,4\} \).\nFind \( |M \cup N| - |M \cap N| \).",
      "answer": r"Find the total number of distinct elements minus those in both."
    },
    {
      "question": r"Let \( X = \{a,b,c,d,e\} \), \( Y = \{c,d,e,f,g\} \).\nFind \( |X \cup Y| - |X \cap Y| \).",
      "answer": r"Work out cardinalities of union and intersection explicitly with 5-element overlaps."
    },
    {
      "question": r"Solve the inequality: \( \frac{3x - 6}{x + 1} \geq 0 \).\nExpress your answer in interval notation.",
      "answer": r"Step 1: Find critical points:\n"
      r"\( \quad \) - Numerator zero at \( x = 2 \)\n"
      r"\( \quad \) - Denominator zero at \( x = -1 \)\n"
      r"Step 2: Test intervals:\n"
      r"\( \quad \) - For \( x < -1 \), expression is negative\n"
      r"\( \quad \) - For \( -1 < x < 2 \), expression is positive\n"
      r"\( \quad \) - For \( x > 2 \), expression is positive\n"
      r"Step 3: Include \( x = 2 \) (expression equals zero)\n"
      r"Step 4: Exclude \( x = -1 \) (undefined)\n"
      r"Final answer: \( (-1, 2] \cup (2, \infty) \)."
    },
    {
      "question": r"Solve the inequality: \( \frac{2x - 4}{x - 3} \geq 0 \).\nExpress in interval notation.",
      "answer": r"Find where the rational expression is zero or changes sign."
    },
    {
      "question": r"Solve the inequality: \( \frac{x^2 - 9}{x + 2} \leq 0 \).\nExpress in interval notation.",
      "answer": r"Factor numerator, find zeros, test intervals, and check where ≤ 0."
    },
    {
      "question": r"Let \( S = \{x \in \mathbb{R} \mid x^2 - 5x + 6 < 0\} \).\nWrite \( S \) in interval notation.",
      "answer": r"Step 1: Factor quadratic: \( x^2 - 5x + 6 = (x - 2)(x - 3) \).\n"
      r"Step 2: Determine sign on intervals:\n"
      r"\( \quad \) - For \( x < 2 \), expression is positive\n"
      r"\( \quad \) - For \( 2 < x < 3 \), expression is negative\n"
      r"\( \quad \) - For \( x > 3 \), expression is positive\n"
      r"Step 3: The inequality \( < 0 \) holds where expression is negative\n"
      r"Final answer: \( (2, 3) \)."
    },
    {
      "question": r"Let \( T = \{x \in \mathbb{R} \mid x^2 - 4x + 3 < 0\} \).\nExpress \( T \) in interval notation.",
      "answer": r"Factor the quadratic and find where it's negative between the roots."
    },
    {
      "question": r"Let \( M = \{x \in \mathbb{R} \mid x^2 - 3x - 10 < 0\} \).\nExpress \( M \) in interval notation.",
      "answer": r"Use roots from factoring to determine valid x-range for the inequality."
    }
  ],


  "Functions": [
    {
      "question": r"Given the piecewise function:\n\( f(x) = \begin{cases} x^2 + 1 & \text{if } x \leq 0 \\ 2^x & \text{if } x > 0 \end{cases} \)\nFind the range of \( f(x) \).",
      "answer": r"Step 1: For \( x \leq 0 \), \( f(x) = x^2 + 1 \)\n"
      r"Since \( x^2 \geq 0 \), we have \( x^2 + 1 \geq 1 \)\n"
      r"As \( x \to -\infty \), \( x^2 + 1 \to \infty \)\n"
      r"So the range from this part is \( [1, \infty) \)\n\n"
      r"Step 2: For \( x > 0 \), \( f(x) = 2^x \)\n"
      r"As \( x \to 0^+ \), \( f(x) \to 1 \), and as \( x \to \infty \), \( f(x) \to \infty \)\n"
      r"So the range from this part is \( (1, \infty) \)\n\n"
      r"Final range: \( [1, \infty) \)"
    },
    {
      "question": r"Given the piecewise function:\n\( f(x) = \begin{cases} x^2 + 2 & \text{if } x \leq 0 \\ 3^x & \text{if } x > 0 \end{cases} \)\nFind the range of \( f(x) \).",
      "answer": r"Try to find the lowest output value from each case and observe their overlap to combine the ranges."
    },
    {
      "question": r"Given the piecewise function:\n\( f(x) = \begin{cases} -x^2 + 5 & \text{if } x \leq 1 \\ e^x - 2 & \text{if } x > 1 \end{cases} \)\nFind the range of \( f(x) \).",
      "answer": r"Check where the quadratic reaches its maximum and where the exponential starts. Look for overlap or continuity."
    },
    {
      "question": r"Simplify \( f(x) = \frac{x^3 - 4x}{x^2 - x - 6} \) and state its domain.",
      "answer": r"Step 1: Factor numerator and denominator\n"
      r"Numerator: \( x^3 - 4x = x(x^2 - 4) = x(x - 2)(x + 2) \)\n"
      r"Denominator: \( x^2 - x - 6 = (x - 3)(x + 2) \)\n\n"
      r"Step 2: Cancel common factor \( x + 2 \)\n"
      r"Simplified form: \( f(x) = \frac{x(x - 2)}{x - 3} \) for x != -2 \n\n"
      r"Step 3: Domain excludes values where denominator is zero\n"
      r"Domain: \( \mathbb{R} \setminus \{ -2, 3 \} \)"
    },
    {
      "question": r"Simplify \( f(x) = \frac{x^3 - 9x}{x^2 - 4x} \) and state its domain.",
      "answer": r"Factor everything and cancel terms carefully. Watch for common binomials and undefined values."
    },
    {
      "question": r"Simplify \( f(x) = \frac{x^4 - 5x^2}{x^3 - 4x} \) and state its domain.",
      "answer": r"Factor numerator and denominator fully, identify all removable discontinuities and non-removable ones."
    },
    {
      "question": r"Solve for \( x \): \( \log_2(x) + \log_2(x - 4) = 3 \)",
      "answer": r"Step 1: Combine logarithms using product rule:\n"
      r"\( \log_2[x(x - 4)] = 3 \)\n\n"
      r"Step 2: Convert logarithmic to exponential form:\n"
      r"\( x(x - 4) = 2^3 = 8 \Rightarrow x^2 - 4x - 8 = 0 \)\n\n"
      r"Step 3: Solve quadratic equation:\n"
      r"\( x = \frac{4 \pm \sqrt{16 + 32}}{2} = \frac{4 \pm \sqrt{48}}{2} = 2 \pm 2\sqrt{3} \)\n\n"
      r"Step 4: Check domain restrictions:\n"
      r"\( x > 0 \) and \( x - 4 > 0 \Rightarrow x > 4 \)\n"
      r"Only valid solution is \( x = 2 + 2\sqrt{3} \)"
    },
    {
      "question": r"Solve for \( x \): \( \log_3(x) + \log_3(x - 2) = 2 \)",
      "answer": r"Multiply expressions inside logs, convert to exponential form, and check for extraneous solutions."
    },
    {
      "question": r"Solve for \( x \): \( \log_5(x + 1) + \log_5(2x - 1) = 2 \)",
      "answer": r"After combining logs and simplifying, remember both \( x + 1 \) and \( 2x - 1 \) must be positive."
    },
    {
      "question": r"Find the exact value of \( \tan(\arccos(\frac{2}{3})) \)",
      "answer": r"Step 1: Let \( \theta = \arccos\left(\frac{2}{3}\right) \Rightarrow \cos \theta = \frac{2}{3} \)\n"
      r"Step 2: Construct right triangle with adjacent side = 2, hypotenuse = 3\n"
      r"Step 3: Find opposite side using Pythagoras theorem:\n"
      r"\( \sqrt{3^2 - 2^2} = \sqrt{9 - 4} = \sqrt{5} \)\n"
      r"Step 4: Calculate tangent:\n"
      r"\( \tan \theta = \frac{\text{opposite}}{\text{adjacent}} = \frac{\sqrt{5}}{2} \)"
    },
    {
      "question": r"Find the exact value of \( \tan(\arccos(\frac{3}{5})) \)",
      "answer": r"Draw triangle using adjacent = 3 and hypotenuse = 5 to find the opposite side and calculate tangent."
    },
    {
      "question": r"Find the exact value of \( \tan(\arcsin(\frac{5}{13})) \)",
      "answer": r"Use the identity triangle where opposite = 5 and hypotenuse = 13 to find adjacent side, then compute tangent."
    },
    {
      "question": r"Let \( f(x) = \frac{3x - 1}{x + 2} \).\n(a) Prove \( f \) is one-to-one.\n(b) Find \( f^{-1}(x) \).",
      "answer": r"(a) Assume \( f(a) = f(b) \):\n"
      r"\( \frac{3a - 1}{a + 2} = \frac{3b - 1}{b + 2} \)\n"
      r"Cross-multiply:\n"
      r"\((3a - 1)(b + 2) = (3b - 1)(a + 2)\)\n"
      r"Simplify and rearrange to get \( a = b \)\n"
      r"So, \( f \) is one-to-one.\n\n"
      r"(b) Let \( y = \frac{3x - 1}{x + 2} \)\n"
      r"Multiply both sides by \( x + 2 \):\n"
      r"\( y(x + 2) = 3x - 1 \Rightarrow yx + 2y = 3x - 1 \)\n"
      r"Rearrange:\n"
      r"\( x(y - 3) = -2y - 1 \Rightarrow x = \frac{-2y - 1}{y - 3} \)\n"
      r"Therefore,\n"
      r"\( f^{-1}(x) = \frac{-2x - 1}{x - 3} \)"
    },
    {
      "question": r"Let \( f(x) = \frac{4x + 1}{x - 1} \).\n(a) Show \( f \) is one-to-one.\n(b) Find \( f^{-1}(x) \).",
      "answer": r"Start by assuming \( f(a) = f(b) \) and prove \( a = b \). Then solve \( y = \frac{4x + 1}{x - 1} \) for \( x \)."
    },
    {
      "question": r"Let \( f(x) = \frac{5x - 4}{x + 3} \).\n(a) Show \( f \) is one-to-one.\n(b) Find \( f^{-1}(x) \).",
      "answer": r"Use algebraic manipulation and cross-multiplication to isolate \( x \) in terms of \( y \)."
    },
    {
      "question": r"Given \( f(x) = \sqrt{x} \), describe the transformations to obtain:\n\( g(x) = -2f(3x - 6) + 4 \)",
      "answer": r"Start with \( f(x) = \sqrt{x} \):\n"
      r"1. Horizontal compression by factor \( \frac{1}{3} \) because of \( 3x \)\n"
      r"2. Horizontal shift right by 2 units because \( 3x - 6 = 3(x - 2) \)\n"
      r"3. Vertical stretch by factor 2\n"
      r"4. Reflection about the x-axis due to the negative sign\n"
      r"5. Vertical shift upward by 4 units"
    },
    {
      "question": r"Given \( f(x) = \sqrt{x} \), describe how to transform it to \( g(x) = -3\sqrt{2x + 4} - 1 \)",
      "answer": r"Look for horizontal compression, left/right shifts from inside, vertical stretch and reflection from outside."
    },
    {
      "question": r"Given \( f(x) = \sqrt{x} \), describe how to get \( g(x) = 5 - \sqrt{-2x + 8} \)",
      "answer": r"Work inside-out: simplify inner expression, note horizontal reflection and shift, then vertical shifts."
    },
    {
      "question": r"Rewrite \( f(x) = |x^2 - 4| \) as a piecewise function and state its domain.",
      "answer": r"Step 1: Find where \( x^2 - 4 = 0 \Rightarrow x = \pm 2 \)\n"
      r"Step 2: Determine sign of \( x^2 - 4 \):\n"
      r"For \( -2 < x < 2 \), \( x^2 - 4 < 0 \)\n"
      r"For \( x \leq -2 \) or \( x \geq 2 \), \( x^2 - 4 \geq 0 \)\n\n"
      r"Piecewise function:\n"
      r"\( f(x) = \begin{cases} -(x^2 - 4) = -x^2 + 4 & \text{if } -2 < x < 2 \\ x^2 - 4 & \text{if } x \leq -2 \text{ or } x \geq 2 \end{cases} \)\n"
      r"Domain: \( \mathbb{R} \)"
    },
    {
      "question": r"Rewrite \( f(x) = |x^2 - 9| \) as a piecewise function and state its domain.",
      "answer": r"Find where expression inside absolute value is 0, determine where it's negative, and write appropriate cases."
    },
    {
      "question": r"Rewrite \( f(x) = |x^2 - 2x - 8| \) as a piecewise function and state its domain.",
      "answer": r"Find critical values by solving \( x^2 - 2x - 8 = 0 \) then build the piecewise function based on sign chart."
    },
    {
      "question": r"Let \( f(x) = \ln(x) \), \( g(x) = \sqrt{4 - x} \). Find \( (f \circ g)(x) \) and its domain.",
      "answer": r"Step 1: Find \( (f \circ g)(x) = f(g(x)) = \ln(\sqrt{4 - x}) \)\n"
      r"Step 2: Simplify using log rules:\n"
      r"\( \ln(\sqrt{4 - x}) = \frac{1}{2} \ln(4 - x) \)\n"
      r"Step 3: Determine domain:\n"
      r"\( 4 - x > 0 \Rightarrow x < 4 \)\n"
      r"Also, argument of \(\ln\) must be positive, so domain is \( (-\infty, 4) \)"
    },
    {
      "question": r"Let \( f(x) = \ln(x) \), \( g(x) = \sqrt{9 - x} \). Find \( (f \circ g)(x) \) and its domain.",
      "answer": r"The output of \( g(x) \) must be positive, and the input of \( f(x) \) must also be positive. Solve both inequalities."
    },
    {
      "question": r"Let \( f(x) = \ln(x) \), \( g(x) = \sqrt{x^2 - 1} \). Find \( (f \circ g)(x) \) and its domain.",
      "answer": r"Find where the inner square root is defined and positive, and where the entire composition is defined."
    }
  ],

  "Limits and Continuity": [
    {
      "question": r"Evaluate the limit:\n\(\lim_{x \to \infty} \left( \sqrt{x^2 + 4x + 5} - x \right)\)",
      "answer": r"Step 1: Multiply numerator and denominator by the conjugate:\n"
      r"\(\frac{(\sqrt{x^2 + 4x + 5} - x)(\sqrt{x^2 + 4x + 5} + x)}{\sqrt{x^2 + 4x + 5} + x}\)\n"
      r"Step 2: Simplify numerator using \(a^2 - b^2\):\n"
      r"\(\frac{x^2 + 4x + 5 - x^2}{\sqrt{x^2 + 4x + 5} + x} = \frac{4x + 5}{\sqrt{x^2 + 4x + 5} + x}\)\n"
      r"Step 3: Divide numerator and denominator by \(x\):\n"
      r"\(\frac{4 + \frac{5}{x}}{\sqrt{1 + \frac{4}{x} + \frac{5}{x^2}} + 1}\)\n"
      r"Step 4: Take limit as \(x \to \infty\):\n"
      r"\(\frac{4 + 0}{\sqrt{1 + 0 + 0} + 1} = \frac{4}{2} = 2\)\n"
      r"Answer: \(\boxed{2}\)"
    },
    {
      "question": r"Evaluate the limit:\n\(\lim_{x \to \infty} \left( \sqrt{x^2 + 6x + 10} - x \right)\)",
      "answer": r"Use the conjugate and rationalize, then divide through by \(x\) and evaluate limit as \(x \to \infty\)"
    },
    {
      "question": r"Evaluate the limit:\n\(\lim_{x \to \infty} \left( \sqrt{x^2 + 10x + 25} - x \right)\)",
      "answer": r"Recognize binomial square and use the trick \(\sqrt{x^2 + ax + b} - x\) rationalization"
    },

    {
      "question": r"Evaluate the limit:\n\(\lim_{x \to 0^+} \frac{5}{3 + 4^{1/x}}\)",
      "answer": r"As \(x \to 0^+\), \(1/x \to \infty\), so \(4^{1/x} \to \infty\).\n"
      r"Denominator \(\to \infty\), so limit \(\to 0\).\n"
      r"Answer: \(\boxed{0}\)"
    },
    {
      "question": r"Evaluate the limit:\n\(\lim_{x \to 0^+} \frac{7}{2 + 5^{1/x}}\)",
      "answer": r"As \(x \to 0^+\), exponential in denominator dominates, so limit tends to 0"
    },
    {
      "question": r"Evaluate the limit:\n\(\lim_{x \to 0^+} \frac{4}{1 + 9^{1/x}}\)",
      "answer": r"Denominator grows without bound, making the whole fraction tend to 0"
    },

    {
      "question": r"Evaluate the limit:\n\(\lim_{x \to \infty} \frac{7 e^x + 2}{8 - 3 e^x}\)",
      "answer": r"As \(x \to \infty\), \(e^x \to \infty\).\n"
      r"Divide numerator and denominator by \(e^x\):\n"
      r"\(\frac{7 + 0}{0 - 3} = -\frac{7}{3}\)\n"
      r"Answer: \(\boxed{-\frac{7}{3}}\)"
    },
    {
      "question": r"Evaluate the limit:\n\(\lim_{x \to \infty} \frac{5 e^x + 1}{2 - 4 e^x}\)",
      "answer": r"Divide top and bottom by \(e^x\), then take the limit as \(x \to \infty\)"
    },
    {
      "question": r"Evaluate the limit:\n\(\lim_{x \to \infty} \frac{2 e^x + 7x}{1 - 5 e^x}\)",
      "answer": r"Compare exponential and linear terms; exponential dominates so apply same division trick"
    },

    {
      "question": r"Let \( f(x) = \begin{cases} x^2 - 1 & x < 2 \\ 3x - 5 & x \geq 2 \end{cases} \).\nDoes \(\lim_{x \to 2} f(x)\) exist?",
      "answer": r"Left limit: \(2^2 - 1 = 3\).\n"
      r"Right limit: \(3 \cdot 2 - 5 = 1\).\n"
      r"Limits differ, so limit does not exist.\n"
      r"Answer: \(\boxed{\text{Limit does not exist}}\)"
    },
    {
      "question": r"Let \( f(x) = \begin{cases} x^2 - 4 & x < 3 \\ 2x - 1 & x \geq 3 \end{cases} \).\nDoes \(\lim_{x \to 3} f(x)\) exist?",
      "answer": r"Check if left and right limits at \(x = 3\) agree to determine existence"
    },
    {
      "question": r"Let \( f(x) = \begin{cases} \sqrt{x + 1} & x < 0 \\ x + 1 & x \geq 0 \end{cases} \).\nDoes \(\lim_{x \to 0} f(x)\) exist?",
      "answer": r"Check both sides using square root and linear behavior; compare values as \(x \to 0\)"
    },

    {
      "question": r"Evaluate and classify discontinuity:\n\(f(x) = \frac{x^2 - 9}{x - 3}, \lim_{x \to 3} f(x)\)",
      "answer": r"Factor numerator: \((x-3)(x+3)\).\n"
      r"Cancel \((x-3)\), \(f(x) = x + 3\) for \(x \neq 3\).\n"
      r"Limit at 3 is 6, but \(f(3)\) undefined.\n"
      r"Removable discontinuity.\n"
      r"Answer: \(\boxed{6 \text{ (removable discontinuity)}}\)"
    },
    {
      "question": r"Evaluate and classify discontinuity:\n\(f(x) = \frac{x^2 - 4}{x - 2}, \lim_{x \to 2} f(x)\)",
      "answer": r"Factor and cancel, then check whether function is defined at point"
    },
    {
      "question": r"Evaluate and classify discontinuity:\n\(f(x) = \frac{x^2 - 1}{x - 1}, \lim_{x \to 1} f(x)\)",
      "answer": r"Check for removable discontinuity by simplifying expression and evaluating pointwise behavior"
    },

    {
      "question": r"Evaluate the limit:\n\(\lim_{x \to \infty} \frac{2x^2 + 5x + 1}{x^2 - x + 4}\)",
      "answer": r"Divide numerator and denominator by \(x^2\):\n"
      r"\(\frac{2 + \frac{5}{x} + \frac{1}{x^2}}{1 - \frac{1}{x} + \frac{4}{x^2}} \to \frac{2}{1} = 2\).\n"
      r"Answer: \(\boxed{2}\)"
    },
    {
      "question": r"Evaluate the limit:\n\(\lim_{x \to \infty} \frac{3x^2 + 4x}{x^2 + 1}\)",
      "answer": r"Divide through by \(x^2\) and simplify the resulting rational expression"
    },
    {
      "question": r"Evaluate the limit:\n\(\lim_{x \to \infty} \frac{4x^2 + x + 7}{2x^2 + 9x}\)",
      "answer": r"Compare highest degree terms in numerator and denominator after dividing by \(x^2\)"
    },

    {
      "question": r"Evaluate one-sided limit:\n\(\lim_{x \to 1^-} \frac{|x - 1|}{x - 1}\)",
      "answer": r"For \(x < 1\), \(x - 1 < 0\), so \(|x-1| = -(x-1)\).\n"
      r"Expression becomes \(\frac{-(x-1)}{x-1} = -1\).\n"
      r"Answer: \(\boxed{-1}\)"
    },
    {
      "question": r"Evaluate one-sided limit:\n\(\lim_{x \to 2^-} \frac{|x - 2|}{x - 2}\)",
      "answer": r"Recognize absolute value flips sign below the point; apply definition piecewise"
    },
    {
      "question": r"Evaluate one-sided limit:\n\(\lim_{x \to 3^-} \frac{|x - 3|}{x - 3}\)",
      "answer": r"For left-hand side of absolute value, value behaves like \(-1\)"
    },

    {
      "question": r"Evaluate using squeeze theorem:\n\(\lim_{x \to 0} x^2 \sin \frac{1}{x}\)",
      "answer": r"Since \(-1 \leq \sin \frac{1}{x} \leq 1\), multiply all parts by \(x^2\):\n"
      r"\(-x^2 \leq x^2 \sin \frac{1}{x} \leq x^2\).\n"
      r"As \(x \to 0\), both bounds \(\to 0\).\n"
      r"By squeeze theorem, limit is 0.\n"
      r"Answer: \(\boxed{0}\)"
    },
    {
      "question": r"Evaluate using squeeze theorem:\n\(\lim_{x \to 0} x^4 \cos \frac{1}{x}\)",
      "answer": r"Bound cosine and scale by small power of \(x\); both sides go to 0"
    },
    {
      "question": r"Evaluate using squeeze theorem:\n\(\lim_{x \to 0} x^6 \tan \frac{1}{x}\)",
      "answer": r"Use bounds on \(\tan(1/x)\) and control with high power of \(x\)"
    }
  ],

  "Derivatives": [
    {
      "question": r"Find the derivative of \( f(x) = x^2 e^{3x} \).",
      "answer": r"Use product rule:\n"
      r"\(f'(x) = \frac{d}{dx}(x^2) \cdot e^{3x} + x^2 \cdot \frac{d}{dx}(e^{3x})\)\n"
      r"Differentiate:\n"
      r"\(\frac{d}{dx}(x^2) = 2x\)\n"
      r"\(\frac{d}{dx}(e^{3x}) = 3e^{3x}\) (chain rule)\n"
      r"So:\n"
      r"\(f'(x) = 2x e^{3x} + x^2 \cdot 3 e^{3x} = e^{3x}(2x + 3x^2)\)"
    },
    {
      "question": r"Find the derivative of \( f(x) = x^3 e^{2x} \).",
      "answer": r"Use product rule and match powers when factoring."
    },
    {
      "question": r"Find the derivative of \( f(x) = x^4 e^{5x} \).",
      "answer": r"Factor out \(e^{5x}\) after using product rule multiple times or use logarithmic differentiation if needed."
    },

    {
      "question": r"Differentiate \( y = \sin(x^2) \cos x \).",
      "answer": r"Use product rule:\n"
      r"\(y' = \frac{d}{dx}[\sin(x^2)] \cdot \cos x + \sin(x^2) \cdot \frac{d}{dx}[\cos x]\)\n"
      r"Chain rule:\n"
      r"\(\frac{d}{dx}[\sin(x^2)] = \cos(x^2) \cdot 2x\)\n"
      r"Derivative of \(\cos x = -\sin x\)\n"
      r"So:\n"
      r"\(y' = 2x \cos(x^2) \cos x - \sin(x^2) \sin x\)"
    },
    {
      "question": r"Differentiate \( y = \sin(2x^2) \cos x \).",
      "answer": r"Adjust for inner function \(2x^2\) in the chain rule."
    },
    {
      "question": r"Differentiate \( y = \cos(x^3) \cdot \sin(x^2) \).",
      "answer": r"Use product and chain rule twice; be careful with exponents in derivatives."
    },

    {
      "question": r"Find \(\frac{dy}{dx}\) if \(x^2 + y^2 = 25\).",
      "answer": r"Implicit differentiation:\n"
      r"Differentiating both sides:\n"
      r"\(2x + 2y \frac{dy}{dx} = 0\)\n"
      r"Rearrange:\n"
      r"\(2y \frac{dy}{dx} = -2x \Rightarrow \frac{dy}{dx} = -\frac{x}{y}\)"
    },
    {
      "question": r"Find \(\frac{dy}{dx}\) if \(x^2 + y^2 = 36\).",
      "answer": r"Follow implicit differentiation and only the constant on the right changes."
    },
    {
      "question": r"Find \(\frac{dy}{dx}\) if \(x^3 + y^3 = 54\).",
      "answer": r"Differentiating both sides gives terms involving \(3x^2\) and \(3y^2 \frac{dy}{dx}\). Solve for \(\frac{dy}{dx}\)."
    },

    {
      "question": r"Find \(\frac{d}{dx} \left( \ln(5x^2 + 3) \right) \).",
      "answer": r"Use chain rule:\n"
      r"\(\frac{d}{dx} \ln u = \frac{1}{u} \frac{du}{dx}\), here \(u = 5x^2 + 3\)\n"
      r"\(\frac{du}{dx} = 10x\)\n"
      r"So:\n"
      r"\(\frac{d}{dx} \ln(5x^2 + 3) = \frac{10x}{5x^2 + 3}\)"
    },
    {
      "question": r"Find \(\frac{d}{dx} \left( \ln(4x^2 + 7) \right) \).",
      "answer": r"Only the inner function changes; apply chain rule with new coefficients."
    },
    {
      "question": r"Find \(\frac{d}{dx} \left( \ln((2x+1)^3) \right) \).",
      "answer": r"Use logarithmic rules: bring down the exponent first or differentiate directly with chain rule."
    },

    {
      "question": r"Differentiate \( f(x) = \arctan(\sqrt{x}) \).",
      "answer": r"Chain rule:\n"
      r"\(\frac{d}{dx} \arctan u = \frac{1}{1+u^2} \cdot \frac{du}{dx}\), here \(u = \sqrt{x} = x^{1/2}\)\n"
      r"\(\frac{du}{dx} = \frac{1}{2 \sqrt{x}}\)\n"
      r"So:\n"
      r"\(f'(x) = \frac{1}{1 + x} \cdot \frac{1}{2 \sqrt{x}} = \frac{1}{2 \sqrt{x}(1 + x)}\)"
    },
    {
      "question": r"Differentiate \( f(x) = \arctan(\sqrt{2x}) \).",
      "answer": r"Let \(u = \sqrt{2x}\), then use chain rule twice — for square root and arctangent."
    },
    {
      "question": r"Differentiate \( f(x) = \arctan(1/x) \).",
      "answer": r"Use quotient and chain rule; rewrite as \(f(x) = \arctan(x^{-1})\)."
    },

    {
      "question": r"Find the derivative of \( f(x) = \frac{e^{2x}}{\ln x} \).",
      "answer": r"Use quotient rule:\n"
      r"\(f'(x) = \frac{(e^{2x})' \ln x - e^{2x} (\ln x)'}{(\ln x)^2}\)\n"
      r"Calculate derivatives:\n"
      r"\((e^{2x})' = 2 e^{2x}\),\n"
      r"\((\ln x)' = \frac{1}{x}\)\n"
      r"So:\n"
      r"\(f'(x) = \frac{2 e^{2x} \ln x - e^{2x} \cdot \frac{1}{x}}{(\ln x)^2} = \frac{e^{2x} (2 \ln x - \frac{1}{x})}{(\ln x)^2}\)"
    },
    {
      "question": r"Find the derivative of \( f(x) = \frac{e^{x}}{\ln x} \).",
      "answer": r"Only the exponent and constants change in the quotient rule application."
    },
    {
      "question": r"Find the derivative of \( f(x) = \frac{e^{3x}}{\ln(x^2)} \).",
      "answer": r"Apply chain rule to both numerator and denominator; remember \(\ln(x^2) = 2\ln x\)."
    },

    {
      "question": r"Find \(\frac{dy}{dx}\) if \( y = \sin^{-1}(3x) \).",
      "answer": r"Derivative formula:\n"
      r"\(\frac{d}{dx} \sin^{-1} u = \frac{1}{\sqrt{1 - u^2}} \cdot \frac{du}{dx}\)\n"
      r"Here \(u = 3x\), so \(\frac{du}{dx} = 3\)\n"
      r"Therefore:\n"
      r"\(\frac{dy}{dx} = \frac{3}{\sqrt{1 - 9x^2}}\)"
    },
    {
      "question": r"Find \(\frac{dy}{dx}\) if \( y = \sin^{-1}(2x) \).",
      "answer": r"Adjust the inside function and apply same inverse rule with new constant."
    },
    {
      "question": r"Find \(\frac{dy}{dx}\) if \( y = \sin^{-1}(x^2) \).",
      "answer": r"Use chain rule carefully; note the domain restriction as well."
    },

    {
      "question": r"Differentiate \( f(x) = \ln(\sin x^2) \).",
      "answer": r"Chain rule:\n"
      r"\(f'(x) = \frac{1}{\sin x^2} \cdot \cos x^2 \cdot 2x = \frac{2x \cos x^2}{\sin x^2}\)"
    },
    {
      "question": r"Differentiate \( f(x) = \ln(\sin(2x^2)) \).",
      "answer": r"Careful: inner function is \(2x^2\), so chain rule applies twice."
    },
    {
      "question": r"Differentiate \( f(x) = \ln(\tan(x^2 + 1)) \).",
      "answer": r"Use chain rule: derivative of \(\ln(\tan(...))\) is \(\sec^2(...)/\tan(...)\) times derivative of inner."
    }
  ],

  "Applications of Derivatives": [
    {
      "question": r"Use the closed interval method to find the absolute maximum and minimum of\n"
      r"\(f(x) = x^3 - 3x^2 + 4\) on \([0, 3]\).",
      "answer": r"Step 1: Find \(f'(x)\):\n"
      r"\(f'(x) = 3x^2 - 6x\)\n"
      r"Step 2: Find critical points by solving \(f'(x) = 0\):\n"
      r"\(3x^2 - 6x = 0 \Rightarrow 3x(x - 2) = 0 \Rightarrow x=0, 2\)\n"
      r"Step 3: Evaluate \(f(x)\) at endpoints and critical points:\n"
      r"\(f(0) = 0 - 0 + 4 = 4\)\n"
      r"\(f(2) = 8 - 12 + 4 = 0\)\n"
      r"\(f(3) = 27 - 27 + 4 = 4\)\n"
      r"Step 4: Maximum is 4 at \(x=0,3\), minimum is 0 at \(x=2\)."
    },
    {
      "question": r"Use the closed interval method to find the absolute maximum and minimum of\n"
      r"\(f(x) = x^3 - 6x^2 + 5\) on \([0, 4]\).",
      "answer": r"Check endpoints and critical points inside the interval after solving \(f'(x) = 3x^2 - 12x\)."
    },
    {
      "question": r"Use the closed interval method to find the absolute maximum and minimum of\n"
      r"\(f(x) = x^4 - 4x^3 + 10\) on \([0, 5]\).",
      "answer": r"Carefully analyze both endpoints and multiple interior critical points after solving \(f'(x) = 4x^3 - 12x^2\)."
    },

    {
      "question": r"Verify Rolle's Theorem applies to\n"
      r"\(f(x) = x^3 - 3x + 2\) on \([-2,2]\), and find the points \(c\) where\n"
      r"\(f'(c) = 0\).",
      "answer": r"Step 1: Check if \(f(-2) = f(2)\):\n"
      r"\(f(-2) = (-2)^3 - 3(-2) + 2 = -8 + 6 + 2 = 0\)\n"
      r"\(f(2) = 8 - 6 + 2 = 4\) Not equal, so Rolle's Theorem does not apply.\n"
      r"Answer: \(\boxed{\text{Rolle's Theorem does not apply}}\)"
    },
    {
      "question": r"Verify Rolle's Theorem applies to\n"
      r"\(f(x) = x^3 - 3x\) on \([- \sqrt{3}, \sqrt{3}]\), and find all \(c\) where \(f'(c) = 0\).",
      "answer": r"Check \(f(-\sqrt{3}) = f(\sqrt{3}) = 0\) and solve \(f'(x) = 3x^2 - 3\) for critical point(s)."
    },
    {
      "question": r"Does Rolle's Theorem apply to \(f(x) = \frac{1}{x}\) on \([-1, 1]\)? Explain why or why not.",
      "answer": r"Confirm if the function is continuous and differentiable over the interval before checking endpoints."
    },

    {
      "question": r"State and verify the Mean Value Theorem for\n"
      r"\(f(x) = x^2\) on \([1, 4]\).\nFind \(c\) such that \(f'(c) = \frac{f(4) - f(1)}{4 - 1}\).",
      "answer": r"Step 1: Compute average rate of change:\n"
      r"\(\frac{f(4) - f(1)}{4 - 1} = \frac{16 - 1}{3} = 5\)\n"
      r"Step 2: Find \(f'(x) = 2x\)\n"
      r"Set \(2c = 5 \Rightarrow c = 2.5\)\n"
      r"Since \(c \in (1,4)\), MVT holds and \(c=2.5\) satisfies it."
    },
    {
      "question": r"Verify the Mean Value Theorem for \(f(x) = x^3\) on \([0, 2]\).",
      "answer": r"Compute average rate of change then solve \(f'(c) = 3c^2\) equal to that value and verify \(c \in (0,2)\)."
    },
    {
      "question": r"Verify the Mean Value Theorem for \(f(x) = \ln(x)\) on \([1, e^2]\).",
      "answer": r"Apply MVT by computing \(\frac{f(e^2) - f(1)}{e^2 - 1}\) and solve \(f'(c) = \frac{1}{c}\) for this value."
    },

    {
      "question": r"Sketch the curve \(f(x) = \frac{x}{x^2 + 1}\).\n"
      r"Find domain, intercepts, asymptotes, intervals of increase/decrease,\n"
      r"concavity, points of inflection, and sketch.",
      "answer": r"Domain: All real numbers, \(\mathbb{R}\).\n"
      r"x-intercept: \(f(0) = 0\).\n"
      r"y-intercept: \(f(0) = 0\).\n"
      r"No vertical asymptotes since denominator \(>0\) always.\n"
      r"Horizontal asymptote: \(\lim_{x \to \pm \infty} \frac{x}{x^2+1} = 0\).\n"
      r"\(f'(x) = \frac{(1)(x^2+1) - x(2x)}{(x^2+1)^2} = \frac{1 - x^2}{(x^2+1)^2}\).\n"
      r"Critical points: \(f'(x) = 0 \Rightarrow x = \pm 1\).\n"
      r"Increase on \((-1, 1)\), decrease on \((-\infty,-1)\) and \((1, \infty)\).\n"
      r"\(f''(x) = \frac{2x(x^2 - 3)}{(x^2 + 1)^3}\).\n"
      r"Points of inflection where numerator zero: \(x=0\) and \(x=\pm \sqrt{3}\).\n"
      r"Concave up: \(-\sqrt{3} < x < 0\) and \(x > \sqrt{3}\).\n"
      r"Concave down: \(x < -\sqrt{3}\) and \(0 < x < \sqrt{3}\).\n"
      r"Sketch accordingly."
    },
    {
      "question": r"Sketch the curve \(f(x) = \frac{x^2}{x^2 + 4}\), and analyze its features: domain, asymptotes, extrema, concavity.",
      "answer": r"Use quotient rule to analyze first and second derivatives, and consider end behavior as \(x \to \infty\)."
    },
    {
      "question": r"Sketch \(f(x) = \frac{x^2 - 1}{x^2 + 1}\), and find key features: domain, intercepts, asymptotes, extrema, concavity.",
      "answer": r"Find \(f'(x)\) using quotient rule and test sign changes; for asymptotes analyze limits as \(x \to \infty\)."
    },

    {
      "question": r"A rectangular box with a square base and open top must have volume 32 cm³.\n"
      r"Find dimensions to minimize surface area.",
      "answer": r"Let side length \(x\), height \(h\).\n"
      r"Volume constraint: \(x^2 h = 32 \Rightarrow h = \frac{32}{x^2}\).\n"
      r"Surface area: \(A = x^2 + 4xh\).\n"
      r"Substitute \(h\): \(A = x^2 + \frac{128}{x}\).\n"
      r"Find critical points:\n"
      r"\(A' = 2x - \frac{128}{x^2} = 0\)\n"
      r"Multiply by \(x^2\): \(2x^3 = 128\Rightarrow x^3=64 \Rightarrow x=4\).\n"
      r"Find \(h = \frac{32}{16} = 2\).\n"
      r"Minimum surface area at \(x=4\), \(h=2\)."
    },
    {
      "question": r"Find dimensions of an open-top box with square base and volume 50 cm³ that minimizes surface area.",
      "answer": r"Use volume constraint \(x^2h = 50\) and minimize \(A = x^2 + 4xh\) by substitution and calculus."
    },
    {
      "question": r"A cylindrical can with fixed volume 100 cm³ has minimal surface area.\nFind optimal radius and height.",
      "answer": r"Use constraint \(\pi r^2 h = 100\), substitute into \(A = 2\pi rh + \pi r^2\), and minimize."
    },

    {
      "question": r"Use related rates:\n"
      r"A ladder 10 m long slides down a vertical wall.\n"
      r"How fast is the bottom moving away when top is 6 m above ground?\n"
      r"Given \(\frac{dy}{dt} = -1 \frac{m}{s}\), \(y\) is height.",
      "answer": r"Let \(x\) be distance from wall.\n"
      r"By Pythagoras: \(x^2 + y^2 = 10^2 = 100\).\n"
      r"Differentiate:\(2x \frac{dx}{dt} + 2y \frac{dy}{dt} = 0\).\n"
      r"At \(y=6\), \(x = \sqrt{100 - 36} = 8\).\n"
      r"Plug in values:\n"
      r" \(2 \cdot 8 \cdot \frac{dx}{dt} + 2 \cdot 6 \cdot (-1) = 0\)\n"
      r" \(16 \frac{dx}{dt} - 12 = 0\)\n"
      r" \(\frac{dx}{dt} = \frac{12}{16} = \frac{3}{4} \, m/s\)."
    },
    {
      "question": r"A 13 m ladder slides down a wall. When the top is 5 m high, how fast is the bottom moving if \(\frac{dy}{dt} = -1.2\)?",
      "answer": r"Use \(x^2 + y^2 = 169\), find \(x\), and differentiate both sides to solve for \(\frac{dx}{dt}\)."
    },
    {
      "question": r"A spotlight moves along the ground 20 m from a wall, tracking a person walking toward the wall.\nHow fast is the shadow length changing?",
      "answer": r"Draw similar triangles and use rates of change in proportion equations."
    },

    {
      "question": r"Use Newton's method to approximate root of \(x^3 - 7 = 0\) starting at \(x_0=2\).\n"
      r"Find \(x_1\).",
      "answer": r"Newton's formula:\n"
      r"\(x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)}\)\n"
      r"\(f(x) = x^3 - 7, f'(x) = 3x^2\)\n"
      r"Calculate:\n"
      r"\(x_1 = 2 - \frac{2^3 - 7}{3 \cdot 2^2} = 2 - \frac{8 - 7}{12} = 2 - \frac{1}{12} = \frac{23}{12} \approx 1.9167\)"
    },
    {
      "question": r"Use Newton's method to find the first approximation to a root of \(x^2 - 5 = 0\), starting from \(x_0 = 2\).",
      "answer": r"Use \(f(x) = x^2 - 5\), \(f'(x) = 2x\), and apply Newton’s formula once."
    },
    {
      "question": r"Use Newton's method to estimate a root of \(e^x - 3x = 0\) with \(x_0 = 1\).",
      "answer": r"Use derivative \(f'(x) = e^x - 3\), evaluate at \(x_0 = 1\), and compute \(x_1\)."
    }
  ],

  "Intro to Integration": [
    {
      "question": r"Evaluate the indefinite integral:\n"
      r"\(\int 3x (x^2 + 1)^4 \, dx\)",
      "answer": r"Use \(u\)-substitution:\n"
      r"Let \(u = x^2 + 1\), then \(\frac{du}{dx} = 2x\) or \(du = 2x\, dx\).\n"
      r"Rewrite \(3x\, dx = \frac{3}{2} du\).\n"
      r"Integral becomes:\n"
      r"\(\int 3x (x^2 + 1)^4 dx = \int (u)^4 \cdot \frac{3}{2} du = \frac{3}{2} \int u^4 du\).\n"
      r"Integrate:\n"
      r"\(\frac{3}{2} \cdot \frac{u^5}{5} + C = \frac{3}{10} (x^2 + 1)^5 + C\)."
    },
    {
      "question": r"Evaluate the indefinite integral:\n"
      r"\(\int 4x (x^2 + 3)^5 \, dx\)",
      "answer": r"Try letting \(u = x^2 + 3\), then express \(x dx\) in terms of \(du\)"
    },
    {
      "question": r"Evaluate the indefinite integral:\n"
      r"\(\int 6x (x^2 + 5)^7 \, dx\)",
      "answer": r"Use \(u = x^2 + 5\), then compute \(\int u^7 du\) with the proper coefficient adjustment"
    },

    {
      "question": r"Evaluate the indefinite integral:\n"
      r"\(\int \frac{\sin(\sqrt{x})}{\sqrt{x}} dx\)",
      "answer": r"Let \(u = \sqrt{x}\), so \(x = u^2\).\n"
      r"Then, \(dx = 2u\, du\).\n"
      r"Rewrite integral:\n"
      r"\(\int \frac{\sin(u)}{u} \cdot 2u\, du = 2 \int \sin(u) du\).\n"
      r"Integrate:\n"
      r"\(-2 \cos u + C = -2 \cos(\sqrt{x}) + C\)."
    },
    {
      "question": r"Evaluate the indefinite integral:\n"
      r"\(\int \frac{\cos(\sqrt{x})}{\sqrt{x}} dx\)",
      "answer": r"Let \(u = \sqrt{x}\), convert \(dx\) and simplify to a basic cosine integral"
    },
    {
      "question": r"Evaluate the indefinite integral:\n"
      r"\(\int \frac{\tan(\sqrt{x})}{\sqrt{x}} dx\)",
      "answer": r"Use substitution \(u = \sqrt{x}\), which converts to \(\int \tan(u)\, du\)"
    },

    {
      "question": r"Evaluate the definite integral:\n"
      r"\(\int_0^1 x e^{x^2} dx\)",
      "answer": r"Let \(u = x^2\), then \(du = 2x dx\) or \(x dx = \frac{du}{2}\).\n"
      r"Change limits:\n"
      r"When \(x=0\), \(u=0\), when \(x=1\), \(u=1\).\n"
      r"Integral becomes:\n"
      r"\(\int_0^1 x e^{x^2} dx = \int_0^1 e^u \cdot \frac{du}{2} = \frac{1}{2} \int_0^1 e^u du\).\n"
      r"Integrate:\n"
      r"\(\frac{1}{2}[e^u]_0^1 = \frac{1}{2}(e - 1)\)."
    },
    {
      "question": r"Evaluate the definite integral:\n"
      r"\(\int_0^2 x e^{x^2} dx\)",
      "answer": r"Let \(u = x^2\), new limits will be from 0 to 4"
    },
    {
      "question": r"Evaluate the definite integral:\n"
      r"\(\int_0^1 x e^{2x^2} dx\)",
      "answer": r"Use substitution \(u = 2x^2\), adjust \(du\) and the limits accordingly"
    },

    {
      "question": r"Evaluate the definite integral:\n"
      r"\(\int_{\pi/4}^{\pi/2} \frac{\sin x}{\cos^3 x} dx\)",
      "answer": r"Let \(u = \cos x\), then \(du = -\sin x dx\) or \(\sin x dx = -du\).\n"
      r"Change limits:\n"
      r"When \(x = \pi/4\), \(u = \frac{\sqrt{2}}{2}\), when \(x = \pi/2\), \(u=0\).\n"
      r"Integral becomes:\n"
      r"\(\int_{\sqrt{2}/2}^0 \frac{-1}{u^3} du = \int_0^{\sqrt{2}/2} u^{-3} du\).\n"
      r"Integrate:\n"
      r"\(\left[ \frac{u^{-2}}{-2} \right]_0^{\sqrt{2}/2} = -\frac{1}{2} \left(\frac{4}{2} - \lim_{u \to 0} \frac{1}{u^2} \right)\).\n"
      r"Since integral diverges at 0, limit does not exist.\n"
      r"Answer: Integral is improper and diverges."
    },
    {
      "question": r"Evaluate the definite integral:\n"
      r"\(\int_{\pi/6}^{\pi/3} \frac{\sin x}{\cos^4 x} dx\)",
      "answer": r"Use \(u = \cos x\), check if \(u = 0\) is within bounds for divergence"
    },
    {
      "question": r"Evaluate the definite integral:\n"
      r"\(\int_{\pi/6}^{\pi/2} \frac{\sin x}{\cos^5 x} dx\)",
      "answer": r"Let \(u = \cos x\), and verify if the lower limit of \(u = \cos(\pi/2) = 0\) causes divergence"
    },

    {
      "question": r"Express the definite integral as a Riemann sum using right endpoints:\n"
      r"\(\int_0^2 (3x^2 + 1) dx\)",
      "answer": r"Divide \([0,2]\) into \(n\) subintervals each of width \(\Delta x = \frac{2}{n}\).\n"
      r"Right endpoints: \(x_i = \frac{2i}{n}\) for \(i=1,2,...,n\).\n"
      r"Riemann sum:\n"
      r"\(\sum_{i=1}^n \left[3 \left(\frac{2i}{n}\right)^2 + 1\right] \Delta x = \sum_{i=1}^n \left[3 \frac{4i^2}{n^2} + 1\right] \frac{2}{n}\).\n"
      r"Simplify:\n"
      r"\(\sum_{i=1}^n \left(\frac{24 i^2}{n^3} + \frac{2}{n}\right)\)."
    },
    {
      "question": r"Express the definite integral as a Riemann sum using right endpoints:\n"
      r"\(\int_0^3 (2x^2 + 1) dx\)",
      "answer": r"Use \(\Delta x = \frac{3}{n}\), and right endpoints \(x_i = \frac{3i}{n}\)"
    },
    {
      "question": r"Express the definite integral as a Riemann sum using right endpoints:\n"
      r"\(\int_1^4 (4x^2 - x + 2) dx\)",
      "answer": r"Adjust \(\Delta x = \frac{3}{n}\), and \(x_i = 1 + \frac{3i}{n}\)"
    },

    {
      "question": r"Express the definite integral as a Riemann sum using left endpoints:\n"
      r"\(\int_1^3 (2x - 1) dx\)",
      "answer": r"Divide \([1,3]\) into \(n\) subintervals each of width \(\Delta x = \frac{2}{n}\).\n"
      r"Left endpoints: \(x_i = 1 + \frac{2(i-1)}{n}\) for \(i=1,2,...,n\).\n"
      r"Riemann sum:\n"
      r"\(\sum_{i=1}^n \left(2 \left[1 + \frac{2(i-1)}{n}\right] - 1\right) \frac{2}{n}\).\n"
      r"Simplify inside sum:\n"
      r"\(\sum_{i=1}^n \left(1 + \frac{4(i-1)}{n}\right) \frac{2}{n} = \sum_{i=1}^n \left(\frac{2}{n} + \frac{8(i-1)}{n^2}\right)\)."
    },
    {
      "question": r"Express the definite integral as a Riemann sum using left endpoints:\n"
      r"\(\int_0^2 (x^2 + 2x) dx\)",
      "answer": r"Set \(\Delta x = \frac{2}{n}\), and \(x_i = \frac{2(i-1)}{n}\)"
    },
    {
      "question": r"Express the definite integral as a Riemann sum using left endpoints:\n"
      r"\(\int_2^5 (x^2 + 1) dx\)",
      "answer": r"\(\Delta x = \frac{3}{n}\), and \(x_i = 2 + \frac{3(i-1)}{n}\)"
    },

    {
      "question": r"Let \(f\) be continuous on \([1,4]\) and \(F'(x) = f(x)\).\n"
      r"If \(F(1) = 3\) and \(F(4) = 11\), find \(\int_1^4 f(x) dx\).",
      "answer": r"By the Fundamental Theorem of Calculus, part 2:\n"
      r"\(\int_1^4 f(x) dx = F(4) - F(1) = 11 - 3 = 8\)."
    },
    {
      "question": r"If \(F(2) = 5\), \(F(5) = 13\), and \(F'(x) = f(x)\), compute \(\int_2^5 f(x) dx\).",
      "answer": r"Use \(F(5) - F(2)\)"
    },
    {
      "question": r"If \(F'(x) = f(x)\), \(F(0) = -1\), and \(F(3) = 10\), find \(\int_0^3 f(x) dx\).",
      "answer": r"Apply Fundamental Theorem: subtract \(F(0)\) from \(F(3)\)"
    },

    {
      "question": r"Evaluate:\n"
      r"\(\int \frac{e^{\sqrt{x}}}{\sqrt{x}} dx\).",
      "answer": r"Let \(u = \sqrt{x}\), so \(x = u^2\).\n"
      r"Then \(dx = 2u\, du\), rewrite integral:\n"
      r"\(\int \frac{e^u}{u} \cdot 2u du = 2 \int e^u du = 2 e^u + C = 2 e^{\sqrt{x}} + C\)."
    },
    {
      "question": r"Evaluate:\n"
      r"\(\int \frac{\ln(\sqrt{x})}{\sqrt{x}} dx\).",
      "answer": r"Use substitution \(u = \sqrt{x}\), convert \(dx\) and simplify"
    },
    {
      "question": r"Evaluate:\n"
      r"\(\int \frac{e^{3\sqrt{x}}}{\sqrt{x}} dx\).",
      "answer": r"Use \(u = \sqrt{x}\), and account for chain rule when integrating \(e^{3u}\)"
    }
  ],
};