.class Lcom/android/server/accounts/AccountManagerService$6;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callerPkg:Ljava/lang/String;

.field final synthetic val$callerPkgSigDigest:[B

.field final synthetic val$callerUid:I

.field final synthetic val$customTokens:Z

.field final synthetic val$loginOptions:Landroid/os/Bundle;

.field final synthetic val$notifyOnAuthFailure:Z

.field final synthetic val$permissionGranted:Z


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 20
    .param p2, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "x1"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Z
    .param p6, "x4"    # Z
    .param p7, "x5"    # Ljava/lang/String;
    .param p8, "x6"    # Z

    .prologue
    .line 2116
    iput-object p1, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p9, p0, val$loginOptions:Landroid/os/Bundle;

    iput-object p10, p0, val$account:Landroid/accounts/Account;

    iput-object p11, p0, val$authTokenType:Ljava/lang/String;

    iput-boolean p12, p0, val$notifyOnAuthFailure:Z

    iput-boolean p13, p0, val$permissionGranted:Z

    iput p14, p0, val$callerUid:I

    move/from16 v0, p15

    iput-boolean v0, p0, val$customTokens:Z

    move-object/from16 v0, p16

    iput-object v0, p0, val$callerPkg:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, val$callerPkgSigDigest:[B

    move-object/from16 v0, p18

    iput-object v0, p0, val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 2140
    if-eqz p1, :cond_af

    .line 2141
    const-string v0, "authTokenLabelKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2142
    iget-object v0, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, val$account:Landroid/accounts/Account;

    iget v2, p0, val$callerUid:I

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    iget-object v5, p0, val$authTokenType:Ljava/lang/String;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/server/accounts/AccountManagerService;->access$2300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 2147
    .local v4, "intent":Landroid/content/Intent;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2148
    .local v10, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "intent"

    invoke-virtual {v10, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2149
    invoke-virtual {p0, v10}, onResult(Landroid/os/Bundle;)V

    .line 2192
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v10    # "bundle":Landroid/os/Bundle;
    :goto_29
    return-void

    .line 2152
    :cond_2a
    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2153
    .local v7, "authToken":Ljava/lang/String;
    if-eqz v7, :cond_87

    .line 2154
    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2155
    .local v11, "name":Ljava/lang/String;
    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2156
    .local v13, "type":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2157
    :cond_4a
    const/4 v0, 0x5

    const-string/jumbo v1, "the type and name should not be empty"

    invoke-virtual {p0, v0, v1}, onError(ILjava/lang/String;)V

    goto :goto_29

    .line 2161
    :cond_52
    new-instance v12, Landroid/accounts/Account;

    invoke-direct {v12, v11, v13}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    .local v12, "resultAccount":Landroid/accounts/Account;
    iget-boolean v0, p0, val$customTokens:Z

    if-nez v0, :cond_64

    .line 2163
    iget-object v0, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v2, p0, val$authTokenType:Ljava/lang/String;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v12, v2, v7}, Lcom/android/server/accounts/AccountManagerService;->access$2400(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2169
    :cond_64
    const-string v0, "android.accounts.expiry"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2171
    .local v8, "expiryMillis":J
    iget-boolean v0, p0, val$customTokens:Z

    if-eqz v0, :cond_87

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-lez v0, :cond_87

    .line 2173
    iget-object v1, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, p0, mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v3, p0, val$account:Landroid/accounts/Account;

    iget-object v4, p0, val$callerPkg:Ljava/lang/String;

    iget-object v5, p0, val$callerPkgSigDigest:[B

    iget-object v6, p0, val$authTokenType:Ljava/lang/String;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService;->access$2500(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    .line 2184
    .end local v8    # "expiryMillis":J
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "resultAccount":Landroid/accounts/Account;
    .end local v13    # "type":Ljava/lang/String;
    :cond_87
    const-string/jumbo v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 2185
    .restart local v4    # "intent":Landroid/content/Intent;
    if-eqz v4, :cond_af

    iget-boolean v0, p0, val$notifyOnAuthFailure:Z

    if-eqz v0, :cond_af

    iget-boolean v0, p0, val$customTokens:Z

    if-nez v0, :cond_af

    .line 2186
    iget-object v0, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v2, p0, val$account:Landroid/accounts/Account;

    const-string v3, "authFailedMessage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    # invokes: Lcom/android/server/accounts/AccountManagerService;->doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->access$2600(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    .line 2191
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "authToken":Ljava/lang/String;
    :cond_af
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    goto/16 :goto_29
.end method

.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2131
    iget-boolean v0, p0, val$permissionGranted:Z

    if-nez v0, :cond_c

    .line 2132
    iget-object v0, p0, mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, val$authTokenType:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    .line 2136
    :goto_b
    return-void

    .line 2134
    :cond_c
    iget-object v0, p0, mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, val$account:Landroid/accounts/Account;

    iget-object v2, p0, val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, val$loginOptions:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_b
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 6
    .param p1, "now"    # J

    .prologue
    .line 2119
    iget-object v0, p0, val$loginOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    iget-object v0, p0, val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 2120
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAuthToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, val$account:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authTokenType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loginOptions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifyOnAuthFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, val$notifyOnAuthFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
