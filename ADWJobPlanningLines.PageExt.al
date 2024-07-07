namespace ProjectsQoL.ProjectsQoL;

using Microsoft.Projects.Project.Planning;

pageextension 50101 "ADW Job Planning Lines" extends "Job Planning Lines"
{
    layout
    {
        addafter("Job Task No.")
        {
            field("Job Task Desc"; Rec."ADW Job Task Desc")
            {
                ApplicationArea = all;
                Editable = false;
                DrillDown = false;
            }
        }
    }
}
