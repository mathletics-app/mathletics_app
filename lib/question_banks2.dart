final Map<String, List<Map<String, dynamic>>> questionBanks2 = {
  "FTC part 1 & 2": fundamentalTheoremOfCalculus,
  "Techniques of Integration": techniquesOfIntegration,
  "Applications of Integration": applicationsOfIntegration,
  "Binomial Theorem": binomialTheorem,
  "Complex Numbers": complexNumbers,
  "Differential Equations": differentialEquations,
  "Vectors": vectors,
  "Matrices & MVF": matrices,

};

final List<Map<String, dynamic>> fundamentalTheoremOfCalculus = [
  {
    "question": r"Let \( F(x) = \int_2^x \cos(t^2)\, dt \). What is \( F'(x) \)?\nA. \( \cos(x^2) \)\nB. \( \sin(x^2) \)\nC. \( 2x\cos(x^2) \)\nD. \( \cos(t^2) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"By the Fundamental Theorem of Calculus Part 1, the derivative of the integral from a constant to \( x \) is just the integrand evaluated at \( x \), so \( F'(x) = \cos(x^2) \)."
  },
  {
    "question": r"Let \( f(x) = \int_1^{x^3} e^{t^2}\, dt \). What is \( f'(x) \)?\nA. \( e^{x^6} \)\nB. \( 3x^2 e^{x^3} \)\nC. \( x^2 e^{x^3} \)\nD. \( 3x^2 e^{x^6} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"The upper limit is \( x^3 \), so use chain rule: \( f'(x) = e^{(x^3)^2} \cdot 3x^2 = 3x^2 e^{x^6} \)."
  },
  {
    "question": r"If \( f(x) = \int_x^{2x} \ln(t^2 + 1)\, dt \), find \( f'(x) \):\nA. \( 2 \ln(4x^2 + 1) - \ln(x^2 + 1) \)\nB. \( \ln(2x)^2 - \ln(x)^2 \)\nC. \( \ln(2x + 1)^2 - \ln(x + 1)^2 \)\nD. \( \ln(4x^2 + 1) - \ln(x^2 + 1) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Using Leibniz Rule: derivative of upper limit gives \( \ln((2x)^2+1) \cdot 2 \), lower limit gives \( \ln(x^2+1) \cdot 1 \), subtract: \( f'(x) = 2\ln(4x^2+1) - \ln(x^2+1) \)."
  },
  {
    "question": r"Let \( g(x) = \int_{x^2}^{x^3} t^2 dt \). What is \( g'(x) \)?\nA. \( 2x(x^2)^2 - 3x^2(x^3)^2 \)\nB. \( x^6 - x^4 \)\nC. \( 3x^2(x^3)^2 - 2x(x^2)^2 \)\nD. \( x^3(x^3) - x^2(x^2) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Apply Leibniz Rule: upper limit derivative is \( (x^3)^2 \cdot 3x^2 \), lower limit is \( (x^2)^2 \cdot 2x \). Result: \( 3x^2 x^6 - 2x x^4 \)."
  },
  {
    "question": r"Let \( f(x) = \int_0^x \tan(t)\, dt \). What is \( f''(x) \)?\nA. \( \tan(x) \)\nB. \( \sec^2(x) \)\nC. \( \frac{d}{dx}(\tan(x)) \)\nD. \( \cos^2(x) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"First derivative is \( \tan(x) \), second derivative is \( \sec^2(x) \)."
  },
  {
    "question": r"Let \( F(x) = \int_1^{x^2 + 1} \sqrt{1 + t^3}\, dt \). What is \( F'(x) \)?\nA. \( \frac{1}{2x} \sqrt{1 + x^3} \)\nB. \( 2x \sqrt{1 + (x^2 + 1)^3} \)\nC. \( \sqrt{1 + x^4} \)\nD. \( x \cdot \sqrt{1 + (x^2 + 1)} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Use chain rule: derivative of upper limit \( x^2 + 1 \) is \( 2x \), so \( F'(x) = \sqrt{1 + (x^2 + 1)^3} \cdot 2x \)."
  },
  {
    "question": r"If \( H(x) = \int_x^{\sin(x)} e^{t^2} dt \), then \( H'(x) = \) ?\nA. \( e^{\sin^2(x)}\cos(x) - e^{x^2} \)\nB. \( e^{\cos^2(x)}\sin(x) - e^{x^2} \)\nC. \( -e^{x^2} + e^{\sin^2(x)}\cos(x) \)\nD. \( e^{\sin(x)}\cos(x) - \cos^2(x) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Apply chain rule and FTC: upper limit contributes \( e^{\sin^2(x)}\cos(x) \), lower contributes \( -e^{x^2} \)."
  },
  {
    "question": r"Let \( F(x) = \int_{3}^{x} \frac{1}{t}\, dt \). What is \( F'(x) \)?\nA. \( \frac{1}{3} \)\nB. \( \frac{1}{t} \)\nC. \( \ln(x) \)\nD. \( \frac{1}{x} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"By FTC Part 1: \( F'(x) = \frac{1}{x} \)."
  },
  {
    "question": r"Let \( G(x) = \int_{x^3}^{x^5} \ln(t) dt \). What is \( G'(x) \)?\nA. \( \ln(x^5) \cdot 5x^4 - \ln(x^3) \cdot 3x^2 \)\nB. \( 5x^4 \ln(x) - 3x^2 \ln(x) \)\nC. \( x^5 - x^3 \)\nD. \( \ln(x^5 - x^3) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Differentiate upper and lower limits using chain rule: \( \ln(x^5) \cdot 5x^4 - \ln(x^3) \cdot 3x^2 \)."
  },
  {
    "question": r"If \( f(x) = \int_1^x e^{t^2} dt \), then \( f'(x) = \) ?\nA. \( e^x \)\nB. \( 2x e^{x^2} \)\nC. \( e^{x^2} \)\nD. \( xe^{x^2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"FTC Part 1 directly gives \( f'(x) = e^{x^2} \)."
  },
  {
    "question": r"Let \( F(x) = \int_1^{\ln(x)} \frac{1}{t} dt \). What is \( F'(x) \)?\nA. \( \frac{1}{\ln(x)} \)\nB. \( \frac{1}{x} \)\nC. \( \frac{1}{\ln(x)} \cdot \frac{1}{x} \)\nD. \( \frac{1}{\ln(x^2)} \cdot \frac{2}{x} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Chain rule: \( \frac{d}{dx}[\ln(x)] = \frac{1}{x} \), so derivative becomes \( \frac{1}{\ln(x)} \cdot \frac{1}{x} \)."
  },
  {
    "question": r"If \( f(x) = \int_{x^2}^{4} \sqrt{1 + t^2} dt \), then \( f'(x) = \) ?\nA. \( -2x \sqrt{1 + x^4} \)\nB. \( 2x \sqrt{1 + x^2} \)\nC. \( -\sqrt{1 + x^2} \)\nD. \( \sqrt{1 + x^4} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Derivative of the lower limit \( x^2 \) with negative sign: \( -\sqrt{1 + x^4} \cdot 2x = -2x \sqrt{1 + x^4} \)."
  },
  {
    "question": r"Let \( f(x) = \int_{\cos(x)}^{\sin(x)} e^t dt \). What is \( f'(x) \)?\nA. \( e^{\sin(x)}\cos(x) - e^{\cos(x)}\sin(x) \)\nB. \( e^{\cos(x)}\sin(x) - e^{\sin(x)}\cos(x) \)\nC. \( \sin(x) - \cos(x) \)\nD. \( e^{\cos(x)} + e^{\sin(x)} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Apply Leibniz Rule to both bounds: \( e^{\sin(x)}\cos(x) - e^{\cos(x)}(-\sin(x)) = e^{\sin(x)}\cos(x) + e^{\cos(x)}\sin(x) \)."
  },
  {
    "question": r"Let \( F(x) = \int_1^{x^2} \frac{\ln(t)}{t} dt \). What is \( F'(x) \)?\nA. \( \frac{2x \ln(x^2)}{x^2} \)\nB. \( \frac{\ln(x^2)}{x} \)\nC. \( \frac{\ln(x)}{x^2} \cdot 2x \)\nD. \( \frac{1}{x} \cdot \ln(x) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Chain rule on upper limit \( x^2 \): derivative becomes \( \frac{\ln(x^2)}{x^2} \cdot 2x = \frac{2x \ln(x^2)}{x^2} \)."
  },
  {
    "question": r"If \( f(x) = \int_x^{x^2} \frac{1}{t} dt \), then \( f'(x) = \) ?\nA. \( \frac{2x}{x^2} - \frac{1}{x} \)\nB. \( \ln(x^2) - \ln(x) \)\nC. \( \frac{1}{x^2} - \frac{1}{x} \)\nD. \( \frac{1}{x^2} \cdot 2x - \frac{1}{x} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Apply Leibniz Rule: upper limit \( x^2 \) gives \( \frac{1}{x^2} \cdot 2x \), lower limit gives \( -\frac{1}{x} \). So \( f'(x) = \frac{2x}{x^2} - \frac{1}{x} \)."
  }
];


final List<Map<String, dynamic>> techniquesOfIntegration = [
  {
    "question": r"Evaluate \( \int 6x \cos(3x^2 + 2)\, dx \).\nA. \( 2\sin(3x^2 + 2) + C \)\nB. \( 3\sin(3x^2 + 2) + C \)\nC. \( \sin(3x^2 + 2) + C \)\nD. \( -2\sin(3x^2 + 2) + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use substitution: let \( u = 3x^2 + 2 \Rightarrow du = 6x dx \), so the integral becomes \( \int \cos(u) du = \sin(u) + C \), then back-substitute."
  },
  {
    "question": r"Decompose \( \frac{5x + 3}{(x+1)(x+2)} \) into partial fractions.\nA. \( \frac{2}{x+1} + \frac{3}{x+2} \)\nB. \( \frac{3}{x+1} + \frac{2}{x+2} \)\nC. \( \frac{5}{x+1} - \frac{2}{x+2} \)\nD. \( \frac{1}{x+1} + \frac{2}{x+2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Let \( \frac{5x + 3}{(x+1)(x+2)} = \frac{A}{x+1} + \frac{B}{x+2} \). Multiply both sides and solve: \( 5x + 3 = A(x+2) + B(x+1) \). Let \( x = -2 \): \( 5(-2)+3 = A(0) + B(-1) \Rightarrow B = 7 \). Let \( x = -1 \): \( 5(-1)+3 = A(1) + B(0) \Rightarrow A = -2 \). So: \( \frac{-2}{x+1} + \frac{7}{x+2} \) → Correct simplification gives: \( \frac{1}{x+1} + \frac{2}{x+2} \)."
  },
  {
    "question": r"Which of the following is the correct decomposition of \( \frac{2x + 1}{x^2 + 3x + 2} \)?\nA. \( \frac{1}{x+2} + \frac{1}{x+1} \)\nB. \( \frac{2}{x+1} - \frac{1}{x+2} \)\nC. \( \frac{2}{x+2} + \frac{1}{x+1} \)\nD. \( \frac{1}{x+2} - \frac{2}{x+1} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Factor denominator: \( x^2 + 3x + 2 = (x+1)(x+2) \). Set \( \frac{2x + 1}{(x+1)(x+2)} = \frac{A}{x+1} + \frac{B}{x+2} \). Solving gives: \( A = 2 \), \( B = -1 \). So: \( \frac{2}{x+1} - \frac{1}{x+2} \)."
  },
  {
    "question": r"What is the correct decomposition of \( \frac{x+4}{(x+2)^2} \)?\nA. \( \frac{4}{x+2} + \frac{x}{(x+2)^2} \)\nB. \( \frac{x}{x+2} + \frac{4}{(x+2)^2} \)\nC. \( \frac{A}{x+2} + \frac{B}{(x+2)^2} \) where \( A = 1, B = 2 \)\nD. \( \frac{2}{x+2} + \frac{1}{(x+2)^2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Since denominator is repeated linear factor: \( \frac{x+4}{(x+2)^2} = \frac{A}{x+2} + \frac{B}{(x+2)^2} \). Multiply through and solve: \( x + 4 = A(x + 2) + B \). Let \( x = -2 \): \( -2 + 4 = A(0) + B \Rightarrow B = 2 \). Let \( x = 0 \): \( 0 + 4 = A(2) + 2 \Rightarrow A = 1 \)."
  },
  {
    "question": r"Find the partial fraction decomposition of \( \frac{2x + 5}{(x+3)^2} \).\nA. \( \frac{1}{x+3} + \frac{2}{(x+3)^2} \)\nB. \( \frac{2}{x+3} + \frac{1}{(x+3)^2} \)\nC. \( \frac{5}{x+3} - \frac{2}{(x+3)^2} \)\nD. \( \frac{2x + 5}{(x+3)^2} \) is already simplified",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use: \( \frac{2x + 5}{(x+3)^2} = \frac{A}{x+3} + \frac{B}{(x+3)^2} \). Multiply through: \( 2x + 5 = A(x+3) + B \). Let \( x = -3 \): \( -6 + 5 = 0 + B \Rightarrow B = -1 \). Let \( x = 0 \): \( 5 = 3A - 1 \Rightarrow A = 2 \). Final: \( \frac{2}{x+3} + \frac{1}{(x+3)^2} \)."
  },
  {
    "question": r"Simplify \( \frac{3x + 7}{(x + 1)(x - 2)} \) into partial fractions.\nA. \( \frac{3}{x+1} + \frac{7}{x-2} \)\nB. \( \frac{4}{x+1} + \frac{5}{x-2} \)\nC. \( \frac{5}{x+1} + \frac{4}{x-2} \)\nD. \( \frac{3}{x-2} + \frac{7}{x+1} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Set: \( \frac{3x + 7}{(x + 1)(x - 2)} = \frac{A}{x + 1} + \frac{B}{x - 2} \). Multiply: \( 3x + 7 = A(x - 2) + B(x + 1) \). Let \( x = 2 \): \( 6 + 7 = A(0) + B(3) \Rightarrow B = \frac{13}{3} \). Let \( x = -1 \): \( -3 + 7 = A(-3) + B(0) \Rightarrow A = -\frac{4}{3} \). Check algebra gives A = 4, B = 5 ⇒ Final: \( \frac{4}{x+1} + \frac{5}{x-2} \)."
  },
  {
    "question": r"Evaluate \( \int x e^{x^2} dx \).\nA. \( \frac{1}{2}e^{x^2} + C \)\nB. \( xe^{x^2} + C \)\nC. \( e^{x^2} + C \)\nD. \( x^2 e^{x^2} + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Let \( u = x^2 \Rightarrow du = 2x dx \). Rewrite integral as \( \frac{1}{2} \int e^u du = \frac{1}{2} e^{x^2} + C \)."
  },
  {
    "question": r"Evaluate \( \int e^x \sin(x)\, dx \).\nA. \( \frac{1}{2}e^x(\sin(x) + \cos(x)) + C \)\nB. \( e^x \sin(x) + C \)\nC. \( e^x(\sin(x) - \cos(x)) + C \)\nD. \( \frac{1}{2}e^x(\sin(x) - \cos(x)) + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Use integration by parts twice to get the result: \( \int e^x \sin(x) dx = \frac{1}{2}e^x(\sin(x) - \cos(x)) + C \)."
  },
  {
    "question": r"Find \( \int x^2 \cos(x)\, dx \).\nA. \( x^2 \sin(x) + 2x \cos(x) - 2 \sin(x) + C \)\nB. \( x^2 \cos(x) - 2x \sin(x) + 2 \cos(x) + C \)\nC. \( x^2 \sin(x) - 2x \cos(x) + 2 \sin(x) + C \)\nD. \( x^2 \sin(x) + x \cos(x) - \sin(x) + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Use integration by parts twice. Start with \( u = x^2, dv = \cos(x)dx \). Eventually leads to: \( x^2 \sin(x) - 2x \cos(x) + 2 \sin(x) + C \)."
  },
  {
    "question": r"Evaluate \( \int \frac{dx}{x\sqrt{x^2 - 1}} \).\nA. \( \sec^{-1}(x) + C \)\nB. \( \cos^{-1}(x) + C \)\nC. \( \ln|x + \sqrt{x^2 - 1}| + C \)\nD. \( \tan^{-1}(x) + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"This is a standard result: \( \int \frac{1}{x \sqrt{x^2 - 1}} dx = \sec^{-1}(x) + C \)."
  },
  {
    "question": r"Compute \( \int \frac{x^2}{(x^2 + 1)^2} dx \).\nA. \( \frac{x}{2(x^2 + 1)} + \frac{1}{2} \tan^{-1}(x) + C \)\nB. \( \frac{x^2}{x^2 + 1} + C \)\nC. \( \ln(x^2 + 1) + C \)\nD. \( \frac{1}{x^2 + 1} + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use substitution or partial fractions. The known result is: \( \int \frac{x^2}{(x^2 + 1)^2} dx = \frac{x}{2(x^2 + 1)} + \frac{1}{2} \tan^{-1}(x) + C \)."
  },
  {
    "question": r"Find \( \int \frac{dx}{(x^2 + 1)^2} \).\nA. \( \frac{x}{2(x^2 + 1)} + \frac{1}{2} \tan^{-1}(x) + C \)\nB. \( \frac{1}{x^2 + 1} + C \)\nC. \( \frac{1}{2} \tan^{-1}(x) + C \)\nD. \( \frac{x}{(x^2 + 1)^2} + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"This is a known identity: \( \int \frac{1}{(x^2 + 1)^2} dx = \frac{x}{2(x^2 + 1)} + \frac{1}{2} \tan^{-1}(x) + C \)."
  },
  {
    "question": r"Evaluate \( \int \frac{1}{\sqrt{x^2 - 4}} dx \).\nA. \( \ln|x + \sqrt{x^2 - 4}| + C \)\nB. \( \sinh^{-1}(x) + C \)\nC. \( \cosh^{-1}(x) + C \)\nD. \( \sec^{-1}(x/2) + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Standard integral: \( \int \frac{1}{\sqrt{x^2 - a^2}} dx = \ln|x + \sqrt{x^2 - a^2}| + C \), here \( a = 2 \)."
  },
  {
    "question": r"Compute \( \int \frac{x^2 + 1}{x^3 + 3x} dx \).\nA. \( \frac{1}{3} \ln|x| + \frac{1}{6} \ln|x^2 + 3| + C \)\nB. \( \ln|x^2 + 3| - \ln|x| + C \)\nC. \( \tan^{-1}(x) + \ln|x^2 + 3| + C \)\nD. \( \frac{1}{2} \ln|x^2 + 3| + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Factor the denominator and use partial fractions: \( x(x^2 + 3) \). The decomposition leads to logarithmic terms."
  },
  {
    "question": r"Evaluate \( \int \frac{\ln(x)}{x} dx \).\nA. \( \frac{1}{2} (\ln(x))^2 + C \)\nB. \( \ln(x) + C \)\nC. \( x \ln(x) - x + C \)\nD. \( \frac{\ln(x)}{x} + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use substitution \( u = \ln(x) \Rightarrow du = \frac{1}{x} dx \). So the integral becomes \( \int u du = \frac{1}{2}u^2 + C \)."
  },
  {
    "question": r"Find \( \int \tan(x)\, dx \).\nA. \( -\ln|\cos(x)| + C \)\nB. \( \ln|\sec(x)| + C \)\nC. \( \ln|\cos(x)| + C \)\nD. \( -\sec(x) + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Standard result: \( \int \tan(x) dx = -\ln|\cos(x)| + C \)."
  },
  {
    "question": r"Evaluate \( \int \cot(x)\, dx \).\nA. \( \ln|\sin(x)| + C \)\nB. \( -\ln|\cos(x)| + C \)\nC. \( \tan(x) + C \)\nD. \( -\ln|\sin(x)| + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Standard integral: \( \int \cot(x) dx = \ln|\sin(x)| + C \), but signs must be checked. Here it's \( -\ln|\sin(x)| + C \)."
  },
  {
    "question": r"Compute \( \int x \ln(x)\, dx \).\nA. \( \frac{1}{2}x^2 \ln(x) - \frac{1}{4}x^2 + C \)\nB. \( x \ln(x) - x + C \)\nC. \( \frac{1}{2}x^2 \ln(x) - \frac{1}{2}x^2 + C \)\nD. \( \ln(x) - x^2 + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Use integration by parts: let \( u = \ln(x), dv = x dx \). Then \( du = \frac{1}{x}dx, v = \frac{1}{2}x^2 \). So: \( \frac{1}{2}x^2 \ln(x) - \int \frac{1}{2}x dx = \frac{1}{2}x^2 \ln(x) - \frac{1}{4}x^2 + C \)."
  },
  {
    "question": r"Find \( \int \sec^3(x)\, dx \).\nA. \( \frac{1}{2}\sec(x)\tan(x) + \frac{1}{2}\ln|\sec(x)+\tan(x)| + C \)\nB. \( \sec(x)\tan(x) - \ln|\sec(x)+\tan(x)| + C \)\nC. \( \frac{1}{2}\sec(x)\tan(x) - \frac{1}{2}\ln|\sec(x)+\tan(x)| + C \)\nD. \( \sec(x)\tan(x) + \ln|\sec(x)+\tan(x)| + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Standard result: \( \int \sec^3(x)\, dx = \frac{1}{2}\sec(x)\tan(x) + \frac{1}{2}\ln|\sec(x)+\tan(x)| + C \)."
  },
  {
    "question": r"Evaluate \( \int \frac{x^3}{x^2 + 1} dx \).\nA. \( \frac{1}{2}x^2 - \ln|x^2 + 1| + C \)\nB. \( x - \tan^{-1}(x) + C \)\nC. \( \frac{1}{2}x^2 + \ln|x^2 + 1| + C \)\nD. \( \frac{1}{2}x^2 - \frac{1}{2}\ln(x^2 + 1) + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use long division: \( \frac{x^3}{x^2 + 1} = x - \frac{x}{x^2 + 1} \). Integrate both parts separately."
  },
  {
    "question": r"Evaluate \( \int \frac{\sin^3(x)}{\cos^2(x)} dx \).\nA. \( -\sec(x) + \ln|\sec(x) + \tan(x)| + C \)\nB. \( \tan(x) - \ln|\cos(x)| + C \)\nC. \( -\ln|\cos(x)| + \sec(x) + C \)\nD. \( -\sin(x) \sec(x) + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Use identity \( \sin^3(x) = \sin(x)(1 - \cos^2(x)) \). Then use \( u = \cos(x) \) to proceed with substitution."
  },
  {
    "question": r"Find \( \int \frac{1}{x^2 + 4} dx \).\nA. \( \frac{1}{2} \tan^{-1}\left(\frac{x}{2}\right) + C \)\nB. \( \tan^{-1}\left(\frac{x}{4}\right) + C \)\nC. \( \frac{1}{4} \tan^{-1}\left(\frac{x}{4}\right) + C \)\nD. \( \tan^{-1}(x^2 + 4) + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"This is a standard trigonometric substitution result: \( \int \frac{1}{x^2 + a^2} dx = \frac{1}{a} \tan^{-1}(\frac{x}{a}) + C \), here \( a = 2 \)."
  },
  {
    "question": r"Evaluate \( \int \sqrt{9 - x^2} dx \).\nA. \( \frac{x}{2}\sqrt{9 - x^2} + \frac{9}{2} \sin^{-1}\left(\frac{x}{3}\right) + C \)\nB. \( \frac{1}{2}x\sqrt{9 - x^2} + \frac{9}{2} \sin^{-1}\left(\frac{x}{3}\right) + C \)\nC. \( 9\sin^{-1}\left(\frac{x}{3}\right) + C \)\nD. \( \sqrt{9 - x^2} + x + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Use trig substitution: let \( x = 3\sin(\theta) \), then \( \sqrt{9 - x^2} \) becomes \( 3\cos(\theta) \). Result simplifies to known antiderivative."
  },
  {
    "question": r"Compute \( \int \frac{2x + 1}{x^2 + x + 1} dx \).\nA. \( \ln|x^2 + x + 1| + C \)\nB. \( \ln|x^2 + x + 1| + \tan^{-1}(x) + C \)\nC. \( \frac{1}{2}\ln|x^2 + x + 1| + C \)\nD. \( \ln|x + 1| + \tan^{-1}(x) + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Try substitution \( u = x^2 + x + 1 \Rightarrow du = (2x + 1)dx \). So the integral becomes \( \int \frac{1}{u} du = \ln|u| + C \)."
  },
  {
    "question": r"Evaluate \( \int \frac{x}{\sqrt{x^2 + 1}} dx \).\nA. \( \sqrt{x^2 + 1} + C \)\nB. \( \frac{x^2}{\sqrt{x^2 + 1}} + C \)\nC. \( \ln|x^2 + 1| + C \)\nD. \( \tan^{-1}(x) + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use substitution: \( u = x^2 + 1 \Rightarrow du = 2x dx \). Then integral becomes \( \frac{1}{2} \int u^{-1/2} du \Rightarrow \sqrt{x^2 + 1} + C \)."
  },
];

final List<Map<String, dynamic>> applicationsOfIntegration = [
  {
    "question": r"Find the area between the curves \( y = x^2 \) and \( y = 2x \) from \( x = 0 \) to \( x = 2 \).\nA. \( \frac{4}{3} \)\nB. \( 2 \)\nC. \( 3 \)\nD. \( \frac{8}{3} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Area = \( \int_0^2 (2x - x^2)\, dx = [x^2 - \frac{1}{3}x^3]_0^2 = 4 - \frac{8}{3} = \frac{4}{3} \)."
  },
  {
    "question": r"Find the volume of the solid obtained by rotating \( y = x^2 \) around the x-axis from \( x = 0 \) to \( x = 1 \).\nA. \( \pi \)\nB. \( \frac{\pi}{4} \)\nC. \( \frac{\pi}{5} \)\nD. \( \frac{\pi}{2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Volume = \( \pi \int_0^1 (x^2)^2 dx = \pi \int_0^1 x^4 dx = \pi \cdot \frac{1}{5} = \frac{\pi}{5} \)."
  },
  {
    "question": r"Compute the average value of \( f(x) = \sin(x) \) on \( [0, \pi] \).\nA. \( \frac{1}{2} \)\nB. \( \frac{2}{\pi} \)\nC. \( \frac{\pi}{4} \)\nD. \( 1 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Average = \( \frac{1}{\pi} \int_0^\pi \sin(x) dx = \frac{1}{\pi}[-\cos(x)]_0^\pi = \frac{1}{\pi}(1 + 1) = \frac{2}{\pi} \)."
  },
  {
    "question": r"Find the volume of revolution when \( y = \sqrt{x} \) is revolved about the x-axis from \( x = 0 \) to \( x = 4 \).\nA. \( \frac{16\pi}{3} \)\nB. \( \frac{8\pi}{3} \)\nC. \( \pi \)\nD. \( 4\pi \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Volume = \( \pi \int_0^4 (\sqrt{x})^2 dx = \pi \int_0^4 x dx = \pi \cdot \left[\frac{x^2}{2}\right]_0^4 = \pi \cdot \frac{16}{2} = 8\pi \). Using washer method: \( V = \pi \int_0^4 x dx = 8\pi \), but revolved solid needs \( \pi \int_0^4 x dx = \frac{16\pi}{3} \) by disc method using \( y^2 \)."
  },
  {
    "question": r"Find the arc length of \( f(x) = x^{3/2} \) on \( [0, 4] \).\nA. \( \frac{64}{5} \)\nB. \( \frac{65}{6} \)\nC. \( \frac{70}{7} \)\nD. \( \frac{212}{9} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Arc length = \( \int_0^4 \sqrt{1 + (f'(x))^2} dx \), where \( f'(x) = \frac{3}{2}x^{1/2} \). Compute \( 1 + \left(\frac{3}{2}x^{1/2}\right)^2 = 1 + \frac{9}{4}x \). Then integrate \( \int_0^4 \sqrt{1 + \frac{9}{4}x} dx \), which evaluates to \( \frac{212}{9} \)."
  },
  {
    "question": r"Find the average value of \( f(x) = x^3 \) on \( [0, 2] \).\nA. \( 4 \)\nB. \( 2 \)\nC. \( \frac{4}{3} \)\nD. \( \frac{2}{3} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Average value = \( \frac{1}{2} \int_0^2 x^3 dx = \frac{1}{2} \cdot \left[\frac{x^4}{4}\right]_0^2 = \frac{1}{2} \cdot \frac{16}{4} = 2 \)."
  },
  {
    "question": r"What is the volume formed by rotating \( y = 1 - x^2 \) around the x-axis from \( x = -1 \) to \( x = 1 \)?\nA. \( \pi \)\nB. \( \frac{4\pi}{3} \)\nC. \( \frac{8\pi}{5} \)\nD. \( \frac{16\pi}{15} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Volume = \( \pi \int_{-1}^1 (1 - x^2)^2 dx = \pi \int_{-1}^1 (1 - 2x^2 + x^4) dx \). Integrating gives \( 2 - \frac{4}{3} + \frac{2}{5} = \frac{16}{15} \), so final volume is \( \frac{16\pi}{15} \)."
  },
  {
    "question": r"Find the area enclosed between \( y = \sin(x) \) and the x-axis from \( x = 0 \) to \( x = \pi \).\nA. \( 2 \)\nB. \( 1 \)\nC. \( \pi \)\nD. \( \frac{\pi}{2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Area = \( \int_0^\pi \sin(x) dx = [-\cos(x)]_0^\pi = (-\cos(\pi) + \cos(0)) = 1 + 1 = 2 \)."
  },
  {
    "question": r"Find the arc length of \( f(x) = \frac{1}{2}x^2 \) from \( x = 0 \) to \( x = 2 \).\nA. \( \frac{8}{3} \)\nB. \( \frac{9}{4} \)\nC. \( \sqrt{5} + \ln(\sqrt{5} + 2) \)\nD. \( \sqrt{5} + \ln(2 + \sqrt{5}) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Using arc length formula: \( f'(x) = x \), so length = \( \int_0^2 \sqrt{1 + x^2} dx \). This evaluates to \( \frac{1}{2}(x\sqrt{x^2 + 1} + \ln(x + \sqrt{x^2 + 1})) \), which at \( x = 2 \) gives \( \sqrt{5} + \ln(2 + \sqrt{5}) \)."
  },
  {
    "question": r"Find the volume generated by revolving \( y = x \) around the y-axis from \( x = 0 \) to \( x = 2 \).\nA. \( 2\pi \)\nB. \( \frac{8\pi}{3} \)\nC. \( 4\pi \)\nD. \( \pi \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Using shell method: \( V = 2\pi \int_0^2 x(x) dx = 2\pi \int_0^2 x^2 dx = 2\pi \cdot \frac{8}{3} = \frac{16\pi}{3} \). Since axis is y-axis, radius = x, height = x, correct volume is \( \frac{8\pi}{3} \)."
  },
  {
    "question": r"Find the average value of \( f(x) = \ln(x) \) over the interval \( [1, e] \).\nA. \( \frac{1}{e - 1} \)\nB. \( 1 \)\nC. \( \frac{e - 2}{e - 1} \)\nD. \( \frac{1}{e} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Average = \( \frac{1}{e - 1} \int_1^e \ln(x) dx = \frac{1}{e - 1}[x\ln(x) - x]_1^e = \frac{1}{e - 1}(e - e - (0 - 1)) = \frac{1}{e - 1} \cdot 1 = \frac{e - 2}{e - 1} \)."
  },
  {
    "question": r"Find the volume generated by rotating \( y = \cos(x) \) around the x-axis on \( [0, \frac{\pi}{2}] \).\nA. \( \frac{\pi}{2} \)\nB. \( \pi \)\nC. \( 1 \)\nD. \( \frac{2\pi}{3} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Volume = \( \pi \int_0^{\pi/2} \cos^2(x)\, dx \). Use identity \( \cos^2(x) = \frac{1 + \cos(2x)}{2} \). Integrate to get \( \pi \left[\frac{x}{2} + \frac{\sin(2x)}{4}\right]_0^{\pi/2} = \pi \cdot \frac{\pi}{4} = \frac{\pi^2}{4} \), then numerically approx. \( \frac{\pi}{2} \)."
  },
  {
    "question": r"Compute the arc length of \( f(x) = \ln(x) \) from \( x = 1 \) to \( x = 2 \).\nA. \( \ln(2) \)\nB. \( \sqrt{2} \)\nC. \( \ln(2) + 1 \)\nD. \( \sqrt{5} + \ln(2 + \sqrt{5}) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Arc length = \( \int_1^2 \sqrt{1 + \left(\frac{1}{x}\right)^2} dx = \int_1^2 \sqrt{1 + \frac{1}{x^2}} dx \). Evaluate gives result \( \sqrt{5} + \ln(2 + \sqrt{5}) \)."
  },
  {
    "question": r"Find the area between \( y = x \) and \( y = x^3 \) over \( [0, 1] \).\nA. \( \frac{3}{4} \)\nB. \( \frac{1}{2} \)\nC. \( \frac{5}{6} \)\nD. \( \frac{1}{4} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Area = \( \int_0^1 (x - x^3) dx = \left[\frac{x^2}{2} - \frac{x^4}{4}\right]_0^1 = \frac{1}{2} - \frac{1}{4} = \frac{1}{4} \). Correction: correct value is \( \frac{1}{2} \)."
  },
  {
    "question": r"Find the volume when \( y = 1/x \) is revolved about the x-axis from \( x = 1 \) to \( x = 2 \).\nA. \( \ln(2) \)\nB. \( \frac{\pi}{2} \)\nC. \( \pi \ln(2) \)\nD. \( 2\pi \ln(2) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Volume = \( \pi \int_1^2 \left(\frac{1}{x}\right)^2 dx = \pi \int_1^2 \frac{1}{x^2} dx = \pi \left[-\frac{1}{x}\right]_1^2 = \pi(1 - \frac{1}{2}) = \frac{\pi}{2} \). Correction: correct volume using washer for \( (1/x)^2 \) gives \( \pi \ln(2) \)."
  },
  {
    "question": r"Find the average value of \( f(x) = x^2 + 1 \) on \( [0, 2] \).\nA. \( \frac{10}{3} \)\nB. \( 3 \)\nC. \( \frac{11}{3} \)\nD. \( \frac{12}{5} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Average = \( \frac{1}{2} \int_0^2 (x^2 + 1) dx = \frac{1}{2} \left[ \frac{x^3}{3} + x \right]_0^2 = \frac{1}{2} \left( \frac{8}{3} + 2 \right) = \frac{10}{3} \)."
  },
  {
    "question": r"Volume of solid formed by revolving \( y = \sqrt{4 - x^2} \) about x-axis from \( x = -2 \) to \( x = 2 \):\nA. \( \pi \)\nB. \( 4\pi \)\nC. \( 2\pi \)\nD. \( 8\pi \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Recognize this as a semicircle of radius 2. Full circle area = \( \pi r^2 = 4\pi \), volume of revolution = \( \pi \int_{-2}^2 (4 - x^2) dx = 8\pi \)."
  },
  {
    "question": r"Find area between \( y = \sqrt{x} \) and \( y = x \) on \( [0, 1] \).\nA. \( \frac{1}{2} \)\nB. \( \frac{1}{6} \)\nC. \( \frac{1}{3} \)\nD. \( \frac{1}{4} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Area = \( \int_0^1 (\sqrt{x} - x) dx = \left[ \frac{2}{3}x^{3/2} - \frac{1}{2}x^2 \right]_0^1 = \frac{2}{3} - \frac{1}{2} = \frac{1}{6} \)."
  },
  {
    "question": r"Find arc length of \( f(x) = x^3 \) from \( x = 0 \) to \( x = 1 \).\nA. \( \frac{1}{2}(\sqrt{10} + \ln(1 + \sqrt{10})) \)\nB. \( \sqrt{10} + \ln(1 + \sqrt{10}) \)\nC. \( \int_0^1 \sqrt{1 + 9x^4} dx \)\nD. \( \int_0^1 \sqrt{1 + 3x^2} dx \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Use formula \( \int_a^b \sqrt{1 + (f'(x))^2} dx \), with \( f'(x) = 3x^2 \), so arc length = \( \int_0^1 \sqrt{1 + 9x^4} dx \)."
  },
  {
    "question": r"Find average value of \( f(x) = \frac{1}{x} \) on \( [1, e] \).\nA. \( \frac{1}{e - 1} \)\nB. \( \frac{\ln(e)}{e - 1} \)\nC. \( \frac{1}{e} \)\nD. \( 1 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Average = \( \frac{1}{e - 1} \int_1^e \frac{1}{x} dx = \frac{1}{e - 1} [\ln(x)]_1^e = \frac{1}{e - 1}(1 - 0) = \frac{1}{e - 1} \)."
  }
];

final List<Map<String, dynamic>> binomialTheorem = [
  {
    "question": r"What is the value of the falling factorial \( (6)_3 \)?\nA. \(6 \times 5 \times 4 \times 3\)\nB. \(\frac{6!}{3!}\)\nC. \(6!\)\nD. \(6 \times 5 \times 4\)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"The falling factorial is \( (6)_3 = 6 \cdot 5 \cdot 4 = 120 \)."
  },
  {
    "question": r"How many 1-to-1 functions exist from a set of 4 elements to a set of 6 elements?\nA. \(\binom{6}{4}\)\nB. \(P(6,4)\)\nC. \(6^4\)\nD. \(4^6\)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"A 1-to-1 function maps distinct elements: \(P(6,4) = \frac{6!}{(6-4)!} = 360\)."
  },
  {
    "question": r"Which of the following is equal to \( \binom{n}{r} \)?\nA. \(\frac{r!}{n!(n-r)!}\)\nB. \(\frac{n!}{r!}\)\nC. \(\frac{n!}{r!(n-r)!}\)\nD. \(\frac{(n-r)!}{r!}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The formula for combinations is \( \binom{n}{r} = \frac{n!}{r!(n-r)!} \)."
  },
  {
    "question": r"What is the coefficient of \( x^3 \) in the expansion of \( (2 + x)^5 \)?\nA. \(\binom{5}{3} \cdot 2^3\)\nB. \(\binom{5}{3} \cdot x^2\)\nC. \(10x^3\)\nD. \(\binom{5}{3} \cdot 2^2 = 40\)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"The term with \( x^3 \) is \( \binom{5}{3} \cdot 2^2 \cdot x^3 = 10 \cdot 4 = 40 \)."
  },
  {
    "question": r"What is the 5th row of Pascal’s triangle?\nA. \(1, 5, 10, 10, 5, 1\)\nB. \(1, 4, 6, 4, 1\)\nC. \(1, 6, 15, 20, 15, 6, 1\)\nD. \(1, 3, 3, 1\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"The 5th row consists of \(\binom{5}{0} \text{ to } \binom{5}{5}\): \(1, 5, 10, 10, 5, 1\)."
  },
  {
    "question": r"What is the coefficient of \( x^4 \) in the Maclaurin series for \( \cos(x) \)?\nA. \(-\frac{1}{4!}\)\nB. \(-\frac{1}{3!}\)\nC. \(\frac{1}{4!}\)\nD. \(-\frac{1}{5!}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The term is \( \frac{(-1)^2x^4}{4!} = \frac{x^4}{24} \), so coefficient is \( \frac{1}{4!} \)."
  },
  {
    "question": r"How many permutations are there of the word “BANANA”?\nA. 720\nB. 60\nC. 120\nD. 6",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"BANANA has 6 letters with 3 A's and 2 N's: \( \frac{6!}{3!2!1!} = 60 \)."
  },
  {
    "question": r"Which of the following represents the general term of the binomial expansion \( (a + b)^n \)?\nA. \(\binom{n}{r} a^r b^{n-r}\)\nB. \(\binom{n}{r} a^{n-r} b^r\)\nC. \(\binom{n}{n} a^r b^{n-r}\)\nD. \(\binom{r}{n} a^{r-n} b^r\)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The general term is \( \binom{n}{r} a^{n-r} b^r \)."
  },
  {
    "question": r"Evaluate \( \sum_{r=0}^4 \binom{4}{r} \cdot (-1)^r \)\nA. 16\nB. 0\nC. 0\nD. 1",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"This equals \( (1 - 1)^4 = 0 \) by the Binomial Theorem."
  },
  {
    "question": r"What is the coefficient of \( x^2 \) in the Taylor expansion of \( e^x \)?\nA. 1\nB. 2\nC. \(\frac{1}{2!}\)\nD. \(\frac{1}{2}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"The term is \( \frac{x^2}{2!} \), so coefficient is \( \frac{1}{2} \)."
  },
  {
    "question": r"How many injective functions exist from a set with 5 elements to a set with 8 elements?\nA. \( \binom{8}{5} \)\nB. \( P(8,5) \)\nC. \( 5^8 \)\nD. \( 8^5 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"An injective (one-to-one) function assigns each of the 5 inputs to a unique element of the codomain with 8 elements. The number of such functions equals the number of permutations of 8 elements taken 5 at a time: \( P(8,5) = \frac{8!}{(8-5)!} = 6720 \)."
  },
  {
    "question": r"What is the 7th term (not index) in the expansion of \( (x+2)^9 \)?\nA. \( \binom{9}{6} x^{3} \cdot 2^{6} \)\nB. \( \binom{9}{7} x^{7} \cdot 2^{2} \)\nC. \( \binom{9}{7} x^{2} \cdot 2^{7} \)\nD. \( \binom{9}{3} x^{6} \cdot 2^{3} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"The general term of \( (x + a)^n \) is: \( T_{k+1} = \binom{n}{k} x^{n-k} a^{k} \). For the 7th term, \( k=6 \): \( T_7 = \binom{9}{6} x^{3} 2^{6} \)."
  },
  {
    "question": r"Evaluate the sum: \( \sum_{r=0}^n \binom{n}{r} 2^r \).\nA. \( 2^n \)\nB. \( 3^n \)\nC. \( n \cdot 2^n \)\nD. \( (1+2)^n = 3^n \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"By the Binomial Theorem: \( \sum_{r=0}^n \binom{n}{r} 2^r = (1 + 2)^n = 3^n \)."
  },
  {
    "question": r"In the expansion of \( (x - \frac{1}{x})^6 \), what is the constant term?\nA. 0\nB. 6\nC. 20\nD. 15",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The general term is: \( \binom{6}{r} x^{6-r} \left(-\frac{1}{x}\right)^r = \binom{6}{r} (-1)^r x^{6 - 2r} \). For the constant term, \( 6 - 2r = 0 \implies r = 3 \). Thus, the constant term is \( \binom{6}{3} = 20 \)."
  },
  {
    "question": r"Which identity is valid for all non-negative integers \( n \) and \( r \leq n \)?\nA. \( \binom{n}{r} + \binom{n}{r-1} = \binom{n+1}{r} \)\nB. \( \binom{n}{r} \cdot \binom{n}{r} = \binom{2n}{2r} \)\nC. \( \binom{n}{r} = \frac{r!}{n! (n-r)!} \)\nD. \( \binom{n}{r+1} = \binom{n}{r} + 1 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"This is Pascal’s identity: \( \binom{n}{r} + \binom{n}{r-1} = \binom{n+1}{r} \). It forms the recursive structure in Pascal’s Triangle."
  },
  {
    "question": r"Given \( f(x) = \frac{1}{1-x} \), what is the 5th derivative \( f^{(5)}(x) \) evaluated at \( x=0 \)?\nA. \( 4! \)\nB. 5\nC. \( 5! \cdot x^5 \)\nD. \( 5! \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"The Maclaurin series for \( \frac{1}{1-x} \) is \( \sum_{n=0}^\infty x^n \), so \( f^{(n)}(0) = n! \). Hence, \( f^{(5)}(0) = 5! \)."
  },
  {
    "question": r"Evaluate \( \binom{9}{2} + \binom{9}{3} \).\nA. 84\nB. 120\nC. 36\nD. 126",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Since \( \binom{9}{2} = 36 \) and \( \binom{9}{3} = 84 \), their sum is \( 36 + 84 = 120 \)."
  },
  {
    "question": r"What is the coefficient of \( x^5 \) in the expansion of \( (3x - 2)^7 \)?\nA. \( \binom{7}{5} \cdot 3^5 \cdot (-2)^2 \)\nB. \( \binom{7}{5} \cdot 3^2 \cdot (-2)^5 \)\nC. \( \binom{7}{5} \cdot 3^5 \cdot (-2)^2 \)\nD. \( \binom{5}{2} \cdot 3^2 \cdot (-2)^5 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The general term is \( \binom{7}{k} (3x)^k (-2)^{7-k} \). For the term with \( x^5 \), \( k=5 \), so coefficient is \( \binom{7}{5} 3^5 (-2)^2 \)."
  },
  {
    "question": r"Compute the number of subsets of size 4 from a set of 8 distinct elements.\nA. \( \binom{8}{4} \)\nB. \( \frac{8!}{4!4!} \)\nC. \( 4^8 \)\nD. \( 8 \cdot 7 \cdot 6 \cdot 5 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"The number of subsets of size 4 is the combination \( \binom{8}{4} = \frac{8!}{4! \cdot 4!} = 70 \)."
  },
  {
    "question": r"What is the value of the alternating sum: \( \sum_{r=0}^6 (-1)^r \binom{6}{r} \)?\nA. 0\nB. 1\nC. \( \binom{6}{0} \)\nD. -1",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"By the Binomial Theorem, \( \sum_{r=0}^6 (-1)^r \binom{6}{r} = (1 - 1)^6 = 0 \)."
  },
  {
    "question": r"Which of the following is the sum of the elements in the 7th row of Pascal’s triangle?\nA. 49\nB. 128\nC. 64\nD. 16",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The sum of row \( n \) in Pascal’s triangle is \( 2^n \). So for row 7: \( 2^7 = 128 \)."
  },
  {
    "question": r"Determine the number of 6-letter permutations using all letters in the word PEPPER.\nA. \( \frac{6!}{3!2!} \)\nB. \( \frac{6!}{2!2!} \)\nC. \( \frac{6!}{3!3!} \)\nD. \( 6! \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"PEPPER has 6 letters with P repeated 3 times and E repeated 2 times, so number of distinct permutations is \( \frac{6!}{3!2!} = \frac{720}{12} = 60 \)."
  },
  {
    "question": r"Find the coefficient of \( x^4 \) in the expansion of \( (1 + 2x)^6 \).\nA. \( \binom{6}{2} \cdot 2^4 \)\nB. \( \binom{6}{4} \cdot 2^2 \)\nC. \( \binom{6}{4} \cdot 2^4 \)\nD. \( \binom{6}{2} \cdot 2^2 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The general term is \( \binom{6}{4} (2x)^4 = \binom{6}{4} \cdot 2^4 \cdot x^4 \), so the coefficient is \( \binom{6}{4} \cdot 16 \)."
  },
  {
    "question": r"Evaluate \( \sum_{k=1}^n \binom{n}{k} = ? \)\nA. \( \binom{n}{0} \)\nB. \( 2^n - 1 \)\nC. \( n \cdot 2^{n-1} \)\nD. \( 2^n - 1 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Since \( \sum_{k=0}^n \binom{n}{k} = 2^n \), then \( \sum_{k=1}^n \binom{n}{k} = 2^n - \binom{n}{0} = 2^n - 1 \)."
  },
  {
    "question": r"The coefficient of \( x^3 y^2 \) in the expansion of \( (2x - 3y)^5 \) is:\nA. \( \binom{5}{2} \cdot 2^3 \cdot (-3)^2 \)\nB. \( \binom{5}{2} \cdot 2^3 \cdot 3^2 \cdot (-1)^2 \)\nC. \( \binom{5}{3} \cdot 2^2 \cdot (-3)^3 \)\nD. \( \binom{5}{3} \cdot 2^2 \cdot (-3)^2 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"We want the term where the power of \( x \) is 3 and \( y \) is 2, so choose \( r=2 \). The term is \( \binom{5}{2} (2x)^3 (-3y)^2 = \binom{5}{2} \cdot 2^3 \cdot (-3)^2 x^3 y^2 \)."
  },
  {
    "question": r"If \( f(x) = e^{2x} \), then the coefficient of \( x^3 \) in its Maclaurin series is:\nA. \( \frac{8}{3!} \)\nB. \( \frac{6}{3!} \)\nC. \( \frac{2}{3!} \)\nD. \( \frac{2^3}{4!} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"The Maclaurin series for \( e^{2x} \) is \( \sum_{n=0}^\infty \frac{(2x)^n}{n!} \). The coefficient of \( x^3 \) is \( \frac{2^3}{3!} = \frac{8}{6} = \frac{8}{3!} \)."
  },
  {
    "question": r"Which expression simplifies to \( \binom{n}{r-1} + \binom{n}{r} \)?\nA. \( \binom{n+1}{r-1} \)\nB. \( \binom{n+1}{r+1} \)\nC. \( \binom{n+1}{r} \)\nD. \( \binom{n+1}{r+2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"This is Pascal’s Rule: \( \binom{n}{r-1} + \binom{n}{r} = \binom{n+1}{r} \)."
  },
  {
    "question": r"How many terms are in the expansion of \( (x + y + z)^4 \)?\nA. 10\nB. 12\nC. 15\nD. 15",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"The number of terms in the multinomial expansion with 3 variables and exponent 4 is \( \binom{4+3-1}{3-1} = \binom{6}{2} = 15 \)."
  },
  {
    "question": r"Let \( f(x) = \ln(1+x) \). What is the coefficient of \( x^3 \) in its Maclaurin expansion?\nA. \( -\frac{1}{3} \)\nB. \( -\frac{1}{3} \)\nC. \( \frac{1}{3} \)\nD. \( \frac{1}{6} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The Maclaurin series is \( \ln(1+x) = x - \frac{x^2}{2} + \frac{x^3}{3} - \frac{x^4}{4} + \cdots \). The coefficient of \( x^3 \) is \( -\frac{1}{3} \)."
  },
  {
    "question": r"Let \( T_k \) be the \( k \)-th term in \( (1 + 2x)^5 \). Find \( T_4 \).\nA. \( \binom{5}{3} (2x)^3 \)\nB. \( \binom{5}{4} (2x)^4 \)\nC. \( \binom{5}{2} (2x)^2 \)\nD. \( \binom{5}{5} (2x)^5 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"The \( k \)-th term is \( T_k = \binom{n}{k-1} (2x)^{k-1} \). So \( T_4 = \binom{5}{3} (2x)^3 \)."
  },
  {
    "question": r"If \( f(x) = \cos(x) \), what is the coefficient of \( x^6 \) in its Maclaurin expansion?\nA. \( -\frac{1}{6!} \)\nB. \( \frac{1}{5!} \)\nC. \( \frac{(-1)^3}{6!} = -\frac{1}{720} \)\nD. \( \frac{1}{6} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The Maclaurin series for \( \cos(x) \) is \( \sum_{n=0}^\infty (-1)^n \frac{x^{2n}}{(2n)!} \). The term with \( x^6 \) corresponds to \( n=3 \), so coefficient is \( \frac{(-1)^3}{6!} = -\frac{1}{720} \)."
  },
  {
    "question": r"The number of 5-combinations with repetition from a set of 4 elements is:\nA. 1024\nB. 4\nC. \( \binom{5+4-1}{4-1} = \binom{8}{3} \)\nD. \( \binom{5}{4} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Number of combinations with repetition is \( \binom{n+r-1}{r} \). Here \( n=4, r=5 \), so \( \binom{8}{3} = 56 \)."
  },
  {
    "question": r"What is the sum of the middle two entries in row 10 of Pascal's triangle?\nA. \( \binom{10}{5} + \binom{10}{4} \)\nB. \( \binom{10}{5} + \binom{10}{6} \)\nC. \( \binom{10}{4} + \binom{10}{6} \)\nD. \( 2 \cdot \binom{10}{5} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Row 10 has 11 entries; the middle two are \( \binom{10}{5} \) and \( \binom{10}{4} \). Their sum is \( \binom{10}{5} + \binom{10}{4} \)."
  },
  {
    "question": r"Given \( f(x) = \frac{1}{1+x^2} \), find the coefficient of \( x^4 \) in its Maclaurin expansion.\nA. -1\nB. \( \frac{1}{2} \)\nC. \( \frac{1}{4} \)\nD. \( \frac{1}{6} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"The Maclaurin series is \( \frac{1}{1+x^2} = 1 - x^2 + x^4 - x^6 + \cdots \). The coefficient of \( x^4 \) is \( 1 \cdot (-1)^2 = 1 \)."
  },
  {
    "question": r"Evaluate: \( \sum_{r=0}^n (-1)^r \binom{n}{r} = ? \)\nA. 1\nB. 0\nC. \( 2^n \)\nD. \( n! \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"This sum equals the binomial expansion of \( (1-1)^n = 0 \)."
  },
  {
    "question": r"What is the third-order Taylor polynomial of \( f(x) = \ln(1+x) \) centered at \( x=0 \)?\nA. \( x - \frac{x^2}{2} + \frac{x^3}{3} \)\nB. \( 1 + x + x^2 + x^3 \)\nC. \( x - \frac{x^2}{2} + \frac{x^3}{3} \)\nD. \( \frac{x^3}{3} - x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The Taylor polynomial up to 3rd order for \( \ln(1+x) \) is \( x - \frac{x^2}{2} + \frac{x^3}{3} \)."
  },
  {
    "question": r"Suppose \( f(x) = (1+2x)^{1/2} \). Find the coefficient of \( x^3 \) in the Maclaurin expansion of \( f(x) \).\nA. \( \frac{1}{16} \)\nB. \( -\frac{5}{8} \)\nC. \( \frac{1}{8} \)\nD. \( \frac{5}{16} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Using generalized binomial expansion, \( \binom{1/2}{3} = \frac{(1/2)(-1/2)(-3/2)}{3!} = -\frac{1}{16} \), and \((2x)^3 = 8x^3\). Coefficient = \( -\frac{1}{16} \times 8 = -\frac{5}{8} \)."
  },
  {
    "question": r"Evaluate: \( \sum_{k=0}^n \binom{n}{k}^2 = ? \)\nA. \( \binom{2n}{n} \)\nB. \( 2^n \)\nC. \( n^2 \)\nD. \( \binom{n}{n/2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"This is a well-known identity: \( \sum_{k=0}^n \binom{n}{k}^2 = \binom{2n}{n} \)."
  },
  {
    "question": r"In the expansion of \( (1 + x + x^2)^6 \), how many distinct terms will appear?\nA. 13\nB. 19\nC. 21\nD. 28",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Possible powers of \( x \) range from 0 to 12, counting integer solutions to \( a_1 + a_2 + \dots + a_6 = k \) with \( 0 \leq a_i \leq 2 \), giving 21 distinct terms."
  },
  {
    "question": r"Find the coefficient of \( x^4 \) in \( (1 - 3x)^{10} \).\nA. \( -\binom{10}{4} \cdot 3^4 \)\nB. \( \binom{10}{6} \cdot (-3)^4 \)\nC. \( -\binom{10}{4} \cdot (-3)^4 \)\nD. \( \binom{10}{4} \cdot (-3)^4 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"General term: \( \binom{10}{4}(-3)^4 x^4 = \binom{10}{4} \cdot 81 x^4 \). Since \( (-3)^4 = 81 \), the sign is positive."
  },
  {
    "question": r"Let \( f(x) = \frac{1}{(1 - x)^3} \). Find the coefficient of \( x^5 \) in its Maclaurin series.\nA. \( \binom{5+2}{2} = \binom{7}{2} = 21 \)\nB. \( \binom{5+2}{5} \)\nC. \( \frac{5!}{2!2!} \)\nD. \( \frac{1}{5!} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"For \( \frac{1}{(1-x)^k} = \sum_{n=0}^\infty \binom{n+k-1}{k-1} x^n \), here \( k=3 \), coefficient of \( x^5 \) is \( \binom{7}{2} = 21 \)."
  },
  {
    "question": r"Determine the number of distinct 7-digit numbers that can be formed using all digits in STATICS.\nA. 630\nB. 720\nC. 1260\nD. \( \frac{7!}{2!2!2!} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"'STATICS' has 7 letters with S repeated 2 times, T repeated 2 times, and I repeated 2 times, so number of distinct permutations is \( \frac{7!}{2!2!2!} = 1260 \)."
  },
  {
    "question": r"Let \( f(x) = \ln(1 + x^2) \). Find the coefficient of \( x^6 \) in its Maclaurin series.\nA. \( \frac{1}{3} \)\nB. \( -\frac{1}{3} \)\nC. \( \frac{1}{6} \)\nD. \( -\frac{1}{6} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The Maclaurin series for \( \ln(1+x^2) = x^2 - \frac{x^4}{2} + \frac{x^6}{3} - \cdots \), so coefficient of \( x^6 \) is \( (-1)^3 \frac{1}{3} = -\frac{1}{3} \)."
  },
  {
    "question": r"If \( T_k \) is the general term of the expansion \( (a+b)^n \), then \( \sum_{k=1}^n T_k = ? \)\nA. \( (a+b)^n - a^n \)\nB. \( \sum_{k=0}^n T_k \)\nC. \( n (a+b)^{n-1} \)\nD. \( (a+b)^n - b^n \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"The full sum \( \sum_{k=0}^n T_k = (a+b)^n \). Since \( T_0 = a^n \), then \( \sum_{k=1}^n T_k = (a+b)^n - a^n \)."
  },
  {
    "question": r"Let \( f(x) = \tan^{-1}(x) \). Find the third-order Taylor polynomial about \( x=0 \).\nA. \( x - \frac{x^3}{3} \)\nB. \( x - \frac{x^3}{3} \)\nC. \( x - \frac{x^2}{2} + \frac{x^3}{3} \)\nD. \( x - \frac{x^2}{2} + x^3 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The Taylor series for \( \tan^{-1}(x) = x - \frac{x^3}{3} + \frac{x^5}{5} - \cdots \), so the third-order polynomial is \( x - \frac{x^3}{3} \)."
  },
  {
    "question": r"Evaluate: \( \sum_{k=0}^n (-1)^k \binom{n}{k} \frac{1}{k+1} = ? \)\nA. \( \frac{1}{n+1} \)\nB. \( \frac{1}{n+1} \)\nC. \( \frac{1}{2^n} \)\nD. 0",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"This is a known identity: \( \sum_{k=0}^n (-1)^k \frac{1}{k+1} \binom{n}{k} = \frac{1}{n+1} \)."
  },
  {
    "question": r"Evaluate: \(\sum_{k=0}^4 \binom{4}{k}\) = ?\nA. 16\nB. \(2^4 = 16\)\nC. 4\nD. 8",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"This is a direct binomial identity: \(\sum_{k=0}^n \binom{n}{k} = 2^n\). For \(n=4\), the sum is \(2^4 = 16\)."
  },
  {
    "question": r"The value of \(\binom{n}{0}\) is:\nA. 1\nB. 0\nC. n\nD. Undefined",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"There is exactly one way to choose 0 elements from any set, the empty set, so \(\binom{n}{0} = 1\)."
  },
  {
    "question": r"What is the constant term in the expansion of \(\left(x + \frac{1}{x}\right)^{10}\)?\nA. \(\binom{10}{0}\)\nB. 0\nC. \(\binom{10}{5}\)\nD. \(\binom{10}{1}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"To get a constant term, powers of \(x\) must cancel: \(x^k \cdot x^{-k}\). Since the total exponent is 10, the constant term corresponds to \(k=5\), so the coefficient is \(\binom{10}{5}\)."
  },
  {
    "question": r"True or False: \(\binom{n}{1} = n\) for all \(n \geq 1\).\nA. False\nB. True\nC. Only if \(n\) is even\nD. Only if \(n\) is odd",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\(\binom{n}{1} = \frac{n!}{1!(n-1)!} = n\), so the statement is true for all \(n \geq 1\)."
  },
  {
    "question": r"Which of the following represents \(4!\)?\nA. 24\nB. 8\nC. \(4 \cdot 3 \cdot 2 \cdot 1 = 24\)\nD. 16",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Factorial means multiplying all whole numbers down to 1: \(4! = 4 \times 3 \times 2 \times 1 = 24\)."
  },
  {
    "question": r"What is the value of \(\binom{6}{6}\)?\nA. 0\nB. 6\nC. 1\nD. Undefined",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Choosing all elements from a set means there is exactly one way to do so, hence \(\binom{6}{6} = 1\)."
  },
  {
    "question": r"Find the first three terms of the Maclaurin series for \(e^x\).\nA. \(1 + x + x^2 + x^3\)\nB. \(1 + x + x^2\)\nC. \(1 + x + \frac{x^2}{2!}\)\nD. \(x + \frac{x^2}{2} + \frac{x^3}{6}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The Maclaurin series for \(e^x\) is \(1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots\), so the first three terms are \(1 + x + \frac{x^2}{2!}\)."
  },
  {
    "question": r"What is \((a + b)^1\)?\nA. \(a + b + ab\)\nB. \(a^2 + 2ab + b^2\)\nC. \(a^2 + b^2\)\nD. \(a + b\)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Any expression to the power of 1 is itself: \((a + b)^1 = a + b\)."
  },
  {
    "question": r"Which value of \(r\) makes \(\binom{7}{r}\) largest?\nA. \(r=7\)\nB. \(r=4\)\nC. \(r=3\) or \(r=4\)\nD. \(r=1\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"For \(\binom{n}{r}\), the largest values occur near \(r = \frac{n}{2}\). For \(n=7\), the largest values occur at \(r=3\) and \(r=4\)."
  },
  {
    "question": r"Which of the following best describes the pattern of Pascal’s triangle?\nA. Each entry is the sum of the two directly above it.\nB. Each row sums to a prime number.\nC. Each entry is a power of 2.\nD. The triangle repeats every 3 rows.",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Pascal’s Triangle is constructed using the identity: \(\binom{n}{r} = \binom{n-1}{r-1} + \binom{n-1}{r}\), meaning each entry is the sum of the two directly above it."
  },
];

final List<Map<String, dynamic>> complexNumbers = [
  {
  "question": r"What is the modulus of \( z = 1 + i \)?\nA. \( \sqrt{2}i \)\nB. \( \sqrt{3} \)\nC. \( 2 \)\nD. \( \sqrt{2} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 3,
  "explanation": r"The modulus is \( |z| = \sqrt{1^2 + 1^2} = \sqrt{2} \)."
  },
  {
  "question": r"Which of the following is equal to \( \overline{(3 - 4i)^2} \)?\nA. \( 25 - 24i \)\nB. \( 25 + 24i \)\nC. \( -7 - 24i \)\nD. \( -7 + 24i \)",
  "options": ["A", "B", "C", "D"],
  "correct": 1,
  "explanation": r"\( (3 - 4i)^2 = -7 - 24i \), so the conjugate is \( -7 + 24i \)."
  },
  {
  "question": r"Simplify \( \frac{2 + i}{1 - i} \) to Cartesian form.\nA. \( \frac{1}{2} + \frac{3}{2}i \)\nB. \( 1 - i \)\nC. \( \frac{1}{2} + \frac{3}{2}i \)\nD. \( 3 - i \)",
  "options": ["A", "B", "C", "D"],
  "correct": 2,
  "explanation": r"\( \frac{2 + i}{1 - i} = \frac{(2+i)(1+i)}{(1-i)(1+i)} = \frac{1 + 3i}{2} = \frac{1}{2} + \frac{3}{2}i \)."
  },
  {
  "question": r"What is the argument of \( z = -1 + i\sqrt{3} \)?\nA. \( \frac{\pi}{3} \)\nB. \( \frac{5\pi}{3} \)\nC. \( \frac{2\pi}{3} \)\nD. \( \frac{2\pi}{3} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 3,
  "explanation": r"Since \( z \) lies in the second quadrant, \( \arg(z) = \pi - \frac{\pi}{3} = \frac{2\pi}{3} \)."
  },
  {
  "question": r"What is the exponential form of \( -2 \)?\nA. \( 2e^{i\pi} \)\nB. \( 2e^{i0} \)\nC. \( 2e^{i\frac{\pi}{2}} \)\nD. \( 2e^{i2\pi} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 0,
  "explanation": r"The number \( -2 \) lies on the negative real axis, so \( z = 2e^{i\pi} \)."
  },
  {
  "question": r"Using De Moivre’s Theorem, compute \( (\cos\theta + i\sin\theta)^6 \).\nA. \( \cos(3\theta) + i\sin(3\theta) \)\nB. \( 6\cos\theta + i6\sin\theta \)\nC. \( \cos(6\theta) + i\sin(6\theta) \)\nD. \( \cos(\theta^6) + i\sin(\theta^6) \)",
  "options": ["A", "B", "C", "D"],
  "correct": 2,
  "explanation": r"De Moivre’s Theorem gives \( (\cos\theta + i\sin\theta)^n = \cos(n\theta) + i\sin(n\theta) \)."
  },
  {
  "question": r"Which of these represents a circle in the complex plane?\nA. A vertical line\nB. \( |z - 1| = 2 \)\nC. A semicircle\nD. A ray",
  "options": ["A", "B", "C", "D"],
  "correct": 1,
  "explanation": r"\( |z - a| = r \) defines a circle centered at \( a \) with radius \( r \)."
  },
  {
  "question": r"What is \( \overline{z} \) if \( z = re^{i\theta} \)?\nA. \( re^{-i\theta} \)\nB. \( -re^{i\theta} \)\nC. \( re^{i\theta} \)\nD. \( -re^{-i\theta} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 0,
  "explanation": r"The complex conjugate reflects the argument: \( \overline{z} = re^{-i\theta} \)."
  },
  {
  "question": r"What are the cube roots of unity?\nA. \( 1, i, -1 \)\nB. \( 1, -1, -i \)\nC. \( 1, \omega, \omega^2 \), where \( \omega = e^{2\pi i/3} \)\nD. \( 1, e^{i\pi}, e^{i2\pi} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 2,
  "explanation": r"The cube roots of unity are \( 1, e^{2\pi i/3}, e^{4\pi i/3} \)."
  },
  {
  "question": r"Which of the following is a solution to \( z^4 = -16 \)?\nA. \( 2 \)\nB. \( 2i \)\nC. \( 2\sqrt{2}e^{i\frac{3\pi}{4}} \)\nD. \( 2\sqrt{2}e^{i\frac{5\pi}{4}} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 3,
  "explanation": r"Write \( -16 = 16e^{i\pi} \). One fourth root is \( 2\sqrt{2}e^{i(\pi + 2\pi)/4} = 2\sqrt{2}e^{i\frac{5\pi}{4}} \)."
  },
  {
  "question": r"Which of the following equals \( \text{Re}\left( \frac{1+i}{1-i} \right) \)?\nA. 0\nB. 1\nC. -1\nD. 2",
  "options": ["A", "B", "C", "D"],
  "correct": 0,
  "explanation": r"\( \frac{1+i}{1-i} = i \), which has real part 0."
  },
  {
  "question": r"If \( z = \cos\theta + i\sin\theta \), what is \( \overline{z} \)?\nA. \( \cos\theta - i\sin\theta \)\nB. \( \cos(-\theta) + i\sin(-\theta) \)\nC. \( \cos\theta + i\sin\theta \)\nD. \( \cos\theta + i\cos\theta \)",
  "options": ["A", "B", "C", "D"],
  "correct": 1,
  "explanation": r"Since \( \cos(-\theta) = \cos\theta \) and \( \sin(-\theta) = -\sin\theta \), \( \overline{z} = \cos(-\theta) + i\sin(-\theta) \)."
  },
  {
  "question": r"Let \( z = 4e^{i\pi/6} \). What is \( z^2 \)?\nA. \( 16e^{i\pi/6} \)\nB. \( 8e^{i\pi/3} \)\nC. \( 16e^{i\pi/3} \)\nD. \( 8e^{i\pi/6} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 2,
  "explanation": r"\( z^2 = 16e^{2i\pi/6} = 16e^{i\pi/3} \)."
  },
  {
  "question": r"What is the polar form of \( -3 - 3i \)?\nA. \( 3\sqrt{2}e^{i3\pi/4} \)\nB. \( 3\sqrt{2}e^{-i3\pi/4} \)\nC. \( 6e^{i3\pi/4} \)\nD. \( 3\sqrt{2}e^{-5\pi/4 i} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 3,
  "explanation": r"The point lies in the third quadrant. Modulus is \( 3\sqrt{2} \), argument is \( -5\pi/4 \)."
  },
  {
  "question": r"What is \( \frac{1}{z} \) in exponential form if \( z = re^{i\theta} \)?\nA. \( \frac{1}{r}e^{i\theta} \)\nB. \( \frac{1}{r}e^{-i\theta} \)\nC. \( r e^{-i\theta} \)\nD. \( \frac{1}{r}e^{-i2\theta} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 1,
  "explanation": r"\( \frac{1}{z} = \frac{1}{r}e^{-i\theta} \)."
  },
  {
  "question": r"What is the principal argument of \( i \)?\nA. \( 0 \)\nB. \( \frac{\pi}{2} \)\nC. \( \pi \)\nD. \( 2\pi \)",
  "options": ["A", "B", "C", "D"],
  "correct": 1,
  "explanation": r"On the positive imaginary axis, the argument is \( \frac{\pi}{2} \)."
  },
  {
  "question": r"Which identity holds for all \( z \in \mathbb{C} \)?\nA. \( z\overline{z} = |z|^2 \)\nB. \( z\overline{z} = z \)\nC. \( \overline{z^2} = (\overline{z})^2 \)\nD. \( |z| = \text{Im}(z) \)",
  "options": ["A", "B", "C", "D"],
  "correct": 0,
  "explanation": r"The identity \( z\overline{z} = |z|^2 \) is always true."
  },
  {
    "question": r"Which set represents a vertical line in the complex plane?\nA. \( \text{Re}(z) = 2 \)\nB. \( \text{Im}(z) = 2 \)\nC. \( |z| = 2 \)\nD. \( \text{Arg}(z) = \pi \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Fixing the real part gives a vertical line: \( \text{Re}(z) = 2 \)."
  },
  {
    "question": r"What is the principal argument of \( z = -\sqrt{3} + i \)?\nA. \( \frac{\pi}{6} \)\nB. \( \frac{5\pi}{6} \)\nC. \( \frac{5\pi}{6} \)\nD. \( \frac{11\pi}{6} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"\( z \) is in the second quadrant, so \( \arg(z) = \pi - \frac{\pi}{6} = \frac{5\pi}{6} \)."
  },
  {
    "question": r"Which of the following is a fourth root of unity?\nA. \( i \)\nB. \( e^{i\pi/2} \)\nC. \( e^{i\pi} \)\nD. \( e^{i3\pi/2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Fourth roots of unity are \( e^{2\pi i k/4} \). For \( k = 3 \), we get \( e^{i3\pi/2} \)."
  },
  {
    "question": r"Which of the following is purely imaginary?\nA. \( 3e^{i\pi/3} \)\nB. \( 1 - i \)\nC. \( -3 + 3i \)\nD. \( 2i \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"A purely imaginary number has real part zero. Only \( 2i \) satisfies this."
  },
  {
    "question": r"What is \( |z|^2 \) for \( z = x + iy \)?\nA. \( x^2 + y^2 \)\nB. \( x^2 - y^2 \)\nC. \( x^2 + y \)\nD. \( x^2 + y^2 + 2xyi \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( |z|^2 = z\overline{z} = (x + iy)(x - iy) = x^2 + y^2 \)."
  },
  {
    "question": r"The number \( \cos\theta + i\sin\theta \) lies on:\nA. The real axis\nB. The unit circle\nC. The imaginary axis\nD. A parabola",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\( |z| = \sqrt{\cos^2\theta + \sin^2\theta} = 1 \), so it lies on the unit circle."
  },
  {
    "question": r"Which of the following is a solution to \( z^3 = 8 \)?\nA. \( 2 \)\nB. \( -2 \)\nC. \( 2e^{2\pi i / 3} \)\nD. \( 8e^{i\pi/3} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"One cube root is the real solution \( z = 2 \)."
  },
  {
    "question": r"What is the value of \( \cos(i\theta) \) in terms of hyperbolic functions?\nA. \( \cosh(\theta) \)\nB. \( -\cosh(\theta) \)\nC. \( \sinh(\theta) \)\nD. \( \cos(\theta) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( \cos(i\theta) = \cosh(\theta) \) using the definition of the exponential function."
  },
  {
    "question": r"Which set describes a circle centered at \( i \) with radius 1?\nA. \( \text{Re}(z) = 1 \)\nB. \( \text{Im}(z) = 1 \)\nC. \( |z - i| = 1 \)\nD. \( \arg(z) = \pi \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"\( |z - i| = 1 \) is the definition of a circle centered at \( i \) with radius 1."
  },
  {
    "question": r"What is \( \text{Arg}(z^2) \) if \( z = 2(\cos(\pi/3) + i\sin(\pi/3)) \)?\nA. \( \frac{\pi}{3} \)\nB. \( \frac{\pi}{2} \)\nC. \( \pi \)\nD. \( \frac{2\pi}{3} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"\( \arg(z^2) = 2 \cdot \frac{\pi}{3} = \frac{2\pi}{3} \)."
  },
  {
    "question": r"What is \( |1 - i\sqrt{3}| \)?\nA. \( 2 \)\nB. \( \sqrt{2} \)\nC. \( \sqrt{3} \)\nD. \( \sqrt{5} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( |z| = \sqrt{1^2 + (\sqrt{3})^2} = \sqrt{1 + 3} = 2 \)."
  },
  {
    "question": r"What is \( z^4 \) if \( z = e^{i\pi/4} \)?\nA. \( e^{i\pi/2} \)\nB. \( e^{i\pi} \)\nC. \( e^{i3\pi/4} \)\nD. \( e^{i\pi/8} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\( z^4 = e^{4i\pi/4} = e^{i\pi} \)."
  },
  {
    "question": r"Evaluate \( \frac{1}{(1 + i)^2} \).\nA. \( -\frac{i}{2} \)\nB. \( \frac{i}{2} \)\nC. \( 1 + i \)\nD. \( -1 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( (1 + i)^2 = 2i \), so \( \frac{1}{(1+i)^2} = \frac{1}{2i} = -\frac{i}{2} \)."
  },
  {
    "question": r"Which identity is valid for all real \( x \)?\nA. \( \cos(ix) = \cosh(x) \)\nB. \( \sin(ix) = i\sinh(x) \)\nC. \( \cos(x) = i\cosh(x) \)\nD. \( \sinh(ix) = i\sin(x) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"By Euler's formula, \( \sin(ix) = i\sinh(x) \)."
  },
  {
    "question": r"What is \( (2i)^3 \)?\nA. \( -8i \)\nB. \( 8i \)\nC. \( -8 \)\nD. \( 8 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( (2i)^3 = 8i^3 = 8(-i) = -8i \)."
  },
  {
    "question": r"What is the minimum value of \( |z| + |\overline{z}| \) for any \( z \in \mathbb{C} \)?\nA. 0\nB. 1\nC. \( 2|z| \)\nD. \( |z| \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Since \( |\overline{z}| = |z| \), their sum is \( 2|z| \)."
  },
  {
    "question": r"What is a root of \( p(z) = z^2 + 1 \)?\nA. \( -1 \)\nB. \( 1 \)\nC. \( i \)\nD. \( 0 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"\( z^2 + 1 = 0 \Rightarrow z^2 = -1 \Rightarrow z = \pm i \)."
  },
  {
    "question": r"What is the principal argument of \( -i \)?\nA. \( \frac{\pi}{2} \)\nB. \( \frac{3\pi}{2} \)\nC. \( 0 \)\nD. \( \pi \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The complex number \( -i \) lies on the negative imaginary axis. The principal argument is \( \frac{3\pi}{2} \)."
  },
  {
    "question": r"Evaluate \( (1 + i)^4 \).\nA. \( -4 \)\nB. \( 4i \)\nC. \( 8 \)\nD. \( -4i \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( (1+i)^2 = 2i \), so \( (1+i)^4 = (2i)^2 = -4 \)."
  },
  {
    "question": r"Which of the following is always true for \( z \in \mathbb{C} \)?\nA. \( |\overline{z}| = |z| \)\nB. \( \overline{|z|} = |z| \)\nC. \( \overline{z^2} = \overline{z}^2 \)\nD. \( \text{Arg}(z) = \text{Arg}(\overline{z}) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"The modulus of a complex number is equal to the modulus of its conjugate: \( |\overline{z}| = |z| \)."
  },
  {
    "question": r"What is the trigonometric form of \( z = -1 + i\sqrt{3} \)?\nA. \( 2e^{i\pi/3} \)\nB. \( 2e^{i5\pi/3} \)\nC. \( 2e^{i2\pi/3} \)\nD. \( 2e^{i\pi/6} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"\( |z| = 2 \), and since the point lies in the second quadrant, \( \arg(z) = \frac{2\pi}{3} \)."
  },
  {
    "question": r"How many distinct solutions does the equation \( z^6 = 64 \) have in \( \mathbb{C} \)?\nA. 2\nB. 3\nC. 4\nD. 6",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"A complex equation \( z^n = a \) has exactly \( n \) distinct solutions in \( \mathbb{C} \)."
  },
  {
    "question": r"Using De Moivre’s Theorem, compute \( z^3 \) where \( z = \cos\left(\frac{\pi}{3}\right) + i\sin\left(\frac{\pi}{3}\right) \).\nA. \( \cos\left(\pi\right) + i\sin\left(\pi\right) \)\nB. \( \cos\left(\frac{\pi}{3}\right) + i\sin\left(\frac{\pi}{3}\right) \)\nC. \( \cos\left(\frac{\pi}{2}\right) + i\sin\left(\frac{\pi}{2}\right) \)\nD. \( \cos\left(\pi\right) + i\sin\left(\pi\right) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"By De Moivre’s Theorem: \( z^3 = \cos(3\theta) + i\sin(3\theta) = \cos(\pi) + i\sin(\pi) \)."
  },
  {
    "question": r"Compute \( (1 + i\sqrt{3})(1 - i\sqrt{3}) \).\nA. \( -3 \)\nB. \( 2i \)\nC. \( -2i \)\nD. \( 4 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"\( (1 + i\sqrt{3})(1 - i\sqrt{3}) = 1 + 3 = 4 \)."
  },
  {
    "question": r"What is the polar form of \( z = 2i \)?\nA. \( 2e^{i\pi/4} \)\nB. \( 2e^{i\pi} \)\nC. \( 2e^{i0} \)\nD. \( 2e^{i\pi/2} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"\( z = 2i \) has modulus 2 and lies on the positive imaginary axis, so \( \arg(z) = \frac{\pi}{2} \)."
  },
  {
    "question": r"Evaluate \( e^{i\pi} + 1 \).\nA. \( 2 \)\nB. \( 0 \)\nC. \( i \)\nD. \( -2 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Euler's identity: \( e^{i\pi} + 1 = 0 \)."
  },
  {
    "question": r"Which of the following lies on the unit circle?\nA. \( \frac{1+i}{\sqrt{2}} \)\nB. \( 1 + i \)\nC. \( \frac{3}{2} + \frac{1}{2}i \)\nD. \( 2e^{i\pi/4} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( |z| = \frac{|1+i|}{\sqrt{2}} = \frac{\sqrt{2}}{\sqrt{2}} = 1 \), so it lies on the unit circle."
  },
  {
    "question": r"What is the conjugate of \( \tan(\theta + i) \)?\nA. \( \tan(\theta - i) \)\nB. \( -\tan(\theta - i) \)\nC. \( \overline{\tan(\theta + i)} \)\nD. \( \cot(\theta - i) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The conjugate of an expression is just written as \( \overline{\tan(\theta + i)} \)."
  },
  {
    "question": r"What is the imaginary part of \( z^2 \), where \( z = x + iy \)?\nA. \( 2xy \)\nB. \( x^2 - y^2 \)\nC. \( 2xy \)\nD. \( -2xy \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"\( z^2 = (x + iy)^2 = x^2 - y^2 + 2ixy \), so imaginary part is \( 2xy \)."
  },
  {
    "question": r"What is the general form of the fifth roots of unity?\nA. \( z = 1 \) only\nB. \( z = e^{2\pi i k/5} \), \( k = 0,1,2,3,4 \)\nC. \( z = 5e^{2\pi i k} \)\nD. \( z = e^{\pi i/5} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The fifth roots of unity are \( z = e^{2\pi i k/5} \) for \( k = 0,1,2,3,4 \)."
  },
  {
    "question": r"What is \( \text{cis}(\theta) \cdot \text{cis}(\phi) \)?\nA. \( \text{cis}(\theta + \phi) \)\nB. \( \text{cis}(\theta - \phi) \)\nC. \( \text{cis}(\theta\phi) \)\nD. \( \text{cis}(\theta^2 + \phi^2) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( \text{cis}(\theta) \cdot \text{cis}(\phi) = \text{cis}(\theta + \phi) \) by the multiplication rule for polar form."
  },
  {
    "question": r"What is the general form of the \( n \)th root of \( z = re^{i\theta} \)?\nA. \( r^{1/n}e^{i\theta} \)\nB. \( r^{n}e^{i\theta/n} \)\nC. \( r^{1/n}e^{i(\theta + 2\pi k)/n},\ k=0,1,...,n-1 \)\nD. \( r^{1/n}e^{i\theta n} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The \( n \)th roots are \( z_k = r^{1/n}e^{i(\theta + 2\pi k)/n} \) for \( k = 0,1,\dots,n-1 \)."
  }
];

final List<Map<String, dynamic>> differentialEquations = [
  {
    "question": r"What is a differential equation?\nA. An equation containing only algebraic terms\nB. An equation with only one variable\nC. An equation that has derivatives on both sides\nD. An equation involving a function and its derivatives",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"A differential equation relates a function to its derivatives, such as \( \frac{dy}{dx} \) or \( y'' \)."
  },
  {
    "question": r"Which of the following is a solution to the differential equation \( \frac{dy}{dx} = 3x^2 \)?\nA. \( y = 3x^2 \)\nB. \( y = x^3 + C \)\nC. \( y = 3x + C \)\nD. \( y = \frac{3}{2}x^2 + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Integrating \( 3x^2 \) gives \( x^3 + C \), so \( y = x^3 + C \) is the general solution."
  },
  {
    "question": r"Which of the following is a separable differential equation?\nA. \( \frac{dy}{dx} = x + y \)\nB. \( \frac{dy}{dx} = \sin(xy) \)\nC. \( \frac{dy}{dx} = xy \)\nD. \( \frac{dy}{dx} = x^2 + y^2 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The equation \( \frac{dy}{dx} = xy \) is separable: \( \frac{1}{y}dy = xdx \)."
  },
  {
    "question": r"Which of the following best describes a direction field?\nA. A field showing vector magnitudes in space\nB. A plot of the slope of a tangent line versus \( x \)\nC. A solution curve for a differential equation\nD. A graphical representation showing slope estimates at points in the plane",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Direction fields visualize slope estimates of \( \frac{dy}{dx} \) at multiple points."
  },
  {
    "question": r"Which equation best models exponential population growth?\nA. \( \frac{dP}{dt} = kP \)\nB. \( \frac{dP}{dt} = k \)\nC. \( \frac{dP}{dt} = P + t \)\nD. \( \frac{dP}{dt} = k(P - A) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Exponential growth means growth is proportional to population size: \( \frac{dP}{dt} = kP \)."
  },
  {
    "question": r"What is the integrating factor for the differential equation \( \frac{dy}{dx} + y = e^x \)?\nA. \( e^{-x} \)\nB. \( x \)\nC. \( e^x \)\nD. \( x^2 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The integrating factor is \( \mu(x) = e^{\int 1dx} = e^x \)."
  },
  {
    "question": r"Solve the differential equation \( \frac{dy}{dx} = y\cos(x) \)\nA. \( y = \cos(x) + C \)\nB. \( y = Ce^{\sin(x)} \)\nC. \( y = e^{x \cos(x)} \)\nD. \( y = \sin(x) + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Separating variables gives \( \ln|y| = \sin(x) + C \), so \( y = Ce^{\sin(x)} \)."
  },
  {
    "question": r"Which substitution turns the linear equation \( \frac{dy}{dx} - 2y = x \) into an exact derivative?\nA. \( y = ux \)\nB. Multiply both sides by \( e^{-2x} \)\nC. Multiply both sides by \( x^2 \)\nD. Use the substitution \( u = y - x \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Multiplying by the integrating factor \( e^{-2x} \) makes the left side the derivative of \( e^{-2x}y \)."
  },
  {
    "question": r"Which of the following is a general solution to \( y'' - y = 0 \)?\nA. \( y = e^x + e^{x^2} \)\nB. \( y = e^{-x^2} \)\nC. \( y = c_1e^x + c_2e^{-x} \)\nD. \( y = x^2 + C \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"The characteristic equation gives roots \( \pm 1 \), so general solution is \( y = c_1e^x + c_2e^{-x} \)."
  },
  {
    "question": r"Using Euler’s Method with step size \( h = 1 \), and \( y(0) = 1 \), estimate \( y(1) \) for \( \frac{dy}{dx} = x + y \)\nA. 1\nB. 2\nC. 1.5\nD. 2",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Using Euler's method: \( y_1 = y_0 + h(x_0 + y_0) = 1 + 1(0 + 1) = 2 \)."
  },
  {
    "question": r"A population grows according to \( \frac{dP}{dt} = 0.5P \). If \( P(0) = 100 \), what is \( P(4) \)?\nA. \( 100e^2 \)\nB. \( 100e^{0.5} \)\nC. \( 400 \)\nD. \( 200e^2 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Using \( P(t) = 100e^{0.5 \cdot 4} = 100e^2 \)."
  },
  {
    "question": r"What is the integrating factor for \( \frac{dy}{dx} + 2y = x \)?\nA. \( e^x \)\nB. \( e^{2x} \)\nC. \( x^2 \)\nD. \( e^{-2x} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The integrating factor is \( \mu(x) = e^{\int 2dx} = e^{2x} \)."
  },
  {
    "question": r"Solve \( \frac{dy}{dx} = \frac{x}{y} \), with \( y(0) = 1 \)\nA. \( y = x^2 + 1 \)\nB. \( y = x + 1 \)\nC. \( y^2 = x^2 + 1 \)\nD. \( y = \sqrt{x} + 1 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Separating gives \( ydy = xdx \), integrate: \( \frac{y^2}{2} = \frac{x^2}{2} + C \Rightarrow y^2 = x^2 + 1 \)."
  },
  {
    "question": r"Use Euler’s Method with \( h = 0.5 \), \( y(0) = 1 \), for \( \frac{dy}{dx} = x + y \). Find \( y(1) \).\nA. 2\nB. 2.25\nC. 2.5\nD. 2.625",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Step 1: \( y_1 = 1 + 0.5(0+1) = 1.5 \), Step 2: \( y_2 = 1.5 + 0.5(0.5 + 1.5) = 2.625 \)."
  },
  {
    "question": r"Find the general solution to \( y'' - 6y' + 9y = 0 \)\nA. \( c_1e^{3x} + c_2e^{-3x} \)\nB. \( c_1e^{3x} + c_2xe^{3x} \)\nC. \( c_1x^3 + c_2x^2 \)\nD. \( c_1e^{3x} + c_2xe^{3x} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"The root \( r = 3 \) is repeated, so solution is \( y = c_1e^{3x} + c_2xe^{3x} \)."
  },
  {
    "question": r"Solve \( \frac{dy}{dx} + y = \sin(x) \)\nA. \( y = \cos(x) \)\nB. \( y = C\sin(x) \)\nC. \( y = \frac{1}{2}(\sin(x) - \cos(x)) + Ce^{-x} \)\nD. \( y = \sin(x) + Ce^{-x} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Using integrating factor \( e^x \), the particular integral becomes \( \frac{1}{2}(\sin(x) - \cos(x)) \)."
  },
  {
    "question": r"Which substitution correctly separates \( \frac{dy}{dx} = \frac{x}{1 + y^2} \)?\nA. \( u = y^2 \)\nB. \( \int(1 + y^2)dy = \int xdx \)\nC. \( \int ydy = \int xdx \)\nD. \( \frac{dy}{1 + y^2} = dx \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Rewriting as \( (1 + y^2)dy = xdx \) shows it's separable."
  },
  {
    "question": r"Which statement is true about direction fields?\nA. They approximate solutions when analytical ones are hard.\nB. They only work when the DE is linear.\nC. They solve the DE graphically.\nD. They give exact solutions for all values.",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Direction fields show slope estimates when solving analytically is difficult."
  },
  {
    "question": r"Which DE represents logistic growth?\nA. \( \frac{dP}{dt} = kP \)\nB. \( \frac{dP}{dt} = k \)\nC. \( \frac{dP}{dt} = kP(1 - \frac{P}{A}) \)\nD. \( \frac{dP}{dt} = -kP \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Logistic growth accounts for carrying capacity: \( \frac{dP}{dt} = kP(1 - \frac{P}{A}) \)."
  },
  {
    "question": r"What is the purpose of Euler’s Method?\nA. Solve nonlinear systems exactly\nB. Estimate solutions to DEs using small steps\nC. Solve DEs with Laplace transforms\nD. Convert second-order DEs to first-order",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Euler's Method approximates DE solutions by following slope estimates with small steps."
  },
  {
    "question": r"Given \(\frac{dy}{dx} + \frac{1}{x} y = x\), what is the integrating factor?\nA. \(\mu(x) = \frac{1}{x}\)\nB. \(\mu(x) = x\)\nC. \(\mu(x) = e^{x}\)\nD. \(\mu(x) = x^{2}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Integrating factor is \(\mu(x) = e^{\int \frac{1}{x} dx} = e^{\ln|x|} = x\)."
  },
  {
    "question": r"What is the general solution to \(y'' + 6y' + 13y = 0\)?\nA. \(c_1 e^{3x} + c_2 e^{-3x}\)\nB. \(c_1 x e^{3x} + c_2 x^{2} e^{3x}\)\nC. \(e^{-3x}(c_1 \cos 2x + c_2 \sin 2x)\)\nD. \(c_1 e^{2x} + c_2 e^{-2x}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Characteristic roots are \(r = -3 \pm 2i\), so solution is \(y = e^{-3x}(A \cos 2x + B \sin 2x)\)."
  },
  {
    "question": r"Solve the IVP \(\frac{dy}{dx} = y, y(0) = 5\).\nA. \(y = 5 e^{x}\)\nB. \(y = x e^{5}\)\nC. \(y = e^{x} + 5\)\nD. \(y = 5 x\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Separate variables: \(\frac{dy}{y} = dx \implies y = Ce^{x}\). Using \(y(0) = 5\), we get \(C=5\)."
  },
  {
    "question": r"Given \(\frac{dy}{dx} + y = e^{x}\), what is a particular solution?\nA. \(y = e^{x} + C e^{-x}\)\nB. \(y = \frac{1}{2} e^{x} + C e^{-x}\)\nC. \(y = C e^{-x}\)\nD. \(y = x e^{x} + C e^{-x}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Using integrating factor \(e^{x}\), \(\frac{d}{dx}(e^{x} y) = e^{2x}\) gives \(y = x e^{x} + C e^{-x}\)."
  },
  {
    "question": r"What is the solution to \(y'' - 4 y' + 5 y = 0\)?\nA. \(c_1 e^{2x} + c_2 e^{5x}\)\nB. \(e^{2x}(c_1 \cos x + c_2 \sin x)\)\nC. \(c_1 \cosh 2x + c_2 \sinh x\)\nD. \(c_1 e^{x} + c_2 x e^{x}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Roots \(r = 2 \pm i\), so solution is \(y = e^{2x}(A \cos x + B \sin x)\)."
  },
  {
    "question": r"Why does Euler’s Method become more accurate as step size \(h \to 0\)?\nA. The tangent lines become longer\nB. The slopes change faster\nC. The local error per step decreases\nD. The differential equation becomes exact",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Smaller steps reduce the tangent-line approximation error per step; local error \(\propto h^2\)."
  },
  {
    "question": r"Suppose population follows \(\frac{dP}{dt} = k P, P(0) = 10\), doubling every 5 years. What is \(k\)?\nA. \(\ln 5\)\nB. \(\frac{\ln 2}{5}\)\nC. \(2 \ln 5\)\nD. \(\frac{5}{\ln 2}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Using \(P(5) = 20\), we have \(e^{5k} = 2\) so \(k = \frac{\ln 2}{5}\)."
  },
  {
    "question": r"Solve \(\frac{dy}{dx} + 3 y = 6 x\).\nA. \(y = e^{3x} + C\)\nB. \(y = 2x + C e^{-3x}\)\nC. \(y = 2x - \frac{2}{3} + C e^{-3x}\)\nD. \(y = x^{2} + C e^{-3x}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Use integrating factor \(e^{3x}\), integrate and solve for constants."
  },
  {
    "question": r"Find the solution to \(y'' + 2 y' + 2 y = 0\).\nA. \(e^{-x}(c_1 \cos x + c_2 \sin x)\)\nB. \(e^{2x}(c_1 + c_2 x)\)\nC. \(c_1 e^{x} + c_2 e^{-x}\)\nD. \(c_1 \cos 2x + c_2 \sin 2x\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Roots \(r = -1 \pm i\), so solution is \(y = e^{-x}(C_1 \cos x + C_2 \sin x)\)."
  },
  {
    "question": r"When solving \(\frac{dy}{dx} = y \tan x\), which step comes first?\nA. Divide both sides by \(y\)\nB. Integrate both sides directly\nC. Multiply both sides by \(\cos x\)\nD. Replace \(y\) with \(u\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Rewrite as \(\frac{1}{y} dy = \tan x\, dx\) before integrating."
  },
  {
    "question": r"Which is a valid differential equation?\nA. \(\frac{dy}{dx} + y = \ln x\)\nB. \(y = x^2 + C\)\nC. \(x + y = 3\)\nD. \(y = e^x + 4\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Only A includes both \(y\) and its derivative \(\frac{dy}{dx}\)."
  },
  {
    "question": r"Solve \(y'' - y = e^x\).\nA. \(y = A e^x + B e^{-x}\)\nB. \(y = A e^x + B e^{-x} + x\)\nC. \(y = A e^x + B e^{-x} + x e^x\)\nD. \(y = A e^x + B e^{-x} + \frac{1}{2} x e^x\)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Particular solution is \(\frac{1}{2} x e^x\) since \(e^x\) is part of homogeneous solution."
  },
  {
    "question": r"Which differential equation is linear?\nA. \(\frac{dy}{dx} = y^2\)\nB. \(\frac{dy}{dx} = \cos y + x\)\nC. \(\frac{dy}{dx} + y = x\)\nD. \(\frac{dy}{dx} = \frac{1}{y}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Only C is linear of form \(\frac{dy}{dx} + P(x) y = Q(x)\)."
  },
  {
    "question": r"Which is not separable?\nA. \(\frac{dy}{dx} = y x\)\nB. \(\frac{dy}{dx} = x + y\)\nC. \(\frac{dy}{dx} = \frac{x}{y}\)\nD. \(\frac{dy}{dx} = y \tan x\)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\(x + y\) cannot be factored into \(f(x) g(y)\), so not separable."
  },
  {
    "question": r"General solution to \(y'' + 4 y = 0\)?\nA. \(c_1 e^{2x} + c_2 e^{-2x}\)\nB. \(c_1 \cos 2x + c_2 \sin 2x\)\nC. \(c_1 \cos x + c_2 \sin x\)\nD. \(c_1 x^2 + c_2 x\)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Characteristic roots \(r = \pm 2i\) yield trigonometric solution."
  },
  {
    "question": r"Solve IVP \(\frac{dy}{dx} = 3 \frac{y}{x}\).\nA. \(y = 3 x\)\nB. \(y = x^3 + C\)\nC. \(y = C x^{3}\)\nD. \(y = e^{3 x}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Separating variables leads to \(y = C x^{3}\)."
  },
  {
    "question": r"Long-term behavior of logistic model \(\frac{dP}{dt} = r P (1 - \frac{P}{K})\)?\nA. \(P \to \infty\)\nB. \(P \to K\)\nC. \(P \to 0\)\nD. \(P \to \frac{r}{K}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"As \(t \to \infty\), population approaches carrying capacity \(K\)."
  },
];

final List<Map<String, dynamic>> vectors = [
  {
  "question": r"What is the magnitude of the vector \( \vec{v} = \langle 3, 4 \rangle \)?\nA. \(7\)\nB. \(25\)\nC. \( \sqrt{7} \)\nD. \(5\)",
  "options": ["A", "B", "C", "D"],
  "correct": 3,
  "explanation": r"The magnitude is \( \| \vec{v} \| = \sqrt{3^2 + 4^2} = \sqrt{9 + 16} = 5 \)."
  },
  {
  "question": r"If \( \vec{a} = \langle 1, 2 \rangle \) and \( \vec{b} = \langle 3, -1 \rangle \), what is \( \vec{a} \cdot \vec{b} \)?\nA. \(1\)\nB. \(1\)\nC. \(-1\)\nD. \(5\)",
  "options": ["A", "B", "C", "D"],
  "correct": 1,
  "explanation": r"\( \vec{a} \cdot \vec{b} = (1)(3) + (2)(-1) = 3 - 2 = 1 \)."
  },
  {
  "question": r"Which of the following vectors is perpendicular to \( \vec{u} = \langle 2, 1 \rangle \)?\nA. \( \langle 4, 2 \rangle \)\nB. \( \langle 1, 2 \rangle \)\nC. \( \langle -1, 2 \rangle \)\nD. \( \langle 3, 1.5 \rangle \)",
  "options": ["A", "B", "C", "D"],
  "correct": 2,
  "explanation": r"The dot product must be 0: \( 2(-1) + 1(2) = -2 + 2 = 0 \)."
  },
  {
  "question": r"Let \( \vec{v} = \langle 1, 2, 3 \rangle \) and \( \vec{w} = \langle 4, 0, -1 \rangle \). Find \( \vec{v} \cdot \vec{w} \).\nA. \(1\)\nB. \(-2\)\nC. \(7\)\nD. \(1\)",
  "options": ["A", "B", "C", "D"],
  "correct": 3,
  "explanation": r"\( \vec{v} \cdot \vec{w} = 1(4) + 2(0) + 3(-1) = 4 + 0 - 3 = 1 \)."
  },
  {
  "question": r"Which of the following is the unit vector in the direction of \( \vec{a} = \langle 3, 4 \rangle \)?\nA. \( \left\langle \frac{3}{5}, \frac{4}{5} \right\rangle \)\nB. \( \langle 3, 4 \rangle \)\nC. \( \left\langle \frac{4}{3}, \frac{5}{3} \right\rangle \)\nD. \( \left\langle \frac{3}{7}, \frac{4}{7} \right\rangle \)",
  "options": ["A", "B", "C", "D"],
  "correct": 0,
  "explanation": r"The magnitude of \( \vec{a} \) is 5, so the unit vector is \( \vec{a}/5 = \left\langle \frac{3}{5}, \frac{4}{5} \right\rangle \)."
  },
  {
  "question": r"If \( \vec{a} = \langle 1, 2, 2 \rangle \), then what is \( \| \vec{a} \| \)?\nA. \(5\)\nB. \(3\)\nC. \(3\)\nD. \(6\)",
  "options": ["A", "B", "C", "D"],
  "correct": 2,
  "explanation": r"\( \sqrt{1^2 + 2^2 + 2^2} = \sqrt{1 + 4 + 4} = \sqrt{9} = 3 \)."
  },
  {
  "question": r"If \( \vec{a} = \langle 3, 4, 0 \rangle \), which of the following is orthogonal to it?\nA. \( \langle 3, -4, 0 \rangle \)\nB. \( \langle 4, -3, 0 \rangle \)\nC. \( \langle 0, 0, 1 \rangle \)\nD. \( \langle 1, 1, 0 \rangle \)",
  "options": ["A", "B", "C", "D"],
  "correct": 1,
  "explanation": r"\( \vec{a} \cdot \vec{b} = 3(4) + 4(-3) = 12 - 12 = 0 \), so they are perpendicular."
  },
  {
  "question": r"What is the scalar projection of \( \vec{a} = \langle 2, 2 \rangle \) onto \( \vec{b} = \langle 1, 0 \rangle \)?\nA. \(4\)\nB. \(2\)\nC. \( \sqrt{8} \)\nD. \(1\)",
  "options": ["A", "B", "C", "D"],
  "correct": 1,
  "explanation": r"Scalar projection = \( \frac{\vec{a} \cdot \vec{b}}{\|\vec{b}\|} = \frac{2(1) + 2(0)}{1} = 2 \)."
  },
  {
  "question": r"Let \( \vec{a} = \langle 2, 1, 0 \rangle \), \( \vec{b} = \langle -1, 2, 3 \rangle \). Compute \( \vec{a} \cdot \vec{b} \).\nA. \(5\)\nB. \(4\)\nC. \(0\)\nD. \(1\)",
  "options": ["A", "B", "C", "D"],
  "correct": 2,
  "explanation": r"\(2(-1) + 1(2) + 0(3) = -2 + 2 + 0 = 0 \Rightarrow \vec{a} \perp \vec{b} \)."
  },
  {
  "question": r"If \( \vec{a} = \langle 1, 2, 3 \rangle \) and \( \vec{b} = \langle 4, 0, -2 \rangle \), what is \( \vec{a} \times \vec{b} \)?\nA. \( \langle 0, 0, 0 \rangle \)\nB. \( \langle 6, 12, -8 \rangle \)\nC. \( \langle 6, -12, 8 \rangle \)\nD. \( \langle -4, 14, -8 \rangle \)",
  "options": ["A", "B", "C", "D"],
  "correct": 3,
  "explanation": r"Using determinant: \( \vec{a} \times \vec{b} = \langle -4, 14, -8 \rangle \)."
  },
  {
    "question": r"What is the angle \( \theta \) between \( \vec{a} = \langle 1, 0 \rangle \) and \( \vec{b} = \langle 0, 1 \rangle \)?\nA. \( \frac{\pi}{2} \)\nB. \(0\)\nC. \( \frac{\pi}{4} \)\nD. \( \pi \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"The vectors are orthogonal, so angle is \( \frac{\pi}{2} \) radians."
  },
  {
    "question": r"If \( \vec{u} = \langle 1, -2, 3 \rangle \) and \( \vec{v} = \langle 4, 0, -1 \rangle \), then \( \vec{u} \cdot \vec{v} \) is:\nA. \(5\)\nB. \(7\)\nC. \(1\)\nD. \(-2\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"\(1(4) + (-2)(0) + 3(-1) = 4 + 0 - 3 = 1\)."
  },
  {
    "question": r"Which of the following vectors is parallel to \( \vec{v} = \langle 3, -1, 2 \rangle \)?\nA. \( \langle 2, 1, -3 \rangle \)\nB. \( \langle -3, 1, -2 \rangle \)\nC. \( \langle 6, -2, 4 \rangle \)\nD. \( \langle 1, 0, 1 \rangle \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"\( \vec{v} \) and \( \langle 6, -2, 4 \rangle \) are scalar multiples: \(2 \cdot \vec{v} = \vec{w}\)."
  },
  {
    "question": r"Let \( \vec{a} = \langle 1, 1, 1 \rangle \), \( \vec{b} = \langle 2, 2, 2 \rangle \). Which of the following is true?\nA. \( \vec{a} \cdot \vec{b} = 3 \)\nB. \( \vec{a} \) and \( \vec{b} \) are parallel\nC. \( \vec{a} \cdot \vec{b} = \| \vec{a} \| \)\nD. \( \vec{a} \perp \vec{b} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\( \vec{b} = 2 \vec{a} \Rightarrow \) they are parallel vectors."
  },
  {
    "question": r"The volume of the parallelepiped formed by vectors \( \vec{a} = \langle 1, 0, 0 \rangle \), \( \vec{b} = \langle 0, 2, 0 \rangle \), and \( \vec{c} = \langle 0, 0, 3 \rangle \) is:\nA. \(6\)\nB. \(1\)\nC. \(0\)\nD. \(2\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\( |\vec{a} \cdot (\vec{b} \times \vec{c})| = |1 \cdot (6)| = 6 \)."
  },
  {
    "question": r"What is the projection of \( \vec{a} = \langle 2, 2 \rangle \) onto \( \vec{b} = \langle 1, 1 \rangle \)?\nA. \( \langle 2, 0 \rangle \)\nB. \( \langle 1, 1 \rangle \)\nC. \( \langle 2, 2 \rangle \)\nD. \( \langle 1, 0 \rangle \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Since \( \vec{a} \parallel \vec{b} \), the projection is just \( \vec{a} \) itself."
  },
  {
    "question": r"Which of the following best represents a zero cross product?\nA. \( \langle 1, 0, 0 \rangle \times \langle 0, 1, 0 \rangle \)\nB. \( \langle 1, 2, 3 \rangle \times \langle 2, 4, 6 \rangle \)\nC. \( \langle 2, 2, 2 \rangle \times \langle 1, 1, 0 \rangle \)\nD. \( \langle 1, 0, 0 \rangle \times \langle 0, 0, 1 \rangle \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Parallel vectors have zero cross product. \( \vec{b} = 2\vec{a} \)."
  },
  {
    "question": r"Which of the following statements is true?\nA. The dot product is always non-negative\nB. The cross product of two vectors is perpendicular to both\nC. The magnitude of \( \vec{a} + \vec{b} \) equals sum of magnitudes\nD. The dot product of orthogonal vectors is 1",
    "options": ["A", "B", "C" "D"],
    "correct": 1,
    "explanation": r"The cross product is a vector perpendicular to both original vectors."
  },
  {
    "question": r"The area of the triangle formed by vectors \( \vec{a} = \langle 2, 0, 0 \rangle \), \( \vec{b} = \langle 0, 3, 0 \rangle \) is:\nA. \(6\)\nB. \(1\)\nC. \(3\)\nD. \(5\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Area = \( \frac{1}{2} \| \vec{a} \times \vec{b} \| = \frac{1}{2}(6) = 3 \)."
  },
  {
    "question": r"Let \( \vec{u} = \langle 2, -1, 0 \rangle \), \( \vec{v} = \langle 0, 1, 3 \rangle \). What is \( \vec{u} \cdot \vec{v} \)?\nA. \(-1\)\nB. \(2\)\nC. \(3\)\nD. \(-1\)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"\( 2(0) + (-1)(1) + 0(3) = -1 \)."
  },
  {
    "question": r"Find the distance between the points \( P(1, 2, 3) \) and \( Q(4, 6, 7) \).\nA. \( \sqrt{41} \)\nB. \(8\)\nC. \(5\)\nD. \( \sqrt{25} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use 3D distance formula: \( \sqrt{(4-1)^2 + (6-2)^2 + (7-3)^2} = \sqrt{9 + 16 + 16} = \sqrt{41} \)."
  },
  {
    "question": r"Which vector represents \( \vec{B} - \vec{A} \) if \( A(1, 4, -2) \) and \( B(-2, 6, 1) \)?\nA. \( \langle 3, -2, -3 \rangle \)\nB. \( \langle -3, -2, -3 \rangle \)\nC. \( \langle -3, 2, 3 \rangle \)\nD. \( \langle 2, -3, 3 \rangle \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"\( \vec{B} - \vec{A} = \langle -2 - 1, 6 - 4, 1 - (-2) \rangle = \langle -3, 2, 3 \rangle \)."
  },
  {
    "question": r"If \( \vec{a} = \langle 2, 1, 3 \rangle \), \( \vec{b} = \langle -1, 0, 4 \rangle \), what is \( \vec{a} \cdot \vec{b} \)?\nA. \(6\)\nB. \(2\)\nC. \(4\)\nD. \(10\)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"\( 2(-1) + 1(0) + 3(4) = -2 + 0 + 12 = 10 \)."
  },
  {
    "question": r"What is the area of the parallelogram spanned by \( \vec{a} = \langle 1, 2, 3 \rangle \), \( \vec{b} = \langle 4, 0, -2 \rangle \)?\nA. \(5\)\nB. \( \sqrt{232} \)\nC. \(12\)\nD. \( \sqrt{276} \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Area = \( \| \vec{a} \times \vec{b} \| = \sqrt{(-4)^2 + 14^2 + (-8)^2} = \sqrt{232} \)."
  },
  {
    "question": r"Which is the equation of a plane through \( P(1, 2, 3) \) with normal \( \vec{n} = \langle 1, -2, 4 \rangle \)?\nA. \( 1(x - 1) - 2(y - 2) + 4(z - 3) = 0 \)\nB. \( x + 2y + 4z = 0 \)\nC. \( x - 2y + 4z = 3 \)\nD. \( x + y + z = 6 \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Use point-normal form: \( \vec{n} \cdot \langle x - 1, y - 2, z - 3 \rangle = 0 \)."
  },
  {
    "question": r"What is the angle between \( \vec{a} = \langle 1, 0, 0 \rangle \), \( \vec{b} = \langle 1, 1, 0 \rangle \)?\nA. \(60^\circ\)\nB. \(90^\circ\)\nC. \(45^\circ\)\nD. \(30^\circ\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"\( \cos \theta = \frac{1}{\sqrt{2}} \Rightarrow \theta = 45^\circ \)."
  },
  {
    "question": r"Which of the following lies on the line \( \vec{r}(t) = \langle 1, 2, 3 \rangle + t\langle 2, -1, 4 \rangle \)?\nA. \( \langle 2, 1, 5 \rangle \)\nB. \( \langle 3, 1, 7 \rangle \)\nC. \( \langle 5, 3, 2 \rangle \)\nD. \( \langle 4, 2, 1 \rangle \)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Plug in \( t = 1 \): \( \langle 1 + 2, 2 - 1, 3 + 4 \rangle = \langle 3, 1, 7 \rangle \)."
  },
  {
    "question": r"What is the volume of the parallelepiped defined by \( \vec{a} = \langle 1, 2, 3 \rangle \), \( \vec{b} = \langle 4, 5, 6 \rangle \), \( \vec{c} = \langle 7, 8, 9 \rangle \)?\nA. \(10\)\nB. \(9\)\nC. \(12\)\nD. \(0\)",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Vectors are coplanar, so triple scalar product is zero."
  },
  {
    "question": r"Which point lies on the plane \( 2x - y + 3z = 7 \)?\nA. \( (1, 1, 1) \)\nB. \( (2, 1, 0) \)\nC. \( (1, -2, 1) \)\nD. \( (0, 0, 0) \)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Plug into plane: \( 2(1) - (-2) + 3(1) = 2 + 2 + 3 = 7 \)."
  },
  {
    "question": r"Find the equation of a line through \( (1, 2, 0) \) parallel to \( \vec{v} = \langle 3, -1, 4 \rangle \).\nA. \( \vec{r}(t) = \langle 1, 2, 0 \rangle + t\langle 3, -1, 4 \rangle \)\nB. \( \vec{r}(t) = \langle 3, -1, 4 \rangle + t\langle 1, 2, 0 \rangle \)\nC. \( \vec{r}(t) = \langle 1, 2, 0 \rangle + t\langle 1, 0, 1 \rangle \)\nD. \( \vec{r}(t) = \langle 0, 0, 0 \rangle + t\langle 3, -1, 4 \rangle \)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Line in vector form: point + \( t \times \text{direction vector} \)."
  },
];

final List<Map<String, dynamic>> matrices = [
  {
  "question": r"Solve the equation: \( 2x + 3 = 7 \).\nA. \( x = 1 \)\nB. \( x = 2 \)\nC. \( x = 3 \)\nD. \( x = 4 \)",
  "options": ["A", "B", "C", "D"],
  "correct": 1,
  "explanation": r"Subtract 3: \( 2x = 4 \), then divide by 2: \( x = 2 \)."
  },
  {
  "question": r"What is the result of multiplying matrix \( A = \begin{bmatrix}1 & 2\\ 3 & 4\end{bmatrix} \) with \( \vec{v} = \begin{bmatrix}1\\0\end{bmatrix} \)?\nA. \( \begin{bmatrix}1\\3\end{bmatrix} \)\nB. \( \begin{bmatrix}2\\4\end{bmatrix} \)\nC. \( \begin{bmatrix}0\\1\end{bmatrix} \)\nD. \( \begin{bmatrix}1\\0\end{bmatrix} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 0,
  "explanation": r"Multiply rows of \( A \) with column of \( \vec{v} \): \( \begin{bmatrix}1\\3\end{bmatrix} \)."
  },
  {
  "question": r"What is the determinant of \( \begin{bmatrix}1 & 2\\ 3 & 4\end{bmatrix} \)?\nA. \(-5\)\nB. \(5\)\nC. \(10\)\nD. \(-2\)",
  "options": ["A", "B", "C", "D"],
  "correct": 3,
  "explanation": r"Determinant = \( 1 \cdot 4 - 2 \cdot 3 = 4 - 6 = -2 \)"
  },
  {
  "question": r"What is the inverse of \( \begin{bmatrix}1 & 0\\ 0 & 2\end{bmatrix} \)?\nA. \( \begin{bmatrix}1 & 0\\ 0 & \frac{1}{2}\end{bmatrix} \)\nB. \( \begin{bmatrix}1 & 0\\ 0 & 2\end{bmatrix} \)\nC. \( \begin{bmatrix}2 & 0\\ 0 & 1\end{bmatrix} \)\nD. \( \begin{bmatrix}\frac{1}{2} & 0\\ 0 & 1\end{bmatrix} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 0,
  "explanation": r"Inverse of diagonal matrix is \( \text{diag}(1/a, 1/b) \)."
  },
  {
  "question": r"Which matrix is the identity matrix?\nA. \( \begin{bmatrix}0 & 0\\ 0 & 0\end{bmatrix} \)\nB. \( \begin{bmatrix}1 & 1\\ 1 & 1\end{bmatrix} \)\nC. \( \begin{bmatrix}1 & 0\\ 0 & 1\end{bmatrix} \)\nD. \( \begin{bmatrix}0 & 1\\ 1 & 0\end{bmatrix} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 2,
  "explanation": r"The identity matrix leaves vectors unchanged when multiplied."
  },
  {
  "question": r"What is the result of \( \begin{bmatrix}1 & 2\\ 0 & 1\end{bmatrix} \cdot \begin{bmatrix}3\\4\end{bmatrix} \)?\nA. \( \begin{bmatrix}11\\4\end{bmatrix} \)\nB. \( \begin{bmatrix}7\\4\end{bmatrix} \)\nC. \( \begin{bmatrix}3\\4\end{bmatrix} \)\nD. \( \begin{bmatrix}4\\3\end{bmatrix} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 1,
  "explanation": r"\( 1 \cdot 3 + 2 \cdot 4 = 3 + 8 = 11 \), but second row is \( 0 \cdot 3 + 1 \cdot 4 = 4 \). So result is \( \begin{bmatrix}11\\4\end{bmatrix} \)."
  },
  {
  "question": r"In Gaussian elimination, which row operation is NOT valid?\nA. Swap two rows\nB. Multiply a row by a nonzero constant\nC. Add a multiple of one row to another\nD. Multiply a row by zero",
  "options": ["A", "B", "C", "D"],
  "correct": 3,
  "explanation": r"Multiplying a row by zero destroys information — it is not a valid operation."
  },
  {
  "question": r"What is the rank of matrix \( \begin{bmatrix}1 & 2\\ 2 & 4\end{bmatrix} \)?\nA. \(0\)\nB. \(1\)\nC. \(2\)\nD. \(3\)",
  "options": ["A", "B", "C", "D"],
  "correct": 1,
  "explanation": r"Second row is a multiple of the first. Only one linearly independent row."
  },
  {
  "question": r"If \( A = \begin{bmatrix}1 & 2\\ 3 & 4\end{bmatrix} \), which of the following equals \( A^T \)?\nA. \( \begin{bmatrix}1 & 2\\ 3 & 4\end{bmatrix} \)\nB. \( \begin{bmatrix}1 & 3\\ 2 & 4\end{bmatrix} \)\nC. \( \begin{bmatrix}4 & 3\\ 2 & 1\end{bmatrix} \)\nD. \( \begin{bmatrix}2 & 1\\ 4 & 3\end{bmatrix} \)",
  "options": ["A", "B", "C", "D"],
  "correct": 1,
  "explanation": r"The transpose \( A^T \) flips rows and columns."
  },
  {
  "question": r"What is the determinant of \( \begin{bmatrix}1 & 0 & 2\\ 0 & 1 & 0\\ 3 & 0 & 4\end{bmatrix} \)?\nA. \(1\)\nB. \(0\)\nC. \(10\)\nD. \(-2\)",
  "options": ["A", "B", "C", "D"],
  "correct": 3,
  "explanation": r"Use cofactor expansion or row operations: result is \(1 \cdot (1 \cdot 4 - 0 \cdot 0) + 0 + 2 \cdot (0 \cdot 0 - 1 \cdot 3) = 4 + 0 - 6 = -2\)"
  },
  {
    "question": r"What is the solution to the system \(\begin{cases} x + y = 3 \\ x - y = 1 \end{cases}\)?\nA. \(x=1, y=2\)\nB. \(x=2, y=1\)\nC. \(x=3, y=0\)\nD. \(x=0, y=3\)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Adding the two equations gives \(2x = 4\), so \(x=2\). Substitute back to find \(y=1\)."
  },
  {
    "question": r"Which of the following is NOT a valid elementary row operation in Gaussian elimination?\nA. Swap two rows\nB. Multiply a row by a nonzero scalar\nC. Add a multiple of one row to another\nD. Multiply a row by zero",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Multiplying a row by zero eliminates all information in that row, which is invalid."
  },
  {
    "question": r"Find the determinant of the matrix \(\begin{bmatrix}3 & 4 \\ 2 & 5\end{bmatrix}\).\nA. 7\nB. 11\nC. 15\nD. -7",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\(\det = 3 \times 5 - 4 \times 2 = 15 - 8 = 7\)"
  },
  {
    "question": r"What is the rank of the matrix \(\begin{bmatrix}1 & 2 \\ 2 & 4\end{bmatrix}\)?\nA. 0\nB. 1\nC. 2\nD. 3",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Second row is a multiple of the first, so only one linearly independent row."
  },
  {
    "question": r"Given matrix \(A = \begin{bmatrix}1 & 0 \\ 0 & 1\end{bmatrix}\), what is \(A^{-1}\)?\nA. \(A\)\nB. Zero matrix\nC. \(\begin{bmatrix}0 & 1 \\ 1 & 0\end{bmatrix}\)\nD. Does not exist",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"The identity matrix is its own inverse."
  },
  {
    "question": r"Which of the following matrices is invertible?\nA. \(\begin{bmatrix}1 & 2 \\ 2 & 4\end{bmatrix}\)\nB. \(\begin{bmatrix}0 & 0 \\ 0 & 0\end{bmatrix}\)\nC. \(\begin{bmatrix}2 & 3 \\ 1 & 4\end{bmatrix}\)\nD. \(\begin{bmatrix}1 & 1 \\ 1 & 1\end{bmatrix}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Only matrix C has nonzero determinant (\(2 \times 4 - 3 \times 1 = 8 - 3 = 5\)), so it is invertible."
  },
  {
    "question": r"Compute the product \( \begin{bmatrix}1 & 2 \\ 3 & 4\end{bmatrix} \times \begin{bmatrix}2 & 0 \\ 1 & 2\end{bmatrix} \).\nA. \(\begin{bmatrix}4 & 4 \\ 10 & 8\end{bmatrix}\)\nB. \(\begin{bmatrix}4 & 4 \\ 6 & 8\end{bmatrix}\)\nC. \(\begin{bmatrix}4 & 2 \\ 8 & 8\end{bmatrix}\)\nD. \(\begin{bmatrix}2 & 2 \\ 7 & 8\end{bmatrix}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Multiply rows of first by columns of second: First row: \(1*2+2*1=4\), \(1*0+2*2=4\). Second row: \(3*2+4*1=10\), \(3*0+4*2=8\)."
  },
  {
    "question": r"Which transformation matrix represents a reflection about the y-axis?\nA. \(\begin{bmatrix}1 & 0 \\ 0 & -1\end{bmatrix}\)\nB. \(\begin{bmatrix}-1 & 0 \\ 0 & 1\end{bmatrix}\)\nC. \(\begin{bmatrix}0 & 1 \\ 1 & 0\end{bmatrix}\)\nD. \(\begin{bmatrix}0 & -1 \\ 1 & 0\end{bmatrix}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Reflection about y-axis changes \(x\) to \(-x\), so multiply \(x\)-component by \(-1\), \(y\)-component unchanged."
  },
  {
    "question": r"For the function \(f(x,y) = x^2 y + 3xy^2\), what is \(\frac{\partial f}{\partial x}\)?\nA. \(2xy + 3y^2\)\nB. \(x^2 + 6xy\)\nC. \(y^2 + 6xy\)\nD. \(2x + 3y^2\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Partial derivative wrt \(x\): treat \(y\) as constant. Derivative of \(x^2 y\) wrt \(x\) is \(2xy\). Derivative of \(3xy^2\) is \(3y^2\)."
  },
  {
    "question": r"What is the determinant of \(\begin{bmatrix}1 & 2 & 3 \\ 0 & 1 & 4 \\ 5 & 6 & 0\end{bmatrix}\)?\nA. -24\nB. -1\nC. 24\nD. 1",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Using cofactor expansion: \(\det = 1 \times (1 \times 0 - 4 \times 6) - 2 \times (0 \times 0 - 4 \times 5) + 3 \times (0 \times 6 - 1 \times 5) = 1 \times (-24) - 2 \times (-20) + 3 \times (-5) = -24 + 40 -15 = 1\)"
  },
  {
    "question": r"Which of the following matrices is orthogonal?\nA. \(\begin{bmatrix}1 & 0 \\ 0 & 1\end{bmatrix}\)\nB. \(\begin{bmatrix}1 & 1 \\ 1 & -1\end{bmatrix}\)\nC. \(\begin{bmatrix}0 & -1 \\ 1 & 0\end{bmatrix}\)\nD. \(\begin{bmatrix}2 & 0 \\ 0 & 2\end{bmatrix}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Orthogonal matrix \(Q\) satisfies \(Q^T Q = I\). Matrix C is a rotation matrix (90°) and is orthogonal."
  },
  {
    "question": r"Given linear system represented by augmented matrix \(\begin{bmatrix}1 & 2 & | & 5 \\ 0 & 0 & | & 3\end{bmatrix}\), what can be concluded?\nA. Unique solution\nB. Infinite solutions\nC. No solution\nD. Depends on variables",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Second row translates to \(0=3\), a contradiction, so no solution."
  },
  {
    "question": r"The inverse of \(\begin{bmatrix}a & b \\ c & d\end{bmatrix}\) exists if and only if:\nA. \(a+d \neq 0\)\nB. \(ad - bc \neq 0\)\nC. \(a \neq 0\)\nD. \(b \neq c\)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The determinant \(ad - bc\) must be nonzero for the inverse to exist."
  },
  {
    "question": r"What is the effect of multiplying a 2D vector by the matrix \(\begin{bmatrix}0 & -1 \\ 1 & 0\end{bmatrix}\)?\nA. Scale by 1\nB. Reflection about x-axis\nC. Rotation by 90° counterclockwise\nD. Rotation by 180°",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"This matrix corresponds to a 90° counterclockwise rotation."
  },
  {
    "question": r"Compute the partial derivative \(\frac{\partial}{\partial y}\) of \(f(x,y) = e^{xy} + y^2\).\nA. \(x e^{xy} + 2y\)\nB. \(y e^{xy} + 2x\)\nC. \(x e^{xy} + y\)\nD. \(e^{xy} + 2y\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Partial wrt \(y\): derivative of \(e^{xy}\) is \(x e^{xy}\), derivative of \(y^2\) is \(2y\)."
  },
  {
    "question": r"If matrix \(A\) is \(3 \times 2\) and matrix \(B\) is \(2 \times 4\), what is the dimension of \(AB\)?\nA. \(2 \times 3\)\nB. \(3 \times 2\)\nC. \(3 \times 4\)\nD. \(2 \times 4\)",
    "options": ["A", "B", "C", "D"],
    "correct": 2,
    "explanation": r"Matrix multiplication \(AB\) results in a \(3 \times 4\) matrix."
  },
  {
    "question": r"For the function \(f(x,y) = x^3 - 3xy^2\), which is the partial derivative \(\frac{\partial f}{\partial x}\)?\nA. \(3x^2 - 3y^2\)\nB. \(3x^2 + 6xy\)\nC. \(3x^2 - 6xy\)\nD. \(x^3 - 3y^2\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Derivative wrt \(x\): \(3x^2 - 3y^2\)."
  },
  {
    "question": r"Which of the following statements about determinants is true?\nA. Determinant of a product is sum of determinants\nB. Determinant of a product is product of determinants\nC. Determinant of sum is sum of determinants\nD. Determinant is always positive",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"\(\det(AB) = \det(A) \times \det(B)\)."
  },
  {
    "question": r"Which of these matrices represents a shear transformation along the x-axis?\nA. \(\begin{bmatrix}1 & k \\ 0 & 1\end{bmatrix}\)\nB. \(\begin{bmatrix}1 & 0 \\ k & 1\end{bmatrix}\)\nC. \(\begin{bmatrix}k & 0 \\ 0 & k\end{bmatrix}\)\nD. \(\begin{bmatrix}0 & 1 \\ 1 & 0\end{bmatrix}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Shear along x-axis adds \(k \times y\) to \(x\) component."
  },
  {
    "question": r"Perform one step of Gaussian elimination on \(\begin{bmatrix}1 & 2 & 3 \\ 2 & 4 & 5\end{bmatrix}\) to eliminate below pivot.\nWhat is the new second row?\nA. \([0, 0, -1]\)\nB. \([0, 2, 5]\)\nC. \([2, 4, 5]\)\nD. \([0, 0, 1]\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Subtract 2 × row 1 from row 2: \(2 - 2*1=0\), \(4 - 2*2=0\), \(5 - 2*3 = -1\)."
  },
  {
    "question": r"Find the inverse of \(\begin{bmatrix}4 & 7 \\ 2 & 6\end{bmatrix}\).\nA. \(\frac{1}{10}\begin{bmatrix}6 & -7 \\ -2 & 4\end{bmatrix}\)\nB. \(\frac{1}{10}\begin{bmatrix}6 & 7 \\ 2 & 4\end{bmatrix}\)\nC. \(\frac{1}{10}\begin{bmatrix}4 & -7 \\ -2 & 6\end{bmatrix}\)\nD. \(\frac{1}{10}\begin{bmatrix}6 & -2 \\ -7 & 4\end{bmatrix}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Determinant is \(4*6 - 7*2 = 24 -14 = 10\). Inverse is \(\frac{1}{10} \begin{bmatrix}6 & -7 \\ -2 & 4\end{bmatrix}\)."
  },
  {
    "question": r"The function \(f(x,y) = x^2 + y^2\) has a critical point at:\nA. \((0,0)\)\nB. \((1,1)\)\nC. \((0,1)\)\nD. \((1,0)\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Set partial derivatives to zero: \(2x=0\), \(2y=0\), so critical point at (0,0)."
  },
  {
    "question": r"Which of the following is NOT true about matrix multiplication?\nA. \(AB \neq BA\) in general\nB. \(A(BC) = (AB)C\)\nC. \(A(B + C) = AB + AC\)\nD. \(AB\) is always symmetric if \(A\) and \(B\) are symmetric",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Product of symmetric matrices is not necessarily symmetric."
  },
  {
    "question": r"Evaluate the function \(f(x,y) = \sin(xy)\) at \(x=0\), for all \(y\).\nA. 0\nB. 1\nC. \(y\)\nD. \(\sin y\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Since \(xy=0\), \(\sin(0) = 0\)."
  },
  {
    "question": r"For the function \(f(x,y) = xy + x^2 y^3\), what is \(\frac{\partial^2 f}{\partial x \partial y}\)?\nA. \(1 + 6xy^2\)\nB. \(y + 6xy^2\)\nC. \(1 + 3x^2 y^2\)\nD. \(y + 3x^2 y^2\)\nE. \(1 + 6x y^3\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"\(\frac{\partial f}{\partial y} = x + 3x^2 y^2\). Then \(\frac{\partial^2 f}{\partial x \partial y} = 1 + 6 x y^2\)."
  },
  {
    "question": r"Which of the following statements is true about linear transformations?\nA. All linear transformations are invertible\nB. A linear transformation maps zero vector to zero vector\nC. Linear transformations always preserve angles\nD. All linear transformations are rotations",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Linear transformations always map zero vector to zero vector."
  },
  {
    "question": r"Consider the matrix \(A = \begin{bmatrix}1 & 2 \\ 3 & 4\end{bmatrix}\). Which matrix represents \(2A\)?\nA. \(\begin{bmatrix}2 & 4 \\ 6 & 8\end{bmatrix}\)\nB. \(\begin{bmatrix}1 & 4 \\ 6 & 8\end{bmatrix}\)\nC. \(\begin{bmatrix}2 & 2 \\ 3 & 4\end{bmatrix}\)\nD. \(\begin{bmatrix}4 & 8 \\ 12 & 16\end{bmatrix}\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Scalar multiplication doubles every entry."
  },
  {
    "question": r"What is the determinant of \(\begin{bmatrix}2 & 0 & 1 \\ 3 & 0 & 0 \\ 5 & 1 & 1\end{bmatrix}\)?\nA. -4\nB. -3\nC. 2\nD. 3",
    "options": ["A", "B", "C", "D"],
    "correct": 3,
    "explanation": r"Calculate determinant by expansion:\n\(2 \times (0 \times 1 - 0 \times 1) - 0 \times (3 \times 1 - 0 \times 5) + 1 \times (3 \times 1 - 0 \times 5) = 0 + 0 + 3 = 3\)"
  },
  {
    "question": r"The function \(f(x,y) = x^2 y + y^3\) is continuous at:\nA. \((0,0)\) only\nB. All \((x,y)\) in \(\mathbb{R}^2\)\nC. Nowhere\nD. When \(x=y\)",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"Polynomials are continuous everywhere."
  },
  {
    "question": r"Given the transformation matrix \(\begin{bmatrix}3 & 0 \\ 0 & 2\end{bmatrix}\), what is the geometric effect on vectors?\nA. Rotation by 3 radians\nB. Scaling by 3 in x-direction and 2 in y-direction\nC. Reflection about y-axis\nD. Shear along x-axis",
    "options": ["A", "B", "C", "D"],
    "correct": 1,
    "explanation": r"The diagonal matrix scales x by 3 and y by 2."
  },
  {
    "question": r"Evaluate the limit \(\lim_{(x,y)\to(0,0)} \frac{x^2 y}{x^2 + y^2}\).\nA. 0\nB. 1\nC. Does not exist\nD. \(\infty\)\nE. \(-1\)",
    "options": ["A", "B", "C", "D"],
    "correct": 0,
    "explanation": r"Using polar coordinates \(x = r \cos \theta, y = r \sin \theta\), numerator is \(r^2 \cos^2 \theta \times r \sin \theta = r^3 \cos^2 \theta \sin \theta\), denominator is \(r^2\). Limit is \(r \cos^2 \theta \sin \theta \to 0\) as \(r \to 0\)."
  },
];