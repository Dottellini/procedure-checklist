#import "checklist.typ": *

#show: checklist.with(
  title: "Cessna 152 Checklist",
  subtitle: "For flight simulation use only",
  paper: "a4",        // "a5" -> automatisch einspaltig und kleiner
  // cols: 2,         // Spaltenzahl manuell überschreiben
  // boxes: true,     // Ankreuzkästchen vor jedem Punkt
  accent: rgb("#1b3a6b"),
  version: "1.0",
  footer: "Cessna 152 - Normal Procedures",
)

#section("Preflight Inspection")[
  #item("Ignition", "OFF")
  #item("Master Switch", "ON")
  #item("Fuel Quantity", "CHECK")
  #item("Flaps", "30°")
  #item("Master Switch", "OFF")
  #item("Weight and Balance", "CHECK")
  #item("Engine and Pitot Covers", "REMOVE")
  #item("Wheel Chocks", "PULLED")
  #item("Outside Inspection", "PERFORM")
]

#section("Before Starting Engine")[
  #item("Preflight Inspection", "COMPLETE")
  #item("Parking Brake", "SET")
  #item("Fuel Shutoff Valve", "ON")
  #item("Radios & Electronic Equipment", "OFF")
  #item("Circuit Breakers", "CHECK IN")
]

#section("Starting the Engine")[
  #item("Mixture", "RICH")
  #item("Carb Heat", "COLD")
  #item("Primer", "AS REQ (up to 3 strokes)")
  #item("Throttle", "OPEN 1/2 inch")
  #item("Master Switch (BAT & ALT)", "ON")
  #item("Beacon", "ON")
  #item("Ignition", "START then BOTH")
  #item("Throttle", "1,000 RPM")
  #item("Oil Pressure", "CHECK")
  #caution[
    Zeigt der Öldruck nicht innerhalb von 30 Sekunden an:
    Triebwerk sofort abstellen.
  ]
  #item("Ammeter", "CHECK")
]

#section("Engine Runup", keep-together: true)[
  #item("Parking Brake", "SET")
  #item("Throttle", "~ 1,700 RPM")
  #item("Magneto Check", "LEFT, RIGHT, BOTH")
  #sub[Max. Drop 125 RPM, max. Differenz 50 RPM]
  #item("Carb Heat Check", "ON, then OFF")
  #note[RPM muss fallen und wieder steigen.]
  #item("Suction Gage", "GREEN RANGE")
  #item("Throttle", "~ 1,000 RPM")
]

// --- Beispiel für einen nummerierten Abschnitt (Stil F-16) ---
#section(
  "Quick Start-Up",
  numbered: true,
  subtitle: "Kurzform, ohne Cold-Start-Details",
)[
  #item("Batt. Switch", "MAIN POWER")
  #item("Parking Brake", "ON")
  #item("Jet Fuel Starter", "START 2")
  #item("Internal & External Lights", "AS NEEDED")
  #item("Canopy", "Closed, Sealed & Locked")
  #item("ENG", "IDLE at 20% RPM")
  #warn[Weiter erst, wenn ENG RPM 65 % erreicht hat.]
  #item("Altimeter", "ELEC")
  #item("Avionics", "ALL ON, INS NORM")
  #item("Ejection Seat", "ARMED")
]

#section("Emergency - Engine Failure", color: rgb("#c0202a"))[
  #item("Airspeed", "65 KIAS")
  #item("Mixture", "IDLE CUTOFF")
  #item("Fuel Shutoff Valve", "OFF")
  #item("Ignition", "OFF")
  #item("Master Switch", "OFF")
  #item("Flaps", "AS REQUIRED")
]
