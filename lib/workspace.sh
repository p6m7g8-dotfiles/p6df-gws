# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::gws::delegation::setup(delegated_email)
#
#  Args:
#	delegated_email -
#
#  Environment:	 HOME
#>
######################################################################
p6df::modules::gws::delegation::setup() {
  local delegated_email="${1:?requires delegated email address}"

  # Use gws auth (preferred over MCP) — sets up OAuth credentials for all
  # core Workspace APIs: Drive, Gmail, Calendar, Sheets, Docs, etc.
  mkdir -p "${HOME}/.config/gws"
  gws auth setup
  gws auth login

  p6_echo ""
  p6_msg "Account '${delegated_email}' ready. Use gws directly:"
  p6_msg "  gws gmail users messages list --params '{\"userId\": \"me\"}'"
  p6_msg "  gws drive files list"
  p6_msg "  gws calendar events list --params '{\"calendarId\": \"primary\"}'"

  p6_return_void
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::gmail::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::gmail::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/gmail.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::docs::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::docs::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/documents.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::slides::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::slides::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/presentations.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::sheets::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::sheets::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/spreadsheets.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::forms::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::forms::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/forms.body.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::analytics::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::analytics::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/analytics.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::drive::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::drive::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/drive.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::calendar::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::calendar::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/calendar.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::contacts::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::contacts::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/contacts.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::chat::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::chat::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/chat.messages.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::tasks::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::tasks::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/tasks.readonly")

  p6_return_str "${token}"
}


######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::admin::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::admin::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/admin.directory.user.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::classroom::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::classroom::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/classroom.courses.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::vault::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::vault::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/ediscovery.readonly")

  p6_return_str "${token}"
}

# ── Additional Workspace services ───────────────────────────────────────────

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::chat::spaces::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::chat::spaces::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/chat.spaces.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::chat::memberships::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::chat::memberships::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/chat.memberships.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::meet::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::meet::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/meetings.space.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::admin::groups::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::admin::groups::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/admin.directory.group.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::admin::orgunits::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::admin::orgunits::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/admin.directory.orgunit.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::admin::reports::audit::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::admin::reports::audit::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/admin.reports.audit.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::admin::reports::usage::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::admin::reports::usage::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/admin.reports.usage.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::classroom::rosters::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::classroom::rosters::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/classroom.rosters.readonly")

  p6_return_str "${token}"
}

######################################################################
#<
#
# Function: str {token} = p6df::modules::gws::classroom::coursework::get(email)
#
#  Args:
#	email -
#
#  Returns:
#	str - {token}
#
#>
######################################################################
p6df::modules::gws::classroom::coursework::get() {
  local email="${1:?requires email address}"

  local token
  token=$(p6df::modules::gcp::oauth::token "${email}" \
    "https://www.googleapis.com/auth/classroom.coursework.students.readonly")

  p6_return_str "${token}"
}

# ── Domain-Wide Delegation variants ─────────────────────────────────────────
# Each function mirrors its ::get counterpart but uses a service account key
# to impersonate the target user via DWD (oauth2l).
# The service account's client ID must be authorised for the relevant scope in
# Google Workspace Admin Console → Security → API Controls → Domain-wide delegation.

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::gmail::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::gmail::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/gmail.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::docs::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::docs::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/documents.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::sheets::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::sheets::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/spreadsheets.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::slides::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::slides::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/presentations.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::forms::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::forms::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/forms.body.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::drive::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::drive::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/drive.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::calendar::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::calendar::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/calendar.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::contacts::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::contacts::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/contacts.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::tasks::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::tasks::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/tasks.readonly"
}


######################################################################
#<
#
# Function: p6df::modules::gws::dwd::chat::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::chat::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/chat.messages.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::chat::spaces::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::chat::spaces::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/chat.spaces.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::chat::memberships::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::chat::memberships::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/chat.memberships.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::meet::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::meet::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/meetings.space.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::analytics::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::analytics::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/analytics.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::admin::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::admin::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/admin.directory.user.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::admin::groups::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::admin::groups::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/admin.directory.group.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::admin::orgunits::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::admin::orgunits::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/admin.directory.orgunit.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::admin::reports::audit::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::admin::reports::audit::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/admin.reports.audit.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::admin::reports::usage::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::admin::reports::usage::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/admin.reports.usage.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::classroom::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::classroom::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/classroom.courses.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::classroom::rosters::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::classroom::rosters::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/classroom.rosters.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::classroom::coursework::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::classroom::coursework::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/classroom.coursework.students.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::vault::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::vault::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" \
    "https://www.googleapis.com/auth/ediscovery.readonly"
}

######################################################################
#<
#
# Function: p6df::modules::gws::dwd::all::get(sa_key_file, email)
#
#  Args:
#	sa_key_file -
#	email -
#
#>
######################################################################
p6df::modules::gws::dwd::all::get() {
  local sa_key_file="${1:?requires service account key file path}"
  local email="${2:?requires email address to impersonate}"

  local scopes
  scopes=$(printf '%s,' \
    "https://www.googleapis.com/auth/gmail.readonly" \
    "https://www.googleapis.com/auth/drive.readonly" \
    "https://www.googleapis.com/auth/documents.readonly" \
    "https://www.googleapis.com/auth/spreadsheets.readonly" \
    "https://www.googleapis.com/auth/presentations.readonly" \
    "https://www.googleapis.com/auth/forms.body.readonly" \
    "https://www.googleapis.com/auth/calendar.readonly" \
    "https://www.googleapis.com/auth/contacts.readonly" \
    "https://www.googleapis.com/auth/tasks.readonly" \
    "https://www.googleapis.com/auth/chat.messages.readonly" \
    "https://www.googleapis.com/auth/chat.spaces.readonly" \
    "https://www.googleapis.com/auth/chat.memberships.readonly" \
    "https://www.googleapis.com/auth/meetings.space.readonly" \
    "https://www.googleapis.com/auth/analytics.readonly" \
    "https://www.googleapis.com/auth/admin.directory.user.readonly" \
    "https://www.googleapis.com/auth/admin.directory.group.readonly" \
    "https://www.googleapis.com/auth/admin.directory.orgunit.readonly" \
    "https://www.googleapis.com/auth/admin.reports.audit.readonly" \
    "https://www.googleapis.com/auth/admin.reports.usage.readonly" \
    "https://www.googleapis.com/auth/classroom.courses.readonly" \
    "https://www.googleapis.com/auth/classroom.rosters.readonly" \
    "https://www.googleapis.com/auth/classroom.coursework.students.readonly" \
    "https://www.googleapis.com/auth/ediscovery.readonly" \
  )
  scopes="${scopes%,}"

  p6df::modules::gcp::auth::dwd::token "${sa_key_file}" "${email}" "${scopes}"
}
