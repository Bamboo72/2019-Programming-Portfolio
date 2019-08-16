package shareCalc;

public class LawSummary {
    public String stateCode;
    public String name;
    public String summary;
    public String detail;
    public String documentLink;
    public String javaClass;

    public LawSummary(String stateCode, String name, String summary, String detail, String documentLink, String javaClass) {
        this.stateCode = stateCode;
        this.name = name;
        this.summary = summary;
        this.detail = detail;
        this.documentLink = documentLink;
        this.javaClass = javaClass;
    }
}

