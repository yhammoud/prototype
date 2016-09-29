# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

subjects_codes = ["ACCT", "AE", "AS", "APPH", "ASE", "ARBC", "ARCH", "BIOL", "BMEJ", "BMED", "BMEM", "BC", "CETL", "CHBE", "CHEM", "CHIN", "CP", "CEE", "COA", "COE", "CX", "CSE", "CS", "COOP", "UCGA", "EAS", "ECON", "ECEP", "ECE", "ENGL", "FS", "FREN", "GT", "GTL", "GRMN", "HS", "HIST", "HTS", "ISYE", "ID", "IPCO", "IPIN", "IPFS", "IPSA", "INTA", "IL", "INTN", "IMBA", "JAPN", "KOR", "LS", "LING", "LMC", "MGT", "MOT", "MSE", "MATH", "ME", "MP", "MSL", "MUSI", "NS", "NRE", "PERS", "PHIL", "PHYS", "POL", "PTFE", "DOPP", "PSYC", "PUBP", "PUBJ", "RUSS", "SOC", "SPAN"]
subjects_names = ["Accounting", "Aerospace Engineering", "Air Force Aerospace Studies", "Applied Physiology", "Applied Systems Engineering", "Arabic", "Architecture", "Biology", "Biomed Engr/Joint Emory PKU", "Biomedical Engineering", "Biomedical Engr/Joint Emory", "Building Construction", "Center Enhancement-Teach/Learn", "Chemical & Biomolecular Engr", "Chemistry", "Chinese", "City Planning", "Civil and Environmental Engr", "College of Architecture", "College of Engineering", "Computational Mod, Sim, & Data", "Computational Science & Engr", "Computer Science", "Cooperative Work Assignment", "Cross Enrollment", "Earth and Atmospheric Sciences", "Economics", "Elect & Comp Engr-Professional", "Electrical & Computer Engr", "English", "Foreign Studies", "French", "Georgia Tech", "Georgia Tech Lorraine", "German", "Health Systems", "History", "History, Technology & Society", "Industrial & Systems Engr", "Industrial Design", "Int'l Plan Co-op Abroad", "Int'l Plan Intern Abroad", "Int'l Plan-Exchange Program", "Int'l Plan-Study Abroad", "International Affairs", "International Logistics", "Internship", "Intl Executive MBA", "Japanese", "Korean", "Learning Support", "Linguistics", "Literature, Media & Comm", "Management", "Management of Technology", "Materials Science & Engr", "Mathematics", "Mechanical Engineering", "Medical Physics", "Military Science & Leadership", "Music", "Naval Science", "Nuclear & Radiological Engr", "Persian", "Philosophy", "Physics", "Political Science", "Polymer, Textile and Fiber Eng", "Professional Practice", "Psychology", "Public Policy", "Public Policy/Joint GSU PhD", "Russian", "Sociology", "Spanish"]
arrc = {"1001": "Elementary Arabic I", "1501": "Understand Arab Culture", "2001": "Intermediate Arabic I", "3001": "Advanced Arabic I"}

courses = {"ARBC": {"1001": "Elementary Arabic I", "1501": "Understand Arab Culture", "2001": "Intermediate Arabic I", "3001": "Advanced Arabic I"}, "ENGL": {"0199": "Support for ENGL 1101", "1101": "English Composition I", "1102": "English Composition II"}}

subjects = []
subj_count = subjects_codes.count
(0..subj_count-1).each do |i|
  subjects.push(Subject.create(name: subjects_names[i], code: subjects_codes[i]))
end

