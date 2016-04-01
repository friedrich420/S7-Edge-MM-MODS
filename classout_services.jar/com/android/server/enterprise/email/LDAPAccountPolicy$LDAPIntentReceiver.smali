.class Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LDAPAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LDAPIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V
    .registers 2

    .prologue
    .line 374
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 376
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v7, "edm.intent.action.ldap.createacct.internal"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 379
    const-string v7, "LDAPAccountPolicyService"

    const-string v8, "LDAPIntentReceiver: Received intent : ACTION_LDAP_CREATE_ACCT"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 381
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_64

    .line 382
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.action.ldap.createacct.result"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, "_intent":Landroid/content/Intent;
    const-string/jumbo v7, "edm.intent.extra.ldap.user.id"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 384
    .local v6, "userId":I
    const-string/jumbo v7, "edm.intent.extra.ldap.result"

    const-string/jumbo v8, "edm.intent.extra.ldap.result"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string/jumbo v7, "edm.intent.extra.ldap.acct.id"

    const-string/jumbo v8, "edm.intent.extra.ldap.acct.id"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 386
    const-string/jumbo v7, "edm.intent.extra.ldap.user.id"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 389
    .local v4, "token":J
    :try_start_4d
    iget-object v7, p0, this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    # getter for: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$300(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)Landroid/content/Context;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 391
    const-string v7, "LDAPAccountPolicyService"

    const-string v8, "LDAPReceiver: success to send result Intent. "

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_61} :catch_65
    .catchall {:try_start_4d .. :try_end_61} :catchall_71

    .line 395
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    .end local v0    # "_intent":Landroid/content/Intent;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "token":J
    .end local v6    # "userId":I
    :cond_64
    :goto_64
    return-void

    .line 392
    .restart local v0    # "_intent":Landroid/content/Intent;
    .restart local v3    # "extras":Landroid/os/Bundle;
    .restart local v4    # "token":J
    .restart local v6    # "userId":I
    :catch_65
    move-exception v2

    .line 393
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_66
    const-string v7, "LDAPAccountPolicyService"

    const-string v8, "LDAPReceiver: failed to Send Intent. "

    invoke-static {v7, v8, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_71

    .line 395
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_64

    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_71
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method
