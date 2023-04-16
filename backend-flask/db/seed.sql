
-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('hazemshaalan','hazem01234@gmail.com' , 'hazemshaalan' ,'MOCK'),
  ('beso','hazem012345@outlook.com' , 'beso' ,'MOCK'),
  ('sama','h.hesham@audioteceg.com' ,'sama' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'andrewbrown' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )