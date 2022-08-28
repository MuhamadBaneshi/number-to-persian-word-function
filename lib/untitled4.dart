int calculate() {
  return 6 * 7;
}

class NumberToWord {
  String convert(String aOut, int aIn) {
    var one = [
      ' صفر',
      ' یک',
      ' دو',
      ' سه',
      ' چهار',
      ' پنج',
      ' شش',
      ' هفت',
      ' هشت',
      ' نه',
      ' ده',
      ' یازده',
      ' دوازده',
      ' سیزده',
      ' چهارده',
      ' پانزده',
      ' شانزده',
      ' هفده',
      ' هجده',
      ' نوزده'
    ];

    var three = [
      ' بیست',
      ' سی',
      ' چهل',
      ' پنجاه',
      ' شصت',
      ' هفتاد',
      ' هشتاد',
      ' نود'
    ];
    var four = [
      ' یکصد',
      ' دویست',
      ' سیصد',
      ' چهارصد',
      ' پانصد',
      ' ششصد',
      ' هفتصد',
      ' هشتصد',
      ' نهصد'
    ];
    var five = [
      ' هزار',
      ' میلیون',
      ' میلیارد',
      ' تریلیون',
      ' کادریلیون',
      ' کوینتریلیون',
      ' سکستریلیون',
      ' سپتریلیون',
      ' اکتریلیون',
      ' نونیلیون',
      ' دسیلیون'
    ];
    var six = [' و'];

    String aOut = '';
    final int a = aIn;

    var aLen = a.toString().length;
    if (aLen == 1) {
      aOut = one[a];
    } else if (aLen == 2 && a <= 19) {
      aOut = one[a];
    } else if (aLen == 2 && a >= 20) {
      int b = (a / 10).floor();
      int v = (a % 10).floor();
      if (v != 0) {
        aOut = three[b - 2] + six[0];
      } else {
        aOut = three[b - 2];
      }
      if (a % 10 != 0) {
        aOut = aOut + one[a % 10];
      }
    } else if (aLen == 3) {
      int c = (a / 100).floor();
      int v2 = (a % 100).floor();
      if (v2 != 0) {
        aOut = four[c - 1] + six[0];
      } else {
        aOut = four[c - 1];
      }

      int d = (a % 100).floor();

      var dLen = d.toString().length;
      if (dLen == 1 && d != 0) {
        aOut = aOut + one[d];
      } else if (dLen == 2 && d <= 19) {
        aOut = aOut + one[d];
      } else if (dLen == 2 && d >= 20) {
        int e = (d / 10).floor();
        int v3 = (d % 10).floor();
        if (v3 != 0) {
          aOut = aOut + three[e - 2] + six[0];
        } else {
          aOut = aOut + three[e - 2];
        }

        if (d % 10 != 0) {
          aOut = aOut + one[d % 10];
        }
      }
    } else if (aLen == 4 || aLen == 5 || aLen == 6) {
      int q = (a / 1000).floor();
      var qLen = q.toString().length;
      if (q != 0) {
        if (qLen == 3) {
          int c = (q / 100).floor();
          int vvv8 = (q % 100).floor();
          if (vvv8 != 0) {
            aOut = aOut + four[c - 1] + six[0];
          } else {
            aOut = aOut + four[c - 1];
          }
        }
        int w = (q % 100).floor();
        var wLen = w.toString().length;

        if (wLen == 1 && w != 0) {
          aOut = aOut + one[w];
        } else if (wLen == 2 && w <= 19) {
          aOut = aOut + one[w];
        } else if (wLen == 2 && w >= 20) {
          int e = (w / 10).floor();
          int vv3 = (w % 10).floor();
          if (vv3 != 0) {
            aOut = aOut + three[e - 2] + six[0];
          } else {
            aOut = aOut + three[e - 2];
          }
          if (w % 10 != 0) {
            aOut = aOut + one[w % 10];
          }
        }
      }
      int v4 = (a % 1000).floor();
      if (v4 != 0) {
        aOut = aOut + five[0] + six[0];
      } else {
        aOut = aOut + five[0];
      }

      int g = (a % 1000).floor();
      var gLen = g.toString().length;
      if (g != 0) {
        if (gLen == 3) {
          int c = (g / 100).floor();
          int v5 = (g % 100).floor();
          if (v5 != 0) {
            aOut = aOut + four[c - 1] + six[0];
          } else {
            aOut = aOut + four[c - 1];
          }
        }
        int d = (a % 100).floor();
        var dLen = d.toString().length;

        if (dLen == 1 && d != 0) {
          aOut = aOut + one[d];
        } else if (dLen == 2 && d <= 19) {
          aOut = aOut + one[d];
        } else if (dLen == 2 && d >= 20) {
          int e = (d / 10).floor();
          int v6 = (d % 10).floor();
          if (v6 != 0) {
            aOut = aOut + three[e - 2] + six[0];
          } else {
            aOut = aOut + three[e - 2];
          }

          if (d % 10 != 0) {
            aOut = aOut + one[d % 10];
          }
        }
      }
    } else if (aLen == 7 || aLen == 8 || aLen == 9) {
      int z = (a / 1000000).floor();
      var zLen = z.toString().length;
      if (z != 0) {
        if (zLen == 3) {
          int c = (z / 100).floor();
          int vv8 = (z % 100).floor();
          if (vv8 != 0) {
            aOut = aOut + four[c - 1] + six[0];
          } else {
            aOut = aOut + four[c - 1];
          }
        }
        int y = (z % 100).floor();
        var yLen = y.toString().length;

        if (yLen == 1 && y != 0) {
          aOut = aOut + one[y];
        } else if (yLen == 2 && y <= 19) {
          aOut = aOut + one[y];
        } else if (yLen == 2 && y >= 20) {
          int e = (y / 10).floor();
          int vv6 = (y % 10).floor();
          if (vv6 != 0) {
            aOut = aOut + three[e - 2] + six[0];
          } else {
            aOut = aOut + three[e - 2];
          }
          if (y % 10 != 0) {
            aOut = aOut + one[y % 10];
          }
        }
      }
      int v7 = (a % 1000000).floor();
      if (v7 != 0) {
        aOut = aOut + five[1] + six[0];
      } else {
        aOut = aOut + five[1];
      }

      int qq = (a / 1000).floor();
      int bb = (qq % 1000).floor();
      var bbLen = bb.toString().length;
      if (bb != 0) {
        if (bbLen == 3) {
          int cc = (bb / 100).floor();
          int v8 = (bb % 100).floor();
          if (v8 != 0) {
            aOut = aOut + four[cc - 1] + six[0];
          } else {
            aOut = aOut + four[cc - 1];
          }
        }
        int ww = (bb % 100).floor();
        var wwLen = ww.toString().length;

        if (wwLen == 1 && ww != 0) {
          aOut = aOut + one[ww];
        } else if (wwLen == 2 && ww <= 19) {
          aOut = aOut + one[ww];
        } else if (wwLen == 2 && ww >= 20) {
          int ee = (ww / 10).floor();
          int v9 = (ww % 10).floor();
          if (v9 != 0) {
            aOut = aOut + three[ee - 2] + six[0];
          } else {
            aOut = aOut + three[ee - 2];
          }

          if (ww % 10 != 0) {
            aOut = aOut + one[ww % 10];
          }
        }
        int v10 = (a % 1000);
        if (v10 != 0) {
          aOut = aOut + five[0] + six[0];
        } else {
          aOut = aOut + five[0];
        }
      }

      int gg = (a % 1000).floor();
      var ggLen = gg.toString().length;
      if (gg != 0) {
        if (ggLen == 3) {
          int ccc = (gg / 100).floor();
          int v11 = (gg % 100).floor();
          if (v11 != 0) {
            aOut = aOut + four[ccc - 1] + six[0];
          } else {
            aOut = aOut + four[ccc - 1];
          }
        }
        int dd = (a % 100).floor();
        var ddLen = dd.toString().length;

        if (ddLen == 1 && dd != 0) {
          aOut = aOut + one[dd];
        } else if (ddLen == 2 && dd <= 19) {
          aOut = aOut + one[dd];
        } else if (ddLen == 2 && dd >= 20) {
          int eee = (dd / 10).floor();
          int v12 = (dd % 10).floor();
          if (v12 != 0) {
            aOut = aOut + three[eee - 2] + six[0];
          } else {
            aOut = aOut + three[eee - 2];
          }

          if (dd % 10 != 0) {
            aOut = aOut + one[dd % 10];
          }
        }
      }
    }

    return aOut;
  }
}
