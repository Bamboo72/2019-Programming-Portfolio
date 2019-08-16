package shareCalc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class LawScenarioManager {
    public static List<LawScenario> fetchForState(Connection connection, String stateCode) throws SQLException {
        try (Statement statement = connection.createStatement()) {
            try (ResultSet rs = statement.executeQuery(
                    "SELECT ls.SCENARIO_CODE, ls.NAME, ls.CONDITION, ls.CALCULATION, ls.JAVA_CLASS " +
                            "FROM law_state_scenario lss " +
                            "JOIN law_scenario ls ON ls.SCENARIO_CODE = lss.SCENARIO_CODE " +
                            "WHERE lss.STATE_CODE = '" + stateCode + "' " +
                            "ORDER BY lss.priority")) {
                List<LawScenario> l = new ArrayList<>();
                while (rs.next()) {
                    l.add(new LawScenario(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5)));
                }
                return l;
            }
        }
    }

    public static List<LawScenario> fetchAllScenarios(Connection connection) throws SQLException {
        try (Statement statement = connection.createStatement()) {
            try (ResultSet rs = statement.executeQuery(
                    "SELECT SCENARIO_CODE, NAME, `CONDITION`, CALCULATION, JAVA_CLASS " +
                            "FROM law_scenario " +
                            "ORDER BY name")) {
                List<LawScenario> l = new ArrayList<>();
                while (rs.next()) {
                    l.add(new LawScenario(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5)));
                }
                return l;
            }
        }
    }

    public static void delete(Connection connection, String stateCode, int scenarioCode) throws SQLException {
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate(
                    "delete from law_state_scenario where state_code = '" + stateCode + "' and scenario_code = " + scenarioCode
            );
        }
    }

    public static void add(Connection connection, String stateCode, int scenarioCode, int priority) throws SQLException {
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate(
                    "insert into law_state_scenario (state_code, scenario_code, priority)" +
                    "values ('" + stateCode + "'," + scenarioCode + "," + priority + ")"
            );
        }
    }

    public static void update(Connection connection, LawScenario lawScenario) throws SQLException{
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate(
                    "update law_scenario set name = '" + lawScenario.name + "', `condition` = '" + lawScenario.condition + "', calculation = '" + lawScenario.calculation + "'" +
                            "where scenario_code = " + lawScenario.scenarioCode
            );
        }
    }
}

