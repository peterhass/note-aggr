export LLM_API_KEY=""
export LLM_BASE_URL="https://generativelanguage.googleapis.com/v1beta/openai"
export LLM_MODEL="gemini-2.5-flash"
#export LLM_MODEL="gemini-2.5-pro"

if [[ -f ./.env.local.sh ]]; then
  source ./.env.local.sh
fi
