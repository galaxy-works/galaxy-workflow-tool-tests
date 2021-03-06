
galaxy-workflow-tool-tests
---------------------------

A simple wrapper around Galaxy_'s galaxy-tool-test that runs tool tests for all the tools in a workflow.

------------------
Minimal Usage:
------------------

::

   pip install galaxy-workflow-tool-tests
   galaxy-workflow-tool-tests  -k <api_key> -u http://localhost:8080/ <encoded_workflow_id>


----------------
Program Help
----------------


::

    $ galaxy-workflow-tool-tests --help
    usage: galaxy-workflow-tool-tests [-h] [-u GALAXY_URL] [-k KEY] [-a ADMIN_KEY]
                                      [--force_path_paste] [-t TOOL_ID]
                                      [--tool-version TOOL_VERSION]
                                      [-i TEST_INDEX] [-o OUTPUT] [--append]
                                      [--skip-previously-executed | --skip-previously-successful]
                                      [-j OUTPUT_JSON] [--verbose]
                                      [-c CLIENT_TEST_CONFIG]
                                      [--suite-name SUITE_NAME]
                                      [--with-reference-data]
                                      [--skip-with-reference-data]
                                      [--history-per-suite | --history-per-test-case]
                                      [--no-history-cleanup] [--publish-history]
                                      [--parallel-tests PARALLEL_TESTS]
                                      [--retries RETRIES] [--page-size PAGE_SIZE]
                                      [--page-number PAGE_NUMBER]
                                      [--download-attempts DOWNLOAD_ATTEMPTS]
                                      [--download-sleep DOWNLOAD_SLEEP]
                                      [--test-data TEST_DATA]
                                      WORKFLOW_ID

    Script to quickly run a tool test against a running Galaxy instance.

    positional arguments:
      WORKFLOW_ID           workflow id to scan for tools

    optional arguments:
      -h, --help            show this help message and exit
      -u GALAXY_URL, --galaxy-url GALAXY_URL
                            Galaxy URL
      -k KEY, --key KEY     Galaxy User API Key
      -a ADMIN_KEY, --admin-key ADMIN_KEY
                            Galaxy Admin API Key
      --force_path_paste    This requires Galaxy-side config option
                            "allow_path_paste" enabled. Allows for fetching test
                            data locally. Only for admins.
      -t TOOL_ID, --tool-id TOOL_ID
                            Tool ID
      --tool-version TOOL_VERSION
                            Tool Version (if tool id supplied). Defaults to just
                            latest version, use * to test all versions
      -i TEST_INDEX, --test-index TEST_INDEX
                            Tool Test Index (starting at 0) - by default all tests
                            will run.
      -o OUTPUT, --output OUTPUT
                            directory to dump outputs to
      --append              Extend a test record json (created with --output-json)
                            with additional tests.
      --skip-previously-executed
                            When used with --append, skip any test previously
                            executed.
      --skip-previously-successful
                            When used with --append, skip any test previously
                            executed successfully.
      -j OUTPUT_JSON, --output-json OUTPUT_JSON
                            output metadata json
      --verbose             Verbose logging.
      -c CLIENT_TEST_CONFIG, --client-test-config CLIENT_TEST_CONFIG
                            Test config YAML to help with client testing
      --suite-name SUITE_NAME
                            Suite name for tool test output
      --with-reference-data
      --skip-with-reference-data
                            Skip tests the Galaxy server believes use data tables
                            or loc files.
      --history-per-suite   Create new history per test suite (all tests in same
                            history).
      --history-per-test-case
                            Create new history per test case.
      --no-history-cleanup  Perserve histories created for testing.
      --publish-history     Publish test history. Useful for CI testing.
      --parallel-tests PARALLEL_TESTS
                            Parallel tests.
      --retries RETRIES     Retry failed tests.
      --page-size PAGE_SIZE
                            If positive, use pagination and just run one 'page' to
                            tool tests.
      --page-number PAGE_NUMBER
                            If page size is used, run this 'page' of tests -
                            starts with 0.
      --download-attempts DOWNLOAD_ATTEMPTS
                            Galaxy may return a transient 500 status code for
                            download if test results are written but not yet
                            accessible.
      --download-sleep DOWNLOAD_SLEEP
                            If download attempts is greater than 1, the amount to
                            sleep between download attempts.
      --test-data TEST_DATA
                            Add local test data path to search for missing test
                            data

.. _Galaxy: http://galaxyproject.org/
.. _GitHub: https://github.com/
