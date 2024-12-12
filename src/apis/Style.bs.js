'use strict';


function pct(num) {
  return num.toString() + "%";
}

function deg(num) {
  return num.toString() + "deg";
}

function rad(num) {
  return num.toString() + "rad";
}

function View_array(prim) {
  return prim;
}

function View_arrayOption(prim) {
  return prim;
}

function View_s(prim) {
  return prim;
}

var View_empty = {};

var View = {
  array: View_array,
  arrayOption: View_arrayOption,
  s: View_s,
  empty: View_empty
};

function Text_array(prim) {
  return prim;
}

function Text_arrayOption(prim) {
  return prim;
}

function Text_s(prim) {
  return prim;
}

var Text_empty = {};

var $$Text = {
  array: Text_array,
  arrayOption: Text_arrayOption,
  s: Text_s,
  empty: Text_empty
};

function Image_array(prim) {
  return prim;
}

function Image_arrayOption(prim) {
  return prim;
}

function Image_s(prim) {
  return prim;
}

var Image_empty = {};

var $$Image = {
  array: Image_array,
  arrayOption: Image_arrayOption,
  s: Image_s,
  empty: Image_empty
};

exports.pct = pct;
exports.deg = deg;
exports.rad = rad;
exports.View = View;
exports.$$Text = $$Text;
exports.$$Image = $$Image;
/* No side effect */
