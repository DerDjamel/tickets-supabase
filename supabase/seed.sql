SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict Ewgusa2nfA6MmsxelQ22dyEJLCYmgtwkbFirdbwz6YBaOdAY8cviH4ux5aWOS5y

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'f39873fa-2f18-4d55-99ed-9ff75ff72c5e', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"derdjamel@gmail.com","user_id":"54962fd5-7656-4166-95b4-091f19f6803e","user_phone":""}}', '2026-10-01 11:24:58.749112+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc8806da-7e51-4b34-a409-faa32b091e09', '{"action":"login","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2026-10-01 15:41:03.818685+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a7623b32-d746-4f0a-a92d-08d72f55b5d6', '{"action":"logout","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"account"}', '2026-10-01 15:46:21.470324+00', ''),
	('00000000-0000-0000-0000-000000000000', '13b269de-7c86-46e6-af4c-9052e194c80b', '{"action":"login","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2026-10-01 15:46:38.051362+00', ''),
	('00000000-0000-0000-0000-000000000000', '87a9233e-04a4-4450-bc00-c41ed34fe68c', '{"action":"logout","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"account"}', '2026-10-01 15:46:40.763387+00', ''),
	('00000000-0000-0000-0000-000000000000', '91366346-b451-4e17-9b1a-aacfcbfb85bf', '{"action":"login","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2026-10-03 12:47:22.28578+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ad2f15e-e2ef-4203-a9e6-186abbc116ed', '{"action":"logout","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"account"}', '2026-10-03 12:49:47.63679+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce90fc4f-31c8-493f-805c-a64801ad48dc', '{"action":"login","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2026-10-03 12:50:00.952612+00', ''),
	('00000000-0000-0000-0000-000000000000', '00c0788f-9464-4fdd-bc43-1b85cf6950d7', '{"action":"logout","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"account"}', '2026-10-03 12:54:30.664724+00', ''),
	('00000000-0000-0000-0000-000000000000', '77df78bc-3bf7-473c-8178-97c6cecb6811', '{"action":"login","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2026-10-03 13:16:02.085058+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec6610b4-2b3d-4e63-a620-1b046f2ab54b', '{"action":"logout","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"account"}', '2026-10-03 13:25:36.328135+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c5dab362-2e76-4479-8107-1019301adcfc', '{"action":"user_recovery_requested","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"user"}', '2026-10-03 13:33:51.044931+00', ''),
	('00000000-0000-0000-0000-000000000000', '832c2876-35bd-4d04-89d2-7c8464d9f0b6', '{"action":"login","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2026-10-03 13:44:12.013115+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a9810e34-3818-4484-b9d9-a2e7c62cccc0', '{"action":"token_refreshed","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"token"}', '2026-10-03 15:09:27.968364+00', ''),
	('00000000-0000-0000-0000-000000000000', '07bc2c8f-0e20-4aa3-a65d-685b48e212ec', '{"action":"token_revoked","actor_id":"54962fd5-7656-4166-95b4-091f19f6803e","actor_username":"derdjamel@gmail.com","actor_via_sso":false,"log_type":"token"}', '2026-10-03 15:09:27.968819+00', '');


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") VALUES
	('1bc895a6-6b87-4593-bf93-3b6b31fdd9eb', '54962fd5-7656-4166-95b4-091f19f6803e', 'd6854104-46c2-494f-b437-da414e37824b', 's256', 'nKZSj3Y0AdTMV0VK-yZxnm2qdLnpzdavUl0cKqlnQBs', 'magiclink', '', '', '2026-10-03 13:33:50.996414+00', '2026-10-03 13:33:50.996414+00', 'magiclink', NULL, NULL, NULL, NULL, NULL, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '54962fd5-7656-4166-95b4-091f19f6803e', 'authenticated', 'authenticated', 'derdjamel@gmail.com', '$2a$10$gzV2yzby6XgRgLSNRtIQMuTY.kZ6xz9ZsYIBSyNHJhaWM5OeRwhOe', '2026-10-01 11:24:58.803345+00', NULL, '', NULL, 'pkce_3eda6d21dc0df2b781dd4f9ffc5a0e236944f224dbd32cf31db2f59e', '2026-10-03 13:33:51.045715+00', '', '', NULL, '2026-10-03 13:44:12.01393+00', '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2026-10-01 11:24:58.746664+00', '2026-10-03 15:09:28.075012+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('54962fd5-7656-4166-95b4-091f19f6803e', '54962fd5-7656-4166-95b4-091f19f6803e', '{"sub": "54962fd5-7656-4166-95b4-091f19f6803e", "email": "derdjamel@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2026-10-01 11:24:58.748188+00', '2026-10-01 11:24:58.748209+00', '2026-10-01 11:24:58.748209+00', 'db701885-f48d-4d56-a953-444fcbdd7ca4');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") VALUES
	('ed3e065d-93f3-47d9-b566-161abd45a91b', '54962fd5-7656-4166-95b4-091f19f6803e', '2026-10-03 13:44:12.013989+00', '2026-10-03 15:09:28.075896+00', NULL, 'aal1', NULL, '2026-10-03 15:09:28.075852', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '172.18.0.1', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('ed3e065d-93f3-47d9-b566-161abd45a91b', '2026-10-03 13:44:12.016168+00', '2026-10-03 13:44:12.016168+00', 'password', 'c02a9666-f8d7-42f5-91c9-93de46640355');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_recovery_code_sets; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_recovery_codes; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at", "expires_at") VALUES
	('d728745a-d1d0-4b5a-8166-90022ad77dac', '54962fd5-7656-4166-95b4-091f19f6803e', 'recovery_token', 'pkce_3eda6d21dc0df2b781dd4f9ffc5a0e236944f224dbd32cf31db2f59e', 'derdjamel@gmail.com', '2026-10-03 13:33:51.140361', '2026-10-03 13:33:51.140361', NULL);


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 6, '6rj6vrru344l', '54962fd5-7656-4166-95b4-091f19f6803e', true, '2026-10-03 13:44:12.015231+00', '2026-10-03 15:09:27.969066+00', NULL, 'ed3e065d-93f3-47d9-b566-161abd45a91b'),
	('00000000-0000-0000-0000-000000000000', 7, '2vbyv6i523gh', '54962fd5-7656-4166-95b4-091f19f6803e', false, '2026-10-03 15:09:28.074299+00', '2026-10-03 15:09:28.074299+00', '6rj6vrru344l', 'ed3e065d-93f3-47d9-b566-161abd45a91b');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: scim_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: scim_users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "full_name", "supabase_user") VALUES
	(1, '2026-10-03 15:48:19.395042+00', 'dermache djamel', '54962fd5-7656-4166-95b4-091f19f6803e');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('packt', '2026-10-03 15:38:05.366218+00', 'Packt Publishing', 'packt.local'),
	('activenode', '2026-10-03 15:38:33.034104+00', 'activenode Education', 'activenode.learn'),
	('oddmonkey', '2026-10-03 15:38:47.07949+00', 'OddMonkey Inc', 'oddmonkey.inc');


--
-- Data for Name: tenant_ permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_ permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2026-10-03 15:52:36.944775+00', 1, 'packt'),
	(2, '2026-10-03 15:52:56.558842+00', 1, 'oddmonkey');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_namespaces; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_tables; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 7, true);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 1, true);


--
-- Name: tenant_ permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_ permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

-- \unrestrict Ewgusa2nfA6MmsxelQ22dyEJLCYmgtwkbFirdbwz6YBaOdAY8cviH4ux5aWOS5y

RESET ALL;
