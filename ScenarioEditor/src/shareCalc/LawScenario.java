package shareCalc;

public class LawScenario {
    public int scenarioCode;
    public String name;
    public String condition;
    public String calculation;
    public String javaClass;

    public LawScenario(int scenarioCode, String name, String condition, String calculation, String javaClass) {
        this.scenarioCode = scenarioCode;
        this.name = name;
        this.condition = condition;
        this.calculation = calculation;
        this.javaClass = javaClass;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof LawScenario) {
            LawScenario lawScenario = (LawScenario)obj;
            return lawScenario.scenarioCode == scenarioCode;
        }
        return false;
    }
}
