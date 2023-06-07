-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('hazemshaalan','hazem01234@gmail.com' , 'hazemshaalan' ,'MOCK'),
  ('hazemshaalan1','hazem012345@outlook.com' , 'hazemshaalan1' ,'MOCK');


INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'hazemshaalan' LIMIT 1),
    'This was imported as seed data for original hazem!',
    current_timestamp + interval '10 day'
  ),
  (
    (SELECT uuid from public.users WHERE users.handle = 'hazemshaalan1' LIMIT 1),
    'I am the other hazem!',
    current_timestamp + interval '10 day'
  );