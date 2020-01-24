#include <stdlib.h>
#include <ruby.h>
#include <ruby/encoding.h>
#include "simdutf8check.h"

static VALUE m_IsItUtf8;

static VALUE
is_it_utf8(int argc, VALUE* argv, VALUE self)
{
  VALUE input;
  const unsigned char* src;
  rb_scan_args(argc, argv, "1", &input);

  if (TYPE(input) != T_STRING) {
    rb_raise(rb_eTypeError, "expected a String");
  }

  src = (unsigned char*) StringValueCStr(input);
  bool is_valid = validate_utf8_fast((const char *) src, RSTRING_LEN(input));

  if(is_valid) {
    return Qtrue;
  } else {
    return Qfalse;
  }
}


void
Init_is_it_utf8() {
  m_IsItUtf8 = rb_define_module("IsItUtf8");
    
  rb_define_module_function(m_IsItUtf8, "valid?", is_it_utf8, -1);
}
