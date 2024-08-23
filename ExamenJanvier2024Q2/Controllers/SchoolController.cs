using ExamenJanvier2024Q2.DTO;
using ExamenJanvier2024Q2.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace ExamenJanvier2024Q2.Controllers
{
    [ApiController]
    [Route("[Controller]")]
    public class SchoolController: ControllerBase
    {
        private List<StudentDTO> studentList = new List<StudentDTO>();
        private SchoolContext context = new SchoolContext();
        public SchoolController()
        {
            foreach (Student i in context.Students)
            {
                studentList.Add(new StudentDTO(i));
            }
        }

        [HttpGet]
        public IList<StudentDTO> GetStudents()
        {
            return studentList ;
        }

        [HttpPost]
        public StudentDTO AddStudent([FromBody] StudentDTO studentDto)
        {
            // Conversion DTO vers Student entity
            var student = DTOToStudent(studentDto);

            // Ajout à la base de données
            context.Students.Add(student);
            context.SaveChanges();

            return studentDto;  // Retourne l'objet DTO
        }

        private Student DTOToStudent(StudentDTO student)
        {
            Section section = context.Sections.SingleOrDefault(x => x.Name.Equals(student.SectionName));

            if (section == null)
            {
                throw new Exception($"Section not found: {student.SectionName}"); // Vérifiez si la section existe
            }

            return new Student()
            {
                Firstname = student.FirstName,
                Name = student.LastName,
                Section = section
            };
        }

    }
}
