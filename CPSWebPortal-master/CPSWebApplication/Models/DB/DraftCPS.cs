//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CPSWebApplication.Models.DB
{
    using System;
    using System.Collections.Generic;
    
    public partial class DraftCPS
    {
        public string StudentID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Academic_Year { get; set; }
        public string Major { get; set; }
        public string FoundationCourseDeatils { get; set; }
        public string CoreCourseDetails { get; set; }
        public string ElectiveCourseDetails { get; set; }
        public string ProgramCompletionType { get; set; }
        public string AssignedFacultyAdvisor { get; set; }
        public string AssignedAcademicAdvisor { get; set; }
        public string IsDraft { get; set; }
        public string IsFinalised { get; set; }
        public string IsActive { get; set; }
        public string IsAudited { get; set; }
        public string LastFinalizeDate { get; set; }
        public string LastDraftDate { get; set; }
        public string IsBlankCreated { get; set; }
        public string BlankCreatedDate { get; set; }
        public string NeedAudit { get; set; }
        public string CompletionCourseDetails { get; set; }
        public string IsSpecialization { get; set; }
        public string SpecializationUnder { get; set; }
        public string NeedModificationForFinal { get; set; }
        public string NeedAuditingAfterModification { get; set; }
        public string AcademicAdvisorSignature { get; set; }
    }
}
