<#-- Dev login page for the CCE Admin Console (users, roles, menus, protocols): unbranded, no country / ministry marks.
     Selected per client (cce-admin-ui) by the client attribute login_theme; the Insights UI keeps keycloak-themes/cce-insights-theme. -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CCE Admin — Sign in</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/cce-admin.css">
</head>
<body>
    <div class="top-bar">
        <div class="top-bar-left">CCE Admin Console</div>
        <div class="top-bar-right">Care Coordination Engine</div>
    </div>

    <div class="page">
        <div class="card">

            <div class="banner">
                <h1>CCE Admin Console</h1>
                <p>Manage users, roles, menus and protocols</p>
            </div>

            <div class="body">
                <h2 class="subtitle">Sign in to continue</h2>

                <form action="${url.loginAction}" method="post">
                    <input type="hidden" name="credentialId" value="${(auth.selectedCredential!'')}"/>

                    <div class="field">
                        <label for="username">Username</label>
                        <input id="username" name="username" type="text"
                               autocomplete="username" autofocus
                               value="${(login.username!'')}"/>
                    </div>

                    <div class="field">
                        <label for="password">Password</label>
                        <input id="password" name="password" type="password"
                               autocomplete="current-password"/>
                    </div>

                    <#if message?has_content && message.type == "error">
                        <div class="error-box">${message.summary}</div>
                    </#if>

                    <button type="submit">Sign In</button>
                </form>

                <p class="footer">Authorized administrators only</p>
            </div>
        </div>
    </div>
</body>
</html>
