//   CV.ck
//   2015 Ness Morris
//   A class for converting midi pitch (float) and frequency into
//   output gains for CV pitch control of analog synthesizers.
//   Requires a DC-coupled audio interface.

public class CV{
    fun static float mtocv(float p){  // Converts midi pitch to CV output gain
        (p-27.486821)/12=>float n;
        (n*0.2426)-0.9647=>n;
        return n;
    }
    fun static float ftocv(float f){  // Converts frequency to CV output gain
        Std.ftom(f)=>float p;
        return mtocv(p);
    }
}
