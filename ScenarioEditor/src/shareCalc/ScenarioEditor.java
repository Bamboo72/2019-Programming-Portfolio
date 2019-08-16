package shareCalc;

import javax.swing.*;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class ScenarioEditor extends JFrame {

    int num = 1;
    String stateCode = "NY";
    LawSummary lawSummary;

    JTable jTable;
    java.util.List<LawScenario> scenarioList;
    Map<Integer, Integer> scenarioCodeMap;

    private Connection connection;
    private HeaderPanel headerPanel;
    private CenterPanel centerPanel;
    private FooterPanel footerPanel;

    public static void main(String[] args) {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/ais", "root", "Bamb0027");
            new ScenarioEditor(connection);
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }


    public ScenarioEditor(Connection connection) throws Exception {
        super();
        this.connection = connection;
        Container pane = getContentPane();
        pane.setLayout(new BorderLayout());

        headerPanel = new HeaderPanel();
        pane.add(headerPanel, BorderLayout.NORTH);

        centerPanel = new CenterPanel();
        pane.add(centerPanel, BorderLayout.CENTER);

        footerPanel = new FooterPanel();
        pane.add(footerPanel, BorderLayout.SOUTH);

        setTitle("Scenario Tables");
        setSize(1000, 500);
        setLocation(100, 100);
        setVisible(true);
    }

    private class HeaderPanel extends JPanel {
        private HeaderPanel() throws Exception {

            super(new GridBagLayout());
            GridBagConstraints c = new GridBagConstraints(0, 0, 1, 1, 1.0, 1.0,
                    GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(10,
                    10, 10, 10), 0, 0);

//            c.weightx = 100.0;
//            add(Box.createHorizontalBox());
//            c.gridx++;
//            c.weightx = 1.0;

            TitlePanel titlePanel = new TitlePanel();
            SummaryPanel summaryPanel = new SummaryPanel();
            add(titlePanel, c);
            c.gridy++;
            add(summaryPanel, c);
        }

    }

    private class TitlePanel extends JPanel {
        private TitlePanel() throws Exception {

//            GridBagConstraints c = new GridBagConstraints(0, 0, 1, 1, 1.0, 1.0,
//                    GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(10,
//                    10, 10, 10), 0, 0);

            add(new JLabel("Inheritance Scenarios for "));
            //c.gridx++;


            JComboBox<String> box = new JComboBox();
            box.addItem("NY");
            box.addItem("CA");
            box.setSelectedItem(stateCode);
            //  add(box, c);
            add(box);

            box.addActionListener(new ActionListener() {
                                      @Override
                                      public void actionPerformed(ActionEvent actionEvent) {
                                          stateCode = (String) box.getSelectedItem();
                                          System.out.println(stateCode);
                                          Container pane = getContentPane();

                                          // header
                                          pane.remove(headerPanel);
                                          try {
                                              headerPanel = new HeaderPanel();
                                          } catch (Exception e) {
                                              JOptionPane.showMessageDialog(ScenarioEditor.this, e.getMessage());
                                          }
                                          pane.add(headerPanel, BorderLayout.NORTH);

                                          // center
                                          pane.remove(centerPanel);
                                          try {
                                              centerPanel = new CenterPanel();
                                          } catch (Exception e) {
                                              JOptionPane.showMessageDialog(ScenarioEditor.this, e.getMessage());
                                          }
                                          pane.add(centerPanel, BorderLayout.CENTER);

                                          // footer
                                          pane.remove(footerPanel);
                                          try {
                                              footerPanel = new FooterPanel();
                                          } catch (Exception e) {
                                              JOptionPane.showMessageDialog(ScenarioEditor.this, e.getMessage());
                                          }
                                          pane.add(footerPanel, BorderLayout.SOUTH);
                                          pane.validate();
                                      }
                                  }
            );

        }
    }

    private class SummaryPanel extends JPanel {
        private SummaryPanel() throws Exception {
            lawSummary = LawSummaryManager.fetchForState(connection, stateCode);

            GridBagConstraints c = new GridBagConstraints(0, 1, 1, 1, 1.0, 1.0,
                    GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(10,
                    10, 10, 10), 0, 0);

            c.gridx = 0;
            c.gridy++;

            add(new JLabel("Summary"), c);
            final JTextField summary = new CustomTextField(lawSummary.summary, 300);
            add(summary, c);

            c.gridx++;

            add(new JLabel("Detail"), c);
            final JTextField detail = new CustomTextField(lawSummary.detail, 300);
            add(detail, c);

            summary.getDocument().addDocumentListener(new DocumentListener() {
                @Override
                public void insertUpdate(DocumentEvent documentEvent) {
                    update();
                }

                @Override
                public void removeUpdate(DocumentEvent documentEvent) {
                    update();
                }

                @Override
                public void changedUpdate(DocumentEvent documentEvent) {
                    update();
                }

                private void update() {
                    lawSummary.summary = summary.getText();
                    try {
                        LawSummaryManager.update(connection, lawSummary);
                    } catch (SQLException e) {
                        JOptionPane.showMessageDialog(ScenarioEditor.this, e.getMessage());
                    }
                }
            });
            detail.getDocument().addDocumentListener(new DocumentListener() {
                @Override
                public void insertUpdate(DocumentEvent documentEvent) {
                    update();
                }

                @Override
                public void removeUpdate(DocumentEvent documentEvent) {
                    update();
                }

                @Override
                public void changedUpdate(DocumentEvent documentEvent) {
                    update();
                }

                private void update() {
                    lawSummary.detail = detail.getText();
                    try {
                        LawSummaryManager.update(connection, lawSummary);
                    } catch (SQLException e) {
                        JOptionPane.showMessageDialog(ScenarioEditor.this, e.getMessage());
                    }
                }
            });
        }
    }

    private static class CustomTextField extends JTextField
    {
        private int preferredWidth;

        public CustomTextField(String text, int preferredWidth) {
            super(text);
            this.preferredWidth = preferredWidth;
        }

        @Override
        public Dimension getPreferredSize() {
            Dimension d = super.getPreferredSize();
            d.width = preferredWidth;
            return d;
        }
    }

    private class CenterPanel extends JPanel {

        private CenterPanel() throws Exception {

            scenarioList = LawScenarioManager.fetchForState(connection, stateCode);

            jTable = new JTable(new DefaultTableModel(new Object[]{"Name", "Condition", "Calculation"}, 0));
            add(jTable);

            add(new JScrollPane(jTable));
            jTable.setPreferredSize(new Dimension(700, 300));
            jTable.setPreferredScrollableViewportSize(new Dimension(700, 300));
            jTable.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);
            jTable.setGridColor(Color.darkGray);
            jTable.setBackground(Color.white);

            jTable.getModel().addTableModelListener(new TableModelListener() {
                @Override
                public void tableChanged(TableModelEvent tableModelEvent) {
                    if (tableModelEvent.getType() == TableModelEvent.UPDATE) {
                        int column = tableModelEvent.getColumn();
                        for (int i = tableModelEvent.getFirstRow(); i <= tableModelEvent.getLastRow(); i++) {
                            String value = (String) jTable.getModel().getValueAt(i, column);
                            System.out.println(value);
                            int scenarioCode = scenarioCodeMap.get(i);
                            LawScenario lawScenario = getScenario(scenarioCode);
                            switch (column) {
                                case 0:
                                    lawScenario.name = value;
                                    break;
                                case 1:
                                    lawScenario.condition = value;
                                    break;
                                case 2:
                                    lawScenario.calculation = value;
                                    break;
                            }
                            try {
                                LawScenarioManager.update(connection, lawScenario);
                            } catch (SQLException e) {
                                JOptionPane.showMessageDialog(ScenarioEditor.this, e.getMessage());

                            }
                        }
                    }
                }
            });


            scenarioCodeMap = new HashMap<>();

            int index = 0;
            for (LawScenario lawscenario : scenarioList) {
                System.out.println(lawscenario.name);


                DefaultTableModel model = (DefaultTableModel) jTable.getModel();
                model.addRow(new Object[]{lawscenario.name, lawscenario.condition, lawscenario.calculation});

                scenarioCodeMap.put(index, lawscenario.scenarioCode);
                index++;
            }
        }
    }

    private class FooterPanel extends JPanel {
        private FooterPanel() throws Exception {

            JComboBox nameBox = new JComboBox();
            final java.util.List<LawScenario> scenarioList = LawScenarioManager.fetchAllScenarios(connection);
            for (LawScenario scenario : scenarioList) {
                if (!ScenarioEditor.this.scenarioList.contains(scenario))
                    nameBox.addItem(scenario.name);
            }

            add(nameBox);

            //Add Button
            JButton addButton = new JButton("Add New Scenario");
            add(addButton);
            addButton.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent actionEvent) {
                    String scenarioName = (String) nameBox.getSelectedItem();
                    if (scenarioName == null) {
                        return;
                    }
                    int scenarioCode = -1;
                    for (LawScenario scenario : scenarioList) {
                        if (scenario.name.equals(scenarioName)) {
                            scenarioCode = scenario.scenarioCode;
                            break;
                        }
                    }
                    int priority = 7;

                    //header
                    Container pane = getContentPane();
                    pane.remove(centerPanel);
                    try {
                        LawScenarioManager.add(connection, stateCode, scenarioCode, priority);
                        centerPanel = new CenterPanel();
                    } catch (Exception e) {
                        JOptionPane.showMessageDialog(ScenarioEditor.this, e.getMessage());
                    }
                    pane.add(centerPanel, BorderLayout.CENTER);
                    pane.validate();
                    //footer
                    pane.remove(footerPanel);
                    try {
                        footerPanel = new FooterPanel();
                    } catch (Exception e) {
                        JOptionPane.showMessageDialog(ScenarioEditor.this, e.getMessage());
                    }
                    pane.add(footerPanel, BorderLayout.SOUTH);
                    pane.validate();
                }
            });

            //Delete Button
            JButton button = new JButton("Delete Selected Scenario");
            add(button);
            button.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent actionEvent) {
                    int selectedRow = jTable.getSelectedRow();
                    if (selectedRow == -1) {
                        return;
                    }
                    int scenarioCode = scenarioCodeMap.get(selectedRow);
                    try {
                        LawScenarioManager.delete(connection, stateCode, scenarioCode);
                    } catch (Exception e) {
                        JOptionPane.showMessageDialog(ScenarioEditor.this, e.getMessage());
                    }
                    //center
                    Container pane = getContentPane();
                    pane.remove(centerPanel);
                    try {
                        centerPanel = new CenterPanel();
                    } catch (Exception e) {
                        JOptionPane.showMessageDialog(ScenarioEditor.this, e.getMessage());
                    }
                    pane.add(centerPanel, BorderLayout.CENTER);
                    pane.validate();
                    //footer
                    pane.remove(footerPanel);
                    try {
                        footerPanel = new FooterPanel();
                    } catch (Exception e) {
                        JOptionPane.showMessageDialog(ScenarioEditor.this, e.getMessage());
                    }
                    pane.add(footerPanel, BorderLayout.SOUTH);
                    pane.validate();
                }
            });


        }

    }

    private LawScenario getScenario(int scenarioCode) {
        for (LawScenario lawScenario : scenarioList) {
            if (lawScenario.scenarioCode == scenarioCode) {
                return lawScenario;
            }
        }
        return null;
    }

}
