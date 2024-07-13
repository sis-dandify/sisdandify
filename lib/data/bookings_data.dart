const String branchLabel = 'SCEGLI LA SEDE';
const String appointmentsLabel = 'PRENOTA IL TUO APPUNTAMENTO';
const String calendarLabel = 'SCEGLI IL GIORNO';
const String assistantsLabel = 'SCEGLI IL TUO ASSISTENTE';
const String hourLabel = 'SCEGLI L\'ORARIO';
const String yourData = 'INSERISCI I TUOI DATI';

var assistants = {
  'Chiara': {'image': 'assets/images/bookings/user-female.svg'},
  'Tania': {'image': 'assets/images/bookings/user-female.svg'},
  'Carmen': {'image': 'assets/images/bookings/user-female.svg'},
};

var hours = {
  '09:30': {'selected': false},
  '10:00': {'selected': false},
  '10:30': {'selected': false},
  '11:00': {'selected': false},
  '11:30': {'selected': false},
  '12:00': {'selected': false},
  '12:30': {'selected': false},
  '16:30': {'selected': false},
  '17:00': {'selected': false},
  '17:30': {'selected': false},
  '18:00': {'selected': false},
  '18:30': {'selected': false},
  '19:00': {'selected': false},
  '19:30': {'selected': false},
  '': {'selected': false}
};
