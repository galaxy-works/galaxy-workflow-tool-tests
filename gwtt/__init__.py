"""The public interface or entry point for the galaxy-workflow-tool-tests project."""

__version__ = '0.1.0.dev0'

PROJECT_NAME = "galaxy-workflow-tool-tests"
PROJECT_OWNER = PROJECT_USERAME = "galaxy-works"
PROJECT_AUTHOR = 'Galaxy Works'
PROJECT_EMAIL = 'jmchilton@gmail.com'
PROJECT_URL = "https://github.com/galaxy-works/galaxy-workflow-tool-tests"


from .script import main


__all__ = (
    'main',
)
