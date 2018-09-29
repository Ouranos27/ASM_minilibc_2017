/*
** EPITECH PROJECT, 2018
** test
** File description:
** test
*/

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int	main(void)
{
	char *str = strdup("test12345");
	printf("strlen %d\n", (int)strlen(str));
	char *s1 = strdup("abcd"), *s2 = strdup("abdc");
	printf("%d\n", strcmp(s1, s2));
	char *s = strdup("atana zizi");
	printf("%s\n", strchr(s, 'i'));
	char string[50] = "GeeksForGeeks is for programming geeks.";
	printf("Before memset(): %s\n", string);
	memset(string + 13, '.', 8*sizeof(char));
	printf("After memset():  %s", string);
	const char src[50] = "http://www.tutorialspoint.com";
	char dest[50];
	printf("\nBefore memcpy dest = %s\n", dest);
	memcpy(dest, src, strlen(src)+1);
	printf("After memcpy dest = %s\n", dest);
	char str1[] = "abcd", str2[] = "abCd";
	int result = 0;
	result = strncmp(str1, str2, 3);
	printf("strncmp(str1, str2) = %d\n", result);
	const char haystack[20] = "TutorialsPoint";
	const char needle[10] = "Point";
	char *ret;
	printf("STRSTR\n");
	ret = strstr(haystack, needle);
	printf("The substring is: %s\n", ret);
	char d[] = "oldstring";
	const char sr[]  = "newstring";
	printf("Before memmove dest = %s, src = %s\n", d, sr);
	memmove(d, sr, 9);
	printf("After memmove dest = %s, src = %s\n", d, sr);
	int len;
	const char sr1[] = "ABCDEF4960910";
	const char sr2[] = "013";
	len = strcspn(sr1, sr2);
	printf("First matched character is at %d\n", len + 1);
	const char st1[] = "abcde2fghi3jk4l";
	const char st2[] = "34";
	char *et;
	et = strpbrk(st1, st2);
	if(et) {
		printf("First matching character: %c\n", *et);
	} else {
		printf("Character not found");
	}
	const char tr[] = "http://www.tutorialspoint.com";
	const char ch = '.';
	char *t;

	t = rindex(tr, ch);

	printf("String after |%c| is - |%s|\n", ch, t);
	return (0);
}
