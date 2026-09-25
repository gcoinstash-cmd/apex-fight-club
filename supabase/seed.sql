-- APEX CLUB: Starter Seed Data for Production Verification

insert into public.trainers (name, role, specialty, rounds, image_url, status)
values
  ('Marcus "Viper" Vance', 'Head Striking Coach & Former WBC Contender', 'Elite Pro Boxing & Defense Footwork', '14,200+ Sparring Rounds Coached', 'https://images.unsplash.com/photo-1581009146145-b5ef050c2e1e?auto=format&fit=crop&w=1200&q=85', 'In Ring'),
  ('Elena Rostova', 'Olympic Strength & Conditioning Director', 'Explosive Power, VO2 Max & Metabolic Conditioning', '10+ Years Elite Athlete Prep', 'https://images.unsplash.com/photo-1517438322307-e67111335449?auto=format&fit=crop&w=1200&q=85', 'Available'),
  ('Darius Thorne', 'Muay Thai & Clinch Warfare Master', 'Dutch Kickboxing & High-Impact Heavy Bag Drills', 'Bangkok Stadium Veteran', 'https://images.unsplash.com/photo-1583473848882-f9a5bc7fd2ee?auto=format&fit=crop&w=1200&q=85', 'Booked');

insert into public.classes (title, coach_name, category, session_time, duration, intensity, spots_total, spots_booked, fee)
values
  ('Pro Fight Conditioning & Mitt Work', 'Marcus "Viper" Vance', 'Boxing', '06:30 AM', '60 min', 'High / Pro Level', 10, 8, 95.00),
  ('Heavy Bag Velocity & Footwork Drills', 'Darius Thorne', 'Striking', '09:00 AM', '50 min', 'High Intensity Interval', 12, 5, 95.00),
  ('Olympic Barbell & Fighter Aerobics', 'Elena Rostova', 'Strength', '12:00 PM', '55 min', 'Strength & Conditioning', 8, 6, 95.00),
  ('Closed-Door Sparring Clinic', 'Marcus "Viper" Vance', 'Sparring', '05:30 PM', '75 min', 'Advanced / Full Sparring (Waiver Required)', 6, 4, 150.00);

insert into public.bookings (booking_code, athlete_name, athlete_email, athlete_phone, session_title, coach_name, session_date, tier, fee, status)
values
  ('APX-7801', 'Julian Sterling', 'j.sterling@sterlingcap.com', '+1 (310) 892-4411', 'Closed-Door Sparring Clinic', 'Marcus "Viper" Vance', 'Today, 05:30 PM', 'Black Card VIP', 150.00, 'Confirmed'),
  ('APX-7802', 'Victoria Vance', 'vvance@atelier-arch.io', '+1 (415) 782-9902', 'Heavy Bag Velocity & Footwork Drills', 'Darius Thorne', 'Tomorrow, 09:00 AM', 'Founding Member', 95.00, 'Confirmed');

insert into public.waivers (waiver_code, athlete_name, emergency_phone, division, verified)
values
  ('WV-991', 'Julian Sterling', '+1 (310) 992-1200', 'Full Contact & Ring Sparring', true);
