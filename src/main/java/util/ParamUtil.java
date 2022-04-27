package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

    /**
     * ポイント計算
     */
	public static int getPoint(int point) {
		double res = 0;
		res = (double)point * 0.01;
		
		return (int)res;
	}
	
    /**
     * ポイント計算(ランクあり)
     */
	public static int getPoint(int point, int rank) {
		double res = 0;
		
		if(rank == 1) {
			res = (double)point * 0.02;
		}else if(rank == 2) {
			res = (double)point * 0.03;
		}
		return (int)res;
		
	}


    /**
     * 引数に指定した文字列がnull、または空文字かを判定
     */
	public static boolean isNullOrEmpty(String str) {
        // todo:引数の値がnull、または空文字の場合は、true
        // それ以外の場合は、falseを返すように処理を修正する
    	if(str.isEmpty() || str == null) {
    		return true;
    	}
    	
        return false;
    }

}
