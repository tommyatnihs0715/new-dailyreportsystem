package models.validators;

import java.util.ArrayList;
import java.util.List;

import models.Report;

public class ReportValidator {
    public static List<String> validate(Report r) {
        List<String> errors = new ArrayList<String>();

        String title_error = _validateTitle(r.getTitle());
        if(!title_error.equals("")) {
            errors.add(title_error);
        }

        String performance_error = _validatePerformance(r.getPerformance());
        if(!performance_error.equals("")) {
            errors.add(performance_error);
        }

        String impression_error = _validateImpression(r.getImpression());
        if(!impression_error.equals("")) {
            errors.add(impression_error);
        }

        return errors;
    }

    private static String _validateTitle(String title) {
        if(title == null || title.equals("")) {
            return "タイトルを入力してください。";
            }

        return "";
    }

    private static String _validatePerformance(String performance) {
        if(performance == null || performance.equals("")) {
            return "実績を入力してください。";
            }

        return "";
    }

    private static String _validateImpression(String impression) {
        if(impression == null || impression.equals("")) {
            return "今日の学び/感想を入力してください。";
            }

        return "";
    }

}