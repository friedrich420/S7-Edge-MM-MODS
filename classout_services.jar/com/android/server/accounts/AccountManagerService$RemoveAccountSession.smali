.class Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAccountSession"
.end annotation


# instance fields
.field final mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .registers 15
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "account"    # Landroid/accounts/Account;
    .param p5, "expectActivityLaunch"    # Z

    .prologue
    .line 1457
    iput-object p1, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 1458
    iget-object v4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 1461
    iput-object p4, p0, mAccount:Landroid/accounts/Account;

    .line 1462
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 1477
    if-eqz p1, :cond_64

    const-string v3, "booleanResult"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    const-string/jumbo v3, "intent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 1479
    const-string v3, "booleanResult"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1480
    .local v0, "removalAllowed":Z
    if-eqz v0, :cond_24

    .line 1481
    iget-object v3, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v4, p0, mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v5, p0, mAccount:Landroid/accounts/Account;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    invoke-static {v3, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->access$1900(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    .line 1483
    :cond_24
    invoke-virtual {p0}, getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 1484
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_64

    .line 1485
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 1486
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " calling onResult() on response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_57
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1490
    .local v2, "result2":Landroid/os/Bundle;
    const-string v3, "booleanResult"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1492
    :try_start_61
    invoke-interface {v1, v2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_64} :catch_68

    .line 1498
    .end local v0    # "removalAllowed":Z
    .end local v1    # "response":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "result2":Landroid/os/Bundle;
    :cond_64
    :goto_64
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    .line 1499
    return-void

    .line 1493
    .restart local v0    # "removalAllowed":Z
    .restart local v1    # "response":Landroid/accounts/IAccountManagerResponse;
    .restart local v2    # "result2":Landroid/os/Bundle;
    :catch_68
    move-exception v3

    goto :goto_64
.end method

.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1472
    iget-object v0, p0, mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, mAccount:Landroid/accounts/Account;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    .line 1473
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 6
    .param p1, "now"    # J

    .prologue
    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removeAccount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
