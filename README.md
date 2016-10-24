# GIS 321 Principles of Programming for GIScience

---

**Instructor and contact information:**

**Instructor**: Sergio Rey

**Office**: Coor Hall 5612

**Office hours**: Tuesdays 2-3 or by appointment

**Email**: srey@asu.edu

---


**Course prerequisites**:  **[CSE 110](https://webapp4.asu.edu/catalog/course?s=CSE&n=110&c=TEMPE&t=2167&f=PSF166&r=80027)**


**Course description:**

Contemporary research in analytical geography has placed an increasing demand on the computational skills of its practitioners. The advances in spatial data analysis and geographical modeling have also largely out-paced the capabilities of standard statistical software. At the same time, the multidisciplinary nature of the spatial sciences often translates into the need to deal with disparate data sources, formats and programming languages. As such, students undertaking research are often confronted with a daunting set of tasks that are seldom covered in an integrated fashion in course work. This course is designed to address this situation.



**Course learning outcomes:**

* Introduce geography students to basic computational concepts using Python, an object-oriented scripting language, for data processing, analysis and application development in geographic research.

* Familiarize students with the fundamental tools used in collaborative programming and research projects in an open source and cross-platform environment.

* Provide students with [skill sets](http://www.directionsmag.com/entry/gis-jobs-of-today-should-you-have-programming-skills/473296) that are in [high demand](https://vimeo.com/93278530) within academic GIScience and commercial GIS development.

---

**Grading policy:**



Grading in the course will be based on the following point system:


| **Component**                        | **Points**                           |
|--------------------------------------|--------------------------------------|
| Exercises                            | 360                                  |
| Exam 1                               | 220                                  |
| Exam 2                               | 420                                  |
| Total                                | 1000                                 |

**Exams** will be based on the readings, discussion forum posts, and exercises. All exams are cumulative.  Late exams will not be accepted.

**Exercises** will be completed and submitted on Github.

**Extra credit** will be given for accepted pull requests that provide corrections or enhancements to course materials. 10 points for each accepted pull request.

---

**Required and recommended readings:**


W: Wentworth, P., et al. (2012) *How to Think Like a Computer
Scientist: Learning with Python 3. OpenBookProject* [How to Think Like a Computer Scientist](http://openbookproject.net/thinkcs/python/english3e/).
Denoted as **W** in schedule.


Chacon, S. and Straub, B. (2014) *Pro Git.* [Git: Distributed Even if Your Workflow Isn't](https://git-scm.com/book/en/v2).
Denoted as **C** in schedule.

Other readings to be assigned.

---

**Schedule**

| Week  | Date | Topics | Readings | Assigned| Due |
|--------|----|--------|----------|---------|-----|
| 1      | 8.22 | Course Introduction, [Intro to github](ipynb_md/10_git.html) | [C1][C1], [C6][C6] | [E0 GitHub](ipynb_md/10_git.html)| |
| 2      | 8.29 | Software installation, [shells][shells] | [Install All][Install], [Install Windows][Windows], [Install Mac][Mac], [C2][C2], [C3][C3], [vim][vim] | E1 Shells| E0 |
|        | 9.05 | Labor Day Holiday      | | | |
| 3      | 9.12 | [git I][git I]  |[C4][C4], [C5][C5], [C6][C6]  | [E2 git collaboration][e2]| E1 |
| 4      | 9.19 |  [git II][git II],  [Test Driven Development][tdd]  |[Testing][jltdd]  | [E3 Testing][E3]| E2 |
| 5      | 9.26 |Python Introduction,  [Operators-operands][op]  | [WP][WP], [W1][W1]  |  | E3 |
| 6      | 10.03 | [Sequences][seq], [Dictionaries][dict], [Controls][cont]  |  | [E4][cont] | |
|        | 10.10 | Fall Break  |  |  |  |
| 7      | 10.17 | [Functions][functions], [Modules][modules]  |  | [E5][E5]  | E4  |
| 8      | 10.24 | Object orientation  |  | [E6][E6]  | E5  |
| 9      | 10.31 | Composition  |  | Exam 1  | E6  |
| 10      | 11.07 | Functional programming   |  | E7  | Exam 1  |
| 11      | 11.14 | NumPy and SciPy   |  | E8  | E7  |
| 12      | 11.21 | Visualization  |  | E9  | E8  |
| 13      | 11.28 | Geospatial Python  |  | Exam 2  | E9  |
|         | 12.05|    |  |         | Exam 2|


---

**Academic integrity**

The ASU student academic integrity policy lists violations in detail.
These violations fall into five broad areas that include but are not
limited to: cheating on an academic evaluation or assignment,
plagiarizing, academic deceit, such as fabricating data or information,
aiding academic integrity policy violations and inappropriately
collaborating, or falsifying academic records. For more information
about the ASU student academic integrity policy, please use the
following web link

[http://provost.asu.edu/academicintegrity](http://provost.asu.edu/academicintegrity)


**Disability accommodations**

Qualified students with disabilities who will require disability
accommodations in this class are encouraged to make their requests to me
at the beginning of the semester either during office hours or by
appointment. Note: Prior to receiving disability accommodations,
verification of eligibility from the Disability Resource Center (DRC) is
required. Disability information is confidential.

**Code of Conduct**

As course instructor, I am dedicated to providing a harassment-free learning experience for all students, regardless of gender, sexual orientation, disability, physical appearance, body size, race, religion, or choice of operating system.  All course participants are expected to show respect and courtesy to other students  throughout the semester.  As a learning community we do not tolerate harassment of participants in any form.

All communication should be appropriate for a professional audience including people of many different backgrounds. Sexual language and imagery are not appropriate in this course.

Be kind to others. Do not insult or put down other students. Behave professionally. Remember that harassment and sexist, racist, or exclusionary jokes are not appropriate for GIS321.

Students violating these rules may be asked to leave the course, and their violations will be reported to the ASU administration.

This code of conduct is an adaptation of the [SciPy 2016 Code of Conduct](http://scipy2016.scipy.org/ehome/146062/388087/).

**License**

All the software we will be using in this course falls under an [open source license][license].  Additionally, we build on the shoulders of many giants in this course and will be adapting materials from the [Software Carpentry][sc] project that has generously provided instructional materials under a [Creative Commons Attribution License][CCAL].

All materials associated with this course are placed under the [Creative Commons Attribution License][CCAL].

[C1]: https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control
[C2]: https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository
[C3]: https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell
[C4]: https://git-scm.com/book/en/v2/Git-on-the-Server-The-Protocols
[C5]: https://git-scm.com/book/en/v2/Distributed-Git-Distributed-Workflows
[C6]: https://git-scm.com/book/en/v2/GitHub-Account-Setup-and-Configuration
[e2]: content/partI/exercises/exercise02.md 
[E3]: https://github.com/sjsrey/gis321f16collaboratory/tree/master/exercise03
[E5]: https://github.com/sjsrey/gis321f16collaboratory/tree/master/exercise05
[E6]: https://github.com/sjsrey/gis321f16collaboratory/tree/master/exercise06
[git I]: content/partI/git.md
[git II]: https://github.com/pysal/pysal/wiki/GitHub-Standard-Operating-Procedures
[jltdd]: https://github.com/jlaura/GIS321/blob/master/Wk_2/Week2.ipynb
[op]: https://github.com/sjsrey/gis321f16/blob/master/content/partI/operators.ipynb
[seq]: https://github.com/sjsrey/gis321f16/blob/master/content/partI/sequences.ipynb
[dict]: https://github.com/sjsrey/gis321f16/blob/master/content/partI/lect_dict.ipynb
[functions]: https://github.com/sjsrey/gis321f16/blob/master/content/partI/lecture_functions.ipynb
[modules]: https://github.com/sjsrey/gis321f16/blob/master/content/partI/lecture_modules.ipynb
[cont]: https://github.com/sjsrey/gis321f16/blob/master/content/partI/lect_conditionals.ipynb
[cont]: https://github.com/sjsrey/gis321f16collaboratory/blob/master/exercise04/README.md
[WP]: http://openbookproject.net/thinkcs/python/english3e/preface.html
[W1]: http://openbookproject.net/thinkcs/python/english3e/way_of_the_program.html
[license]: https://opensource.com/resources/what-open-source
[Install]: https://ucsdlib.github.io/2016-07-18-UCSD/
[Mac]: https://www.youtube.com/watch?v=TcSAln46u9U
[Windows]: https://www.youtube.com/watch?v=339AEqk9c-8&app=desktop
[sc]: http://software-carpentry.org/license/
[shells]: content/partI/shells.html
[tdd]: https://github.com/sjsrey/gis321f16collaboratory/blob/master/exercise03/tests.py
[travis]: https://docs.travis-ci.com/user/getting-started/
[CCAL]: https://creativecommons.org/licenses/by/4.0/
[vim]: https://scotch.io/tutorials/getting-started-with-vim-an-interactive-guide
