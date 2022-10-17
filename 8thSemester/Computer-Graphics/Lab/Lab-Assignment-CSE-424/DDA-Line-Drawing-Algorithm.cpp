
/*
    Md. Abdul Mutalib
    B.Sc (Engg.) in CSE
    North East University Bangladesh
    Connect with me:
    Github: https://github.com/mamutalib
*/





#include<stdio.h>
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

float x1, y1, x2, y2, m, i, j;
float dx, dy;

void display(void) {
   glClear(GL_COLOR_BUFFER_BIT);
   glEnd();

   glColor3f(0.0, 1.0, 0.0);
   glBegin(GL_POINTS);

   if (m > 0 && m <= 1) {
      while (x1 <= x2 && y1 <= y2) {
         x1 = x1 + 1;
         y1 = y1 + m;
         glVertex3f(x1 / 100, y1 / 100, 0.0);
         printf("%f %f \n", x1, y1);

      }
   } else if (m > 1) {
      while (x1 <= x2 && y1 <= y2) {
         x1 = x1 + (1 / m);
         y1 = y1 + 1;
         glVertex3f(x1 / 100, y1 / 100, 0.0);
         printf("%f %f", x1, y1);
      }
   } else if (m > -1 && m <= 0) {
      while (x1 >= x2 && y1 >= y2) {
         x1 = x1 - 1;
         y1 = y1 - m;
         glVertex3f(x1 / 100, y1 / 100, 0.0);
         printf("%f %f", x1, y1);
      }
   } else if (m < -1)

   {

      while (x1 >= x2 && y1 >= y2) {
         x1 = x1 - (1 / m);
         y1 = y1 - 1;
         glVertex3f(x1 / 100, y1 / 100, 0.0);
         printf("%f %f", x1, y1);
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

   printf("Enter value of X1 :");
   scanf("%f", & x1);
   printf("Enter value of y1 :");
   scanf("%f", & y1);
   printf("Enter value of X2 :");
   scanf("%f", & x2);
   printf("Enter value of Y2 :");
   scanf("%f", & y2);
   dx = x2 - x1;
   dy = y2 - y1;
   m = dy / dx;

   glutInit( & argc, argv);
   glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
   glutInitWindowSize(500, 500);
   glutInitWindowPosition(100, 100);
   glutCreateWindow("DDA Line Drawing Algorithm");
   init();
   glutDisplayFunc(display);
   glutMainLoop();

   return 0;
}
