package shareCalc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class LawSummaryManager {
    public static LawSummary fetchForState(Connection connection, String stateCode) throws SQLException {
        try (Statement statement = connection.createStatement()) {
            try (ResultSet rs = statement.executeQuery(
                    "SELECT STATE_CODE, NAME, SUMMARY, DETAIL, DOCUMENT_LINK, JAVA_CLASS " +
                            "FROM law_summary " +
                            "WHERE STATE_CODE = '" + stateCode + "' "
                            )) {
                if (rs.next()) {
                      return new LawSummary(
                            rs.getString(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                              rs.getString(6));

                }
                return null;
            }
        }
    }
    public static void update(Connection connection, LawSummary lawSummary) throws SQLException{
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate(
                    "update law_summary set summary = '" + lawSummary.summary + "', detail = '" + lawSummary.detail + "', document_link = '" + lawSummary.documentLink + "'" +
                            "where state_code = '" + lawSummary.stateCode + "'"
            );
        }
    }
}
