

/*
    Md. Abdul Mutalib
    B.Sc (Engg.) in CSE
    North East University Bangladesh
    Connect with me:
    Github: https://github.com/mamutalib
*/



#include <stdio.h>
#include <GL/gl.h>
#include <GL/glut.h>

#define ll long long
#define ull unsigned long long
#define ld long double
#define nl '\n'
#define fn for(int i = 0; i<n; i++)
#define ft for(int i = 0; i<t; i++)
#define wt while(t--)
#define wn while(n--)
#define fs first
#define f first
#define s second
#define pf printf
#define sc scanf



float x1, y1, x2, y2, m, i, j, p;
int dx = 0, dy = 0;
void display(void) {
  glClear(GL_COLOR_BUFFER_BIT);
  glEnd();

  glColor3f(0.0, 1.0, 0.0);
  glBegin(GL_POINTS);
  p = (2 * dy) - dx;
  for (i = x1, j = y1; i <= x2, j <= y2;) {
    if (p >= 0) {
      i = i + 1;
      j = j + 1;
      if ((i > x2) || (j > y2)) {
        break;
      }
      printf("%0.2f %0.2f\n", i, j);
      glVertex3f((i / 100), (j / 100), 0.0);
      p = p + (2 * dy) - (2 * dx);
    } else if (p < 0) {
      i = i + 1;
      if ((i > x2) || (j > y2)) {
        break;
      }
      printf("%0.2f %0.2f\n", i, j);
      glVertex3f((i / 100), (j / 100), 0.0);
      p = p + (2 * dy);
    }
  }
  glEnd();
  glFlush();
}


void init(void) {
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  glOrtho(0.0, 1.0, 0.0, 1.0, -1.0, 1.0);
}


int main(int argc, char ** argv) {

  printf("Enter first point: ");
  scanf("%f %f", & x1, & y1);
  printf("Enter second point: ");
  scanf("%f %f", & x2, & y2);
  dx = x2 - x1;
  dy = y2 - y1;
  glutInit( & argc, argv);
  glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
  glutInitWindowSize(500, 500);
  glutInitWindowPosition(100, 100);
  glutCreateWindow("Bresenham Line Drawing Algorithm");
  init();
  glutDisplayFunc(display);
  glutMainLoop();
  return 0;


}