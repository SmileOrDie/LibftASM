#include "../srcs/libft_asm.h"
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <fcntl.h>
#define MIN_VALUE -5000000
#define MAX_VALUE 5000000
#define RANDOM_STRING_TESTS 20000
#define RANDOM_PUT_TESTS 10
#define ERROR 0
#define	ERROR_DIF 15
#define READ_LEN 85
#define MAX_FD 5
#define PATH "/tmp/test"

typedef int			(*compare)(int v);
typedef int			(*output)(const char *str);
typedef void		(*outputchar)(int v);
typedef void		(*outputchar_fd)(int v, int fd);
typedef void		(*outputstr)(const char *str);
typedef void		(*outputstr_fd)(const char *str, int fd);
