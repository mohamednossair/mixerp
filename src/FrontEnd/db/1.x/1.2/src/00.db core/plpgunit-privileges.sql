REVOKE ALL ON SCHEMA assert FROM public;
REVOKE ALL ON SCHEMA unit_tests FROM public;

GRANT USAGE ON SCHEMA assert TO mix_erp;
GRANT USAGE ON SCHEMA unit_tests TO mix_erp;

ALTER DEFAULT PRIVILEGES IN SCHEMA assert GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO mix_erp;
ALTER DEFAULT PRIVILEGES IN SCHEMA unit_tests GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO mix_erp;

ALTER DEFAULT PRIVILEGES IN SCHEMA assert GRANT ALL ON SEQUENCES TO mix_erp;
ALTER DEFAULT PRIVILEGES IN SCHEMA unit_tests GRANT ALL ON SEQUENCES TO mix_erp;

ALTER DEFAULT PRIVILEGES IN SCHEMA assert GRANT EXECUTE ON FUNCTIONS TO mix_erp;
ALTER DEFAULT PRIVILEGES IN SCHEMA unit_tests GRANT EXECUTE ON FUNCTIONS TO mix_erp;

GRANT ALL PRIVILEGES ON SCHEMA unit_tests TO mix_erp;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA unit_tests TO mix_erp;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA unit_tests TO mix_erp;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA unit_tests TO mix_erp;
