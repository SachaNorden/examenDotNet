using ExamenJanvier2024Q2.Models;
using System.Text.Json.Serialization;

namespace ExamenJanvier2024Q2.DTO
{
    public class StudentDTO
    {
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string SectionName { get; set; }

        // Retirez le constructeur avec paramètre
        public StudentDTO()
        {
        }

        // Constructeur pour conversion depuis Student, si nécessaire
        public StudentDTO(Student student)
        {
            LastName = student.Name;
            FirstName = student.Firstname;
            SectionName = student.Section?.Name ?? "Aucune Section";
        }
    }
}
