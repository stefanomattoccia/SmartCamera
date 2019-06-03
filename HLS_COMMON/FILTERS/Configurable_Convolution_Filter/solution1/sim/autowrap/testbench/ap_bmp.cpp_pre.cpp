# 1 "C:/Users/Luca/Desktop/ProgettoVivado/OV_7670/HLS_COMMON/FILTERS/Configurable_Convolution_Filter/ap_bmp.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Luca/Desktop/ProgettoVivado/OV_7670/HLS_COMMON/FILTERS/Configurable_Convolution_Filter/ap_bmp.cpp"
# 37 "C:/Users/Luca/Desktop/ProgettoVivado/OV_7670/HLS_COMMON/FILTERS/Configurable_Convolution_Filter/ap_bmp.cpp"
# 1 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 1 3
# 19 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
# 1 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 1 3
# 32 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 3
       
# 33 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 3
# 20 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 2 3






# 1 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 1 3 4
# 212 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 353 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 3 4
typedef short unsigned int wint_t;
# 27 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 2 3

# 1 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stdarg.h" 1 3 4
# 40 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 29 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 2 3
# 129 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
typedef struct _iobuf
{
 char* _ptr;
 int _cnt;
 char* _base;
 int _flag;
 int _file;
 int _charbuf;
 int _bufsiz;
 char* _tmpfname;
} FILE;
# 154 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
extern __attribute__ ((__dllimport__)) FILE _iob[];
# 163 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
extern "C" {





 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fopen (const char*, const char*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) freopen (const char*, const char*, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fflush (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fclose (FILE*);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) remove (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rename (const char*, const char*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tmpfile (void);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tmpnam (char*);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _tempnam (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _rmtmp(void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _unlink (const char*);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tempnam (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rmtmp(void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) unlink (const char*);



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) setvbuf (FILE*, char*, int, size_t);

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) setbuf (FILE*, char*);
# 204 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_fprintf(FILE*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_printf(const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_sprintf(char*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_snprintf(char*, size_t, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vfprintf(FILE*, const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vprintf(const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vsprintf(char*, const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vsnprintf(char*, size_t, const char*, __gnuc_va_list);
# 293 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fprintf (FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) printf (const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sprintf (char*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfprintf (FILE*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vprintf (const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsprintf (char*, const char*, __gnuc_va_list);
# 308 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_fprintf(FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_printf(const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_sprintf(char*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vfprintf(FILE*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vprintf(const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vsprintf(char*, const char*, __gnuc_va_list);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _snprintf (char*, size_t, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vsnprintf (char*, size_t, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vscprintf (const char*, __gnuc_va_list);
# 331 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) snprintf (char *, size_t, const char *, ...);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsnprintf (char *, size_t, const char *, __gnuc_va_list);

int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vscanf (const char * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfscanf (FILE * __restrict__, const char * __restrict__,
       __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsscanf (const char * __restrict__,
       const char * __restrict__, __gnuc_va_list);







 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fscanf (FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) scanf (const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sscanf (const char*, const char*, ...);




 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetc (FILE*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgets (char*, int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputc (int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputs (const char*, FILE*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gets (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) puts (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ungetc (int, FILE*);







 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _filbuf (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _flsbuf (int, FILE*);



inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getc (FILE* __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) *__F->_ptr++
    : _filbuf (__F);
}

inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putc (int __c, FILE* __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) (*__F->_ptr++ = (char)__c)
    : _flsbuf (__c, __F);
}

inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getchar (void)
{
  return (--(&_iob[0])->_cnt >= 0)
    ? (int) (unsigned char) *(&_iob[0])->_ptr++
    : _filbuf ((&_iob[0]));
}

inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putchar(int __c)
{
  return (--(&_iob[1])->_cnt >= 0)
    ? (int) (unsigned char) (*(&_iob[1])->_ptr++ = (char)__c)
    : _flsbuf (__c, (&_iob[1]));}
# 412 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fread (void*, size_t, size_t, FILE*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwrite (const void*, size_t, size_t, FILE*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fseek (FILE*, long, int);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ftell (FILE*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rewind (FILE*);
# 455 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
typedef long long fpos_t;




 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetpos (FILE*, fpos_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fsetpos (FILE*, const fpos_t*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) feof (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ferror (FILE*);


inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) feof (FILE* __F)
  { return __F->_flag & 0x0010; }
inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ferror (FILE* __F)
  { return __F->_flag & 0x0020; }





 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) clearerr (FILE*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) perror (const char*);






 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _popen (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _pclose (FILE*);


 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) popen (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) pclose (FILE*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _flushall (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fgetchar (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fputchar (int);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fdopen (int, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fileno (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fcloseall (void);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fsopen (const char*, const char*, int);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getmaxstdio (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _setmaxstdio (int);
# 522 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetchar (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputchar (int);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fdopen (int, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fileno (FILE*);
# 534 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
# 1 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/sys/types.h" 1 3
# 21 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/sys/types.h" 3
# 1 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 1 3 4
# 150 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 22 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/sys/types.h" 2 3





typedef long __time32_t;




typedef long long __time64_t;
# 45 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/sys/types.h" 3
typedef __time32_t time_t;






typedef long _off_t;


typedef _off_t off_t;







typedef unsigned int _dev_t;





typedef _dev_t dev_t;






typedef short _ino_t;


typedef _ino_t ino_t;






typedef int _pid_t;


typedef _pid_t pid_t;






typedef unsigned short _mode_t;


typedef _mode_t mode_t;






typedef int _sigset_t;


typedef _sigset_t sigset_t;





typedef int _ssize_t;


typedef _ssize_t ssize_t;





typedef long long fpos64_t;




typedef long long off64_t;



typedef unsigned int useconds_t;
# 535 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 2 3
inline FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fopen64 (const char* filename, const char* mode)
{
  return fopen (filename, mode);
}

int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fseeko64 (FILE*, off64_t, int);






inline off64_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ftello64 (FILE * stream)
{
  fpos_t pos;
  if (fgetpos(stream, &pos))
    return -1LL;
  else
   return ((off64_t) pos);
}
# 563 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwprintf (FILE*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wprintf (const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _snwprintf (wchar_t*, size_t, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfwprintf (FILE*, const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vwprintf (const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vsnwprintf (wchar_t*, size_t, const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vscwprintf (const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwscanf (FILE*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wscanf (const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swscanf (const wchar_t*, const wchar_t*, ...);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetwc (FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputwc (wchar_t, FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ungetwc (wchar_t, FILE*);



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swprintf (wchar_t*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vswprintf (wchar_t*, const wchar_t*, __gnuc_va_list);



 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetws (wchar_t*, int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputws (const wchar_t*, FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getwc (FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getwchar (void);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getws (wchar_t*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putwc (wint_t, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putws (const wchar_t*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putwchar (wint_t);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfdopen(int, const wchar_t *);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfopen (const wchar_t*, const wchar_t*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfreopen (const wchar_t*, const wchar_t*, FILE*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfsopen (const wchar_t*, const wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtmpnam (wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtempnam (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wrename (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wremove (const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wperror (const wchar_t*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wpopen (const wchar_t*, const wchar_t*);



int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) snwprintf (wchar_t* s, size_t n, const wchar_t* format, ...);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsnwprintf (wchar_t* s, size_t n, const wchar_t* format, __gnuc_va_list arg);





int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vwscanf (const wchar_t * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfwscanf (FILE * __restrict__,
         const wchar_t * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vswscanf (const wchar_t * __restrict__,
         const wchar_t * __restrict__, __gnuc_va_list);
# 625 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wpopen (const wchar_t*, const wchar_t*);






 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fgetwchar (void);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fputwchar (wint_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getw (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putw (int, FILE*);


 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetwchar (void);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputwchar (wint_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getw (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putw (int, FILE*);





}
# 38 "C:/Users/Luca/Desktop/ProgettoVivado/OV_7670/HLS_COMMON/FILTERS/Configurable_Convolution_Filter/ap_bmp.cpp" 2
# 1 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 1 3
# 21 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
# 1 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 1 3 4
# 22 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 2 3
# 60 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
extern "C" {
# 71 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
extern int _argc;
extern char** _argv;




extern int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___argc(void);
extern char*** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___argv(void);
extern wchar_t*** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___wargv(void);
# 112 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
   extern __attribute__ ((__dllimport__)) int __mb_cur_max;
# 137 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
 int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _errno(void);


 int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __doserrno(void);
# 149 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
  extern char *** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__environ(void);
  extern wchar_t *** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__wenviron(void);
# 172 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
  extern __attribute__ ((__dllimport__)) int _sys_nerr;
# 196 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
extern __attribute__ ((__dllimport__)) char* _sys_errlist[];
# 209 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__osver(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winver(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winmajor(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winminor(void);







extern __attribute__ ((__dllimport__)) unsigned int _osver;
extern __attribute__ ((__dllimport__)) unsigned int _winver;
extern __attribute__ ((__dllimport__)) unsigned int _winmajor;
extern __attribute__ ((__dllimport__)) unsigned int _winminor;
# 260 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
 char** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__pgmptr(void);

 wchar_t** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__wpgmptr(void);
# 293 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
extern __attribute__ ((__dllimport__)) int _fmode;
# 303 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atof (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atoi (const char*);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atol (const char*);

 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtof (const wchar_t *);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtoi (const wchar_t *);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtol (const wchar_t *);


double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __strtod (const char*, char**);
extern double __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
strtod (const char* __restrict__ __nptr, char** __restrict__ __endptr);
float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtof (const char * __restrict__, char ** __restrict__);
long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtold (const char * __restrict__, char ** __restrict__);




 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtol (const char*, char**, int);
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoul (const char*, char**, int);



 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstol (const wchar_t*, wchar_t**, int);
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstoul (const wchar_t*, wchar_t**, int);
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstod (const wchar_t*, wchar_t**);

float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstof( const wchar_t * __restrict__, wchar_t ** __restrict__);
long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstold (const wchar_t * __restrict__, wchar_t ** __restrict__);


 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wgetenv(const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wputenv(const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsearchenv(const wchar_t*, const wchar_t*, wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsystem(const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wmakepath(wchar_t*, const wchar_t*, const wchar_t*, const wchar_t*, const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsplitpath (const wchar_t*, wchar_t*, wchar_t*, wchar_t*, wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfullpath (wchar_t*, const wchar_t*, size_t);




 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstombs (char*, const wchar_t*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wctomb (char*, wchar_t);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mblen (const char*, size_t);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mbstowcs (wchar_t*, const char*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mbtowc (wchar_t*, const char*, size_t);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rand (void);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) srand (unsigned int);

 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) calloc (size_t, size_t) __attribute__ ((__malloc__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) malloc (size_t) __attribute__ ((__malloc__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) realloc (void*, size_t);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) free (void*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) abort (void) __attribute__ ((__noreturn__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) exit (int) __attribute__ ((__noreturn__));


int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atexit (void (*)(void));

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) system (const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getenv (const char*);


 void* __attribute__((__cdecl__)) bsearch (const void*, const void*, size_t, size_t,
          int (*)(const void*, const void*));
 void __attribute__((__cdecl__)) qsort(void*, size_t, size_t,
      int (*)(const void*, const void*));

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) abs (int) __attribute__ ((__const__));
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) labs (long) __attribute__ ((__const__));
# 385 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

 div_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) div (int, int) __attribute__ ((__const__));
 ldiv_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ldiv (long, long) __attribute__ ((__const__));







 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _beep (unsigned int, unsigned int) __attribute__ ((__deprecated__));

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _seterrormode (int) __attribute__ ((__deprecated__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _sleep (unsigned long) __attribute__ ((__deprecated__));

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _exit (int) __attribute__ ((__noreturn__));



typedef int (* _onexit_t)(void);
_onexit_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _onexit( _onexit_t );

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putenv (const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _searchenv (const char*, const char*, char*);

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ecvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fcvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _gcvt (double, int, char*);

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _makepath (char*, const char*, const char*, const char*, const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _splitpath (const char*, char*, char*, char*, char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fullpath (char*, const char*, size_t);

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _itoa (int, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ltoa (long, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ultoa(unsigned long, char*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _itow (int, wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ltow (long, wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ultow (unsigned long, wchar_t*, int);


 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _atoi64(const char *);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _i64toa(long long, char *, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ui64toa(unsigned long long, char *, int);
 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtoi64(const wchar_t *);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _i64tow(long long, wchar_t *, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ui64tow(unsigned long long, wchar_t *, int);

 unsigned int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_rotl)(unsigned int, int) __attribute__ ((__const__));
 unsigned int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_rotr)(unsigned int, int) __attribute__ ((__const__));
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_lrotl)(unsigned long, int) __attribute__ ((__const__));
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_lrotr)(unsigned long, int) __attribute__ ((__const__));

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _set_error_mode (int);
# 477 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putenv (const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) searchenv (const char*, const char*, char*);

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) itoa (int, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ltoa (long, char*, int);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ecvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fcvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gcvt (double, int, char*);
# 497 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _Exit(int) __attribute__ ((__noreturn__));





typedef struct { long long quot, rem; } lldiv_t;

lldiv_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lldiv (long long, long long) __attribute__ ((__const__));

long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) llabs(long long);





long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoll (const char* __restrict__, char** __restrict, int);
unsigned long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoull (const char* __restrict__, char** __restrict__, int);


long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atoll (const char *);


long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wtoll (const wchar_t *);
char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltoa (long long, char *, int);
char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltoa (unsigned long long , char *, int);
wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltow (long long, wchar_t *, int);
wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltow (unsigned long long, wchar_t *, int);
# 549 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
}
# 39 "C:/Users/Luca/Desktop/ProgettoVivado/OV_7670/HLS_COMMON/FILTERS/Configurable_Convolution_Filter/ap_bmp.cpp" 2
# 1 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 1 3
# 16 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
       
# 17 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
# 90 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern "C" {
# 134 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
struct _exception
{
 int type;
 char *name;
 double arg1;
 double arg2;
 double retval;
};

 double __attribute__((__cdecl__)) sin (double);
 double __attribute__((__cdecl__)) cos (double);
 double __attribute__((__cdecl__)) tan (double);
 double __attribute__((__cdecl__)) sinh (double);
 double __attribute__((__cdecl__)) cosh (double);
 double __attribute__((__cdecl__)) tanh (double);
 double __attribute__((__cdecl__)) asin (double);
 double __attribute__((__cdecl__)) acos (double);
 double __attribute__((__cdecl__)) atan (double);
 double __attribute__((__cdecl__)) atan2 (double, double);
 double __attribute__((__cdecl__)) exp (double);
 double __attribute__((__cdecl__)) log (double);
 double __attribute__((__cdecl__)) log10 (double);
 double __attribute__((__cdecl__)) pow (double, double);
 double __attribute__((__cdecl__)) sqrt (double);
 double __attribute__((__cdecl__)) ceil (double);
 double __attribute__((__cdecl__)) floor (double);
 double __attribute__((__cdecl__)) fabs (double);
 double __attribute__((__cdecl__)) ldexp (double, int);
 double __attribute__((__cdecl__)) frexp (double, int*);
 double __attribute__((__cdecl__)) modf (double, double*);
 double __attribute__((__cdecl__)) fmod (double, double);
# 210 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
struct _complex
{
 double x;
 double y;
};

 double __attribute__((__cdecl__)) _cabs (struct _complex);

 double __attribute__((__cdecl__)) _hypot (double, double);
 double __attribute__((__cdecl__)) _j0 (double);
 double __attribute__((__cdecl__)) _j1 (double);
 double __attribute__((__cdecl__)) _jn (int, double);
 double __attribute__((__cdecl__)) _y0 (double);
 double __attribute__((__cdecl__)) _y1 (double);
 double __attribute__((__cdecl__)) _yn (int, double);
 int __attribute__((__cdecl__)) _matherr (struct _exception *);
# 234 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
 double __attribute__((__cdecl__)) _chgsign (double);
 double __attribute__((__cdecl__)) _copysign (double, double);
 double __attribute__((__cdecl__)) _logb (double);
 double __attribute__((__cdecl__)) _nextafter (double, double);
 double __attribute__((__cdecl__)) _scalb (double, long);

 int __attribute__((__cdecl__)) _finite (double);
 int __attribute__((__cdecl__)) _fpclass (double);
 int __attribute__((__cdecl__)) _isnan (double);
# 254 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
 double __attribute__((__cdecl__)) j0 (double);
 double __attribute__((__cdecl__)) j1 (double);
 double __attribute__((__cdecl__)) jn (int, double);
 double __attribute__((__cdecl__)) y0 (double);
 double __attribute__((__cdecl__)) y1 (double);
 double __attribute__((__cdecl__)) yn (int, double);

 double __attribute__((__cdecl__)) chgsign (double);
# 270 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
 int __attribute__((__cdecl__)) finite (double);
 int __attribute__((__cdecl__)) fpclass (double);
# 324 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
typedef long double float_t;
typedef long double double_t;
# 354 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern int __attribute__((__cdecl__)) __fpclassifyf (float);
extern int __attribute__((__cdecl__)) __fpclassify (double);
extern int __attribute__((__cdecl__)) __fpclassifyl (long double);
# 379 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern int __attribute__((__cdecl__)) __isnan (double);
extern int __attribute__((__cdecl__)) __isnanf (float);
extern int __attribute__((__cdecl__)) __isnanl (long double);
# 419 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern int __attribute__((__cdecl__)) __signbit (double);
extern int __attribute__((__cdecl__)) __signbitf (float);
extern int __attribute__((__cdecl__)) __signbitl (long double);
# 447 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern float __attribute__((__cdecl__)) sinf (float);
extern long double __attribute__((__cdecl__)) sinl (long double);

extern float __attribute__((__cdecl__)) cosf (float);
extern long double __attribute__((__cdecl__)) cosl (long double);

extern float __attribute__((__cdecl__)) tanf (float);
extern long double __attribute__((__cdecl__)) tanl (long double);

extern float __attribute__((__cdecl__)) asinf (float);
extern long double __attribute__((__cdecl__)) asinl (long double);

extern float __attribute__((__cdecl__)) acosf (float);
extern long double __attribute__((__cdecl__)) acosl (long double);

extern float __attribute__((__cdecl__)) atanf (float);
extern long double __attribute__((__cdecl__)) atanl (long double);

extern float __attribute__((__cdecl__)) atan2f (float, float);
extern long double __attribute__((__cdecl__)) atan2l (long double, long double);


extern float __attribute__((__cdecl__)) sinhf (float);




extern long double __attribute__((__cdecl__)) sinhl (long double);

extern float __attribute__((__cdecl__)) coshf (float);




extern long double __attribute__((__cdecl__)) coshl (long double);

extern float __attribute__((__cdecl__)) tanhf (float);




extern long double __attribute__((__cdecl__)) tanhl (long double);



extern double __attribute__((__cdecl__)) acosh (double);
extern float __attribute__((__cdecl__)) acoshf (float);
extern long double __attribute__((__cdecl__)) acoshl (long double);


extern double __attribute__((__cdecl__)) asinh (double);
extern float __attribute__((__cdecl__)) asinhf (float);
extern long double __attribute__((__cdecl__)) asinhl (long double);


extern double __attribute__((__cdecl__)) atanh (double);
extern float __attribute__((__cdecl__)) atanhf (float);
extern long double __attribute__((__cdecl__)) atanhl (long double);



extern float __attribute__((__cdecl__)) expf (float);




extern long double __attribute__((__cdecl__)) expl (long double);


extern double __attribute__((__cdecl__)) exp2(double);
extern float __attribute__((__cdecl__)) exp2f(float);
extern long double __attribute__((__cdecl__)) exp2l(long double);



extern double __attribute__((__cdecl__)) expm1(double);
extern float __attribute__((__cdecl__)) expm1f(float);
extern long double __attribute__((__cdecl__)) expm1l(long double);


extern float __attribute__((__cdecl__)) frexpf (float, int*);




extern long double __attribute__((__cdecl__)) frexpl (long double, int*);




extern int __attribute__((__cdecl__)) ilogb (double);
extern int __attribute__((__cdecl__)) ilogbf (float);
extern int __attribute__((__cdecl__)) ilogbl (long double);


extern float __attribute__((__cdecl__)) ldexpf (float, int);




extern long double __attribute__((__cdecl__)) ldexpl (long double, int);


extern float __attribute__((__cdecl__)) logf (float);
extern long double __attribute__((__cdecl__)) logl (long double);


extern float __attribute__((__cdecl__)) log10f (float);
extern long double __attribute__((__cdecl__)) log10l (long double);


extern double __attribute__((__cdecl__)) log1p(double);
extern float __attribute__((__cdecl__)) log1pf(float);
extern long double __attribute__((__cdecl__)) log1pl(long double);


extern double __attribute__((__cdecl__)) log2 (double);
extern float __attribute__((__cdecl__)) log2f (float);
extern long double __attribute__((__cdecl__)) log2l (long double);


extern double __attribute__((__cdecl__)) logb (double);
extern float __attribute__((__cdecl__)) logbf (float);
extern long double __attribute__((__cdecl__)) logbl (long double);
# 603 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern float __attribute__((__cdecl__)) modff (float, float*);
extern long double __attribute__((__cdecl__)) modfl (long double, long double*);


extern double __attribute__((__cdecl__)) scalbn (double, int);
extern float __attribute__((__cdecl__)) scalbnf (float, int);
extern long double __attribute__((__cdecl__)) scalbnl (long double, int);

extern double __attribute__((__cdecl__)) scalbln (double, long);
extern float __attribute__((__cdecl__)) scalblnf (float, long);
extern long double __attribute__((__cdecl__)) scalblnl (long double, long);



extern double __attribute__((__cdecl__)) cbrt (double);
extern float __attribute__((__cdecl__)) cbrtf (float);
extern long double __attribute__((__cdecl__)) cbrtl (long double);


extern float __attribute__((__cdecl__)) fabsf (float x);
extern long double __attribute__((__cdecl__)) fabsl (long double x);


extern double __attribute__((__cdecl__)) hypot (double, double);
extern float __attribute__((__cdecl__)) hypotf (float, float);




extern long double __attribute__((__cdecl__)) hypotl (long double, long double);


extern float __attribute__((__cdecl__)) powf (float, float);




extern long double __attribute__((__cdecl__)) powl (long double, long double);


extern float __attribute__((__cdecl__)) sqrtf (float);
extern long double __attribute__((__cdecl__)) sqrtl (long double);


extern double __attribute__((__cdecl__)) erf (double);
extern float __attribute__((__cdecl__)) erff (float);
extern long double __attribute__((__cdecl__)) erfl (long double);


extern double __attribute__((__cdecl__)) erfc (double);
extern float __attribute__((__cdecl__)) erfcf (float);
extern long double __attribute__((__cdecl__)) erfcl (long double);


extern double __attribute__((__cdecl__)) lgamma (double);
extern float __attribute__((__cdecl__)) lgammaf (float);
extern long double __attribute__((__cdecl__)) lgammal (long double);


extern double __attribute__((__cdecl__)) tgamma (double);
extern float __attribute__((__cdecl__)) tgammaf (float);
extern long double __attribute__((__cdecl__)) tgammal (long double);


extern float __attribute__((__cdecl__)) ceilf (float);
extern long double __attribute__((__cdecl__)) ceill (long double);


extern float __attribute__((__cdecl__)) floorf (float);
extern long double __attribute__((__cdecl__)) floorl (long double);


extern double __attribute__((__cdecl__)) nearbyint ( double);
extern float __attribute__((__cdecl__)) nearbyintf (float);
extern long double __attribute__((__cdecl__)) nearbyintl (long double);



extern double __attribute__((__cdecl__)) rint (double);
extern float __attribute__((__cdecl__)) rintf (float);
extern long double __attribute__((__cdecl__)) rintl (long double);


extern long __attribute__((__cdecl__)) lrint (double);
extern long __attribute__((__cdecl__)) lrintf (float);
extern long __attribute__((__cdecl__)) lrintl (long double);

extern long long __attribute__((__cdecl__)) llrint (double);
extern long long __attribute__((__cdecl__)) llrintf (float);
extern long long __attribute__((__cdecl__)) llrintl (long double);
# 771 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern double __attribute__((__cdecl__)) round (double);
extern float __attribute__((__cdecl__)) roundf (float);
extern long double __attribute__((__cdecl__)) roundl (long double);


extern long __attribute__((__cdecl__)) lround (double);
extern long __attribute__((__cdecl__)) lroundf (float);
extern long __attribute__((__cdecl__)) lroundl (long double);

extern long long __attribute__((__cdecl__)) llround (double);
extern long long __attribute__((__cdecl__)) llroundf (float);
extern long long __attribute__((__cdecl__)) llroundl (long double);



extern double __attribute__((__cdecl__)) trunc (double);
extern float __attribute__((__cdecl__)) truncf (float);
extern long double __attribute__((__cdecl__)) truncl (long double);


extern float __attribute__((__cdecl__)) fmodf (float, float);
extern long double __attribute__((__cdecl__)) fmodl (long double, long double);


extern double __attribute__((__cdecl__)) remainder (double, double);
extern float __attribute__((__cdecl__)) remainderf (float, float);
extern long double __attribute__((__cdecl__)) remainderl (long double, long double);


extern double __attribute__((__cdecl__)) remquo(double, double, int *);
extern float __attribute__((__cdecl__)) remquof(float, float, int *);
extern long double __attribute__((__cdecl__)) remquol(long double, long double, int *);


extern double __attribute__((__cdecl__)) copysign (double, double);
extern float __attribute__((__cdecl__)) copysignf (float, float);
extern long double __attribute__((__cdecl__)) copysignl (long double, long double);


extern double __attribute__((__cdecl__)) nan(const char *tagp);
extern float __attribute__((__cdecl__)) nanf(const char *tagp);
extern long double __attribute__((__cdecl__)) nanl(const char *tagp);
# 821 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern double __attribute__((__cdecl__)) nextafter (double, double);
extern float __attribute__((__cdecl__)) nextafterf (float, float);
extern long double __attribute__((__cdecl__)) nextafterl (long double, long double);


extern double __attribute__((__cdecl__)) nexttoward (double, long double);
extern float __attribute__((__cdecl__)) nexttowardf (float, long double);
extern long double __attribute__((__cdecl__)) nexttowardl (long double, long double);



extern double __attribute__((__cdecl__)) fdim (double x, double y);
extern float __attribute__((__cdecl__)) fdimf (float x, float y);
extern long double __attribute__((__cdecl__)) fdiml (long double x, long double y);







extern double __attribute__((__cdecl__)) fmax (double, double);
extern float __attribute__((__cdecl__)) fmaxf (float, float);
extern long double __attribute__((__cdecl__)) fmaxl (long double, long double);


extern double __attribute__((__cdecl__)) fmin (double, double);
extern float __attribute__((__cdecl__)) fminf (float, float);
extern long double __attribute__((__cdecl__)) fminl (long double, long double);



extern double __attribute__((__cdecl__)) fma (double, double, double);
extern float __attribute__((__cdecl__)) fmaf (float, float, float);
extern long double __attribute__((__cdecl__)) fmal (long double, long double, long double);
# 910 "c:\\xilinx\\vivado_hls\\2016.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
}
# 40 "C:/Users/Luca/Desktop/ProgettoVivado/OV_7670/HLS_COMMON/FILTERS/Configurable_Convolution_Filter/ap_bmp.cpp" 2
# 1 "C:/Users/Luca/Desktop/ProgettoVivado/OV_7670/HLS_COMMON/FILTERS/Configurable_Convolution_Filter/ap_bmp.h" 1
# 49 "C:/Users/Luca/Desktop/ProgettoVivado/OV_7670/HLS_COMMON/FILTERS/Configurable_Convolution_Filter/ap_bmp.h"
typedef struct{
  unsigned short FileType;
  unsigned int FileSize;
  unsigned short Reserved1;
  unsigned short Reserved2;
  unsigned short Offset;
}BMPHeader;

typedef struct{
  unsigned int Size;
  unsigned int Width;
  unsigned int Height;
  unsigned short Planes;
  unsigned short BitsPerPixel;
  unsigned int Compression;
  unsigned int SizeOfBitmap;
  unsigned int HorzResolution;
  unsigned int VertResolution;
  unsigned int ColorsUsed;
  unsigned int ColorsImportant;
}BMPImageHeader;

typedef struct{
  BMPHeader *file_header;
  BMPImageHeader *image_header;
  unsigned int *colors;
  unsigned char *data;
  unsigned char R[1080][1920];
  unsigned char G[1080][1920];
  unsigned char B[1080][1920];
  unsigned char Y[1080][1920];
  char U[1080][1920];
  char V[1080][1920];
}BMPImage;


int BMP_Read(char *file, int row, int col, unsigned char *R, unsigned char *G, unsigned char *B);


int BMP_Write(char *file, int row, int col, unsigned char *R, unsigned char *G, unsigned char *B);


int WriteGrey(char *file, int row, int col, unsigned char *R);
# 41 "C:/Users/Luca/Desktop/ProgettoVivado/OV_7670/HLS_COMMON/FILTERS/Configurable_Convolution_Filter/ap_bmp.cpp" 2



FILE *BMP_InputOpen(char *name){
  FILE *bmp_file = fopen(name,"rb");
  if(!bmp_file){
    printf("ERROR: could not open $s for reading\n",name);
  }
  else
    return bmp_file;
}


FILE *BMP_OutputOpen(char *name){
  FILE *bmp_file = fopen(name,"wb");
  if(!bmp_file){
    printf("ERROR: could not open $s for writing\n",name);
  }
  else
    return bmp_file;
}


int BMP_Close(FILE *bmp_file){
  if(bmp_file){
    fclose(bmp_file);
    return 0;
  }
  else{
    printf("ERROR: could not close $s\n",bmp_file);
    return 1;
  }
}


int BMP_Read_FileHeader(FILE *bmp_file, BMPHeader *file_header){
  if(!bmp_file){
    printf("ERROR: Can't read the image file\n");
    return 1;
  }

  if(!fread(file_header,1,14,bmp_file)){
    printf("ERROR: Failed to read the image file header \n");
    return 1;
  }
  else
    return 0;
}


int BMP_Read_ImageHeader(FILE *bmp_file, BMPImageHeader *image_header){
  if(!bmp_file){
    printf("ERROR: Can't read the image file\n");
    return 1;
  }

  if(!fread(image_header,1,40,bmp_file)){
    printf("ERROR: Failed to read the image data header \n");
    return 1;
  }
  else
    return 0;
}


int BMP_Read_Image(FILE *bmp_file, unsigned char *data, int size){
   if(!bmp_file){
    printf("ERROR: Can't read the image file\n");
    return 1;
  }

   if(!fread(data,1,size,bmp_file)){
      printf("ERROR: Can't read the image data\n");
    return 1;
   }
   else{
     return 0;
   }
}


BMPImage *BMP_CreateBlank(void){
  BMPImage *bitmap = __null;
  BMPHeader *file_header = __null;
  BMPImageHeader *image_header = __null;

  unsigned char *data;

  file_header = (BMPHeader *) calloc(sizeof(BMPHeader),1);
  if(!file_header){
    printf("ERROR: Can't create file header in blank BMP\n");
    return __null;
  }

  image_header = (BMPImageHeader *) calloc(sizeof(BMPImageHeader),1);
  if(!image_header){
    printf("ERROR: Can't create image header in blank BMP\n");
    if(file_header) free(file_header);
    return __null;
  }

  bitmap = (BMPImage *) malloc(sizeof(BMPImage));
  if(!bitmap){
    printf("ERROR: Can't create image data in blank BMP\n");
    if(file_header) free(file_header);
    if(image_header) free(image_header);
    return __null;
  }

  data = (unsigned char *) malloc(1920*1080*3);
  if(!data){
    printf("ERROR: Allocate image temp space\n");
    if(file_header) free(file_header);
    if(image_header) free(image_header);
    if(bitmap) free(bitmap);
    return __null;
  }

  bitmap->file_header = file_header;
  bitmap->image_header = image_header;
  bitmap->data = data;


  int i, j;
  for(i = 0; i < 1080; i++){
    for(j= 0; j < 1920; j++){
      bitmap->R[i][j]=0;
      bitmap->G[i][j]=0;
      bitmap->B[i][j]=0;
      bitmap->Y[i][j]=0;
      bitmap->U[i][j]=0;
      bitmap->V[i][j]=0;
    }
  }

  return bitmap;
}


void BMP_Delete(BMPImage *bitmap)
{
  if(bitmap){
    if(bitmap->file_header) free(bitmap->file_header);
    if(bitmap->image_header) free(bitmap->image_header);
    if(bitmap->data) free(bitmap->data);
    free(bitmap);
  }
}



int BMP_Read(char *file, int row, int col, unsigned char *R, unsigned char *G, unsigned char *B){
  BMPHeader *file_header = __null;
  BMPImageHeader *image_header = __null;
  unsigned char *image_data = __null;

  FILE *bmp_file = __null;

  int file_open;

  bmp_file = BMP_InputOpen(file);

  if(!bmp_file){
    printf("ERROR: Can't open file %s\n",file);
    return 1;
  }

  file_header = (BMPHeader *)malloc(sizeof(BMPHeader));
  if(!file_header){
      printf("ERROR: Can't allocate memory for file header\n");
    return 1;
  }

  image_header = (BMPImageHeader *)malloc(sizeof(BMPImageHeader));
  if(!image_header){
      printf("ERROR: Can't allocate memory for image header\n");
      if(file_header) free(file_header);
    return 1;
  }

  int header_read;
  header_read = BMP_Read_FileHeader(bmp_file,file_header);

  if(header_read){
    printf("ERROR: Can't read the image header\n");
    if(file_header) free(file_header);
    if(image_header) free(image_header);
    return 1;
  }

  int img_header_read;

  img_header_read = BMP_Read_ImageHeader(bmp_file,image_header);
  if(img_header_read){
    printf("ERROR: Can't read the data header\n");
    if(file_header) free(file_header);
    if(image_header) free(image_header);
    return 1;
  }


  image_data = (unsigned char *)malloc(image_header->Height * image_header->Width * 3);
  if(!image_data){
    printf("ERROR: Can't allocate memory for the image\n");
    if(file_header) free(file_header);
    if(image_header) free(image_header);
    return 1;
  }

  int img_data_read;

  img_data_read = BMP_Read_Image(bmp_file,image_data,(image_header->Height*image_header->Width*3));
  if(img_data_read){
    printf("ERROR: Can't read the image data\n");
    if(file_header) free(file_header);
    if(image_header) free(image_header);
    if(image_data) free(image_data);
    return 1;
  }

  if(row != (int)image_header->Height){
    printf("ERROR: file image height %i different from requested height %i\n",image_header->Height,row);
    if(file_header) free(file_header);
    if(image_header) free(image_header);
    if(image_data) free(image_data);
    return 1;
  }

  if(col != (int)image_header->Width){
    printf("ERROR: file image height %i different from requested height %i\n",image_header->Width,col);
    if(file_header) free(file_header);
    if(image_header) free(image_header);
    if(image_data) free(image_data);
    return 1;
  }

  unsigned char *tmp = image_data;


  int i, j;
  for(i=0; i < row; i++){
    for(j=0; j < col; j++){
      unsigned char r_temp, b_temp, g_temp;

      b_temp = *tmp++;
      g_temp = *tmp++;
      r_temp = *tmp++;



      R[(row-1-i)*col+j] = r_temp;
      G[(row-1-i)*col+j] = g_temp;
      B[(row-1-i)*col+j] = b_temp;
    }
  }

  BMP_Close(bmp_file);

  if(file_header) free(file_header);
  if(image_header) free(image_header);
  if(image_data) free(image_data);

  return 0;
}


int BMP_Write(char *file, int row, int col, unsigned char *R, unsigned char *G, unsigned char *B)
{
  BMPImage *bitmap = __null;
  FILE *output_image;
  unsigned char *data;

  bitmap = BMP_CreateBlank();
  if(!bitmap){
    printf("ERROR: Can't create image for output file\n");
    return 1;
  }

  bitmap->file_header->FileType = 19778;
  bitmap->file_header->FileSize = 0;
  bitmap->file_header->Reserved1 = 0;
  bitmap->file_header->Reserved2 = 0;
  bitmap->file_header->Offset = 54;

  bitmap->image_header->Size = 40;
  bitmap->image_header->Width = col;
  bitmap->image_header->Height = row;
  bitmap->image_header->Planes = 1;
  bitmap->image_header->BitsPerPixel = 24;
  bitmap->image_header->Compression = 0;
  bitmap->image_header->SizeOfBitmap = 3*row*col;
  bitmap->image_header->HorzResolution = 2835;
  bitmap->image_header->VertResolution = 2835;
  bitmap->image_header->ColorsUsed = 0;
  bitmap->image_header->ColorsImportant = 0;

  data = bitmap->data;


  int i, j;
  for(i = 0; i < row; i++){
    for(j=0; j < col; j++){
      unsigned char r_temp, g_temp, b_temp;

      r_temp = R[(row-1-i)*col+j];
      g_temp = G[(row-1-i)*col+j];
      b_temp = B[(row-1-i)*col+j];



      *data++ = b_temp;
      *data++ = g_temp;
      *data++ = r_temp;
    }
  }

  output_image = fopen(file,"wb");
  if(!output_image){
    printf("ERROR: Can't open %s for writing\n",file);
    BMP_Delete(bitmap);
    return 1;
  }

  fwrite(&bitmap->file_header->FileType,1,2,output_image);
  fwrite(&bitmap->file_header->FileSize,1,4,output_image);
  fwrite(&bitmap->file_header->Reserved1,1,2,output_image);
  fwrite(&bitmap->file_header->Reserved2,1,2,output_image);
  fwrite(&bitmap->file_header->Offset,1,4,output_image);

  fwrite(&bitmap->image_header->Size,1,4,output_image);
  fwrite(&bitmap->image_header->Width,1,4,output_image);
  fwrite(&bitmap->image_header->Height,1,4,output_image);
  fwrite(&bitmap->image_header->Planes,1,2,output_image);
  fwrite(&bitmap->image_header->BitsPerPixel,1,2,output_image);
  fwrite(&bitmap->image_header->Compression,1,4,output_image);
  fwrite(&bitmap->image_header->SizeOfBitmap,1,4,output_image);
  fwrite(&bitmap->image_header->HorzResolution,1,4,output_image);
  fwrite(&bitmap->image_header->VertResolution,1,4,output_image);
  fwrite(&bitmap->image_header->ColorsUsed,1,4,output_image);
  fwrite(&bitmap->image_header->ColorsImportant,1,4,output_image);

  fwrite(bitmap->data,1,bitmap->image_header->Height*bitmap->image_header->Width*3,output_image);

  fclose(output_image);
  BMP_Delete(bitmap);

  return 0;
}







int WriteGrey(char *file, int row, int col, unsigned char *R)
{
  BMPImage *bitmap = __null;
  FILE *output_image;
  unsigned char *data;

  bitmap = BMP_CreateBlank();
  if(!bitmap){
    printf("ERROR: Can't create image for output file\n");
    return 1;
  }

  bitmap->file_header->FileType = 19778;
  bitmap->file_header->FileSize = 0;
  bitmap->file_header->Reserved1 = 0;
  bitmap->file_header->Reserved2 = 0;
  bitmap->file_header->Offset = 54;

  bitmap->image_header->Size = 40;
  bitmap->image_header->Width = col;
  bitmap->image_header->Height = row;
  bitmap->image_header->Planes = 1;

  bitmap->image_header->BitsPerPixel = 8;
  bitmap->image_header->Compression = 0;

  bitmap->image_header->SizeOfBitmap = 1*row*col;
  bitmap->image_header->HorzResolution = 2835;
  bitmap->image_header->VertResolution = 2835;
  bitmap->image_header->ColorsUsed = 0;
  bitmap->image_header->ColorsImportant = 0;

  data = bitmap->data;


  int i, j;
  for(i = 0; i < row; i++){
    for(j=0; j < col; j++){
      unsigned char r_temp, g_temp, b_temp;

      r_temp = R[(row-1-i)*col+j];







      *data++ = r_temp;
    }
  }

  output_image = fopen(file,"wb");
  if(!output_image){
    printf("ERROR: Can't open %s for writing\n",file);
    BMP_Delete(bitmap);
    return 1;
  }

  fwrite(&bitmap->file_header->FileType,1,2,output_image);
  fwrite(&bitmap->file_header->FileSize,1,4,output_image);
  fwrite(&bitmap->file_header->Reserved1,1,2,output_image);
  fwrite(&bitmap->file_header->Reserved2,1,2,output_image);
  fwrite(&bitmap->file_header->Offset,1,4,output_image);

  fwrite(&bitmap->image_header->Size,1,4,output_image);
  fwrite(&bitmap->image_header->Width,1,4,output_image);
  fwrite(&bitmap->image_header->Height,1,4,output_image);
  fwrite(&bitmap->image_header->Planes,1,2,output_image);
  fwrite(&bitmap->image_header->BitsPerPixel,1,2,output_image);
  fwrite(&bitmap->image_header->Compression,1,4,output_image);
  fwrite(&bitmap->image_header->SizeOfBitmap,1,4,output_image);
  fwrite(&bitmap->image_header->HorzResolution,1,4,output_image);
  fwrite(&bitmap->image_header->VertResolution,1,4,output_image);
  fwrite(&bitmap->image_header->ColorsUsed,1,4,output_image);
  fwrite(&bitmap->image_header->ColorsImportant,1,4,output_image);


  fwrite(bitmap->data,1,bitmap->image_header->Height*bitmap->image_header->Width*1,output_image);

  fclose(output_image);
  BMP_Delete(bitmap);

  return 0;
}
