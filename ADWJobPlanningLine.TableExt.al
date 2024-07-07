namespace ProjectsQoL.ProjectsQoL;

using Microsoft.Projects.Project.Planning;
using Microsoft.Projects.Project.Job;

tableextension 50100 "ADW Job Planning Line " extends "Job Planning Line"
{
    fields
    {
        field(50100; "ADW Job Task Desc"; Text[100])
        {
            Caption = 'Project Task Description';
            FieldClass = FlowField;
            Editable = false;

            CalcFormula = lookup("Job Task".Description
            where("Job No." = field("Job No."),
            "Job Task No." = field("Job Task No.")));

        }
    }
}
