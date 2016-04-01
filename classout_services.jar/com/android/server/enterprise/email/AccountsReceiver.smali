.class public Lcom/android/server/enterprise/email/AccountsReceiver;
.super Ljava/lang/Object;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;
    }
.end annotation


# static fields
.field private static final DELETE_RESULT:Ljava/lang/String; = "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

.field private static final SETUP_RESULT:Ljava/lang/String; = "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

.field private static TAG:Ljava/lang/String;

.field private static mSmimeCerticateList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/email/AccountSMIMECertificate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-string v0, "AccountsReceiver"

    sput-object v0, TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, mSmimeCerticateList:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/AccountsReceiver$1;-><init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 71
    const/4 v7, 0x0

    .line 73
    .local v7, "filter":Landroid/content/IntentFilter;
    :try_start_d
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_29

    .line 74
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .local v3, "filter":Landroid/content/IntentFilter;
    :try_start_12
    const-string/jumbo v0, "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_28} :catch_34

    .line 82
    :goto_28
    return-void

    .line 78
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    :catch_29
    move-exception v6

    move-object v3, v7

    .line 79
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .local v6, "ex":Ljava/lang/Exception;
    :goto_2b
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "register Account Receiver : failed. "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 78
    .end local v6    # "ex":Ljava/lang/Exception;
    :catch_34
    move-exception v6

    goto :goto_2b
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 60
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/AccountsReceiver;

    .prologue
    .line 60
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .registers 6
    .param p0, "caller"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v2, 0x0

    .line 182
    .local v2, "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    :try_start_1
    sget-object v3, mSmimeCerticateList:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-object v2, v0

    .line 183
    sget-object v3, mSmimeCerticateList:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "getSMIMECertificate() success."

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    .line 189
    :goto_18
    return-object v2

    .line 185
    :catch_19
    move-exception v1

    .line 186
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "getSMIMECertificate() failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public static pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z
    .registers 5
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "mCert"    # Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .prologue
    .line 169
    :try_start_0
    sget-object v1, mSmimeCerticateList:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "pushSMIMECertificate() success"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    .line 175
    const/4 v1, 0x1

    :goto_e
    return v1

    .line 171
    :catch_f
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "pushSMIMECertificate() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    const/4 v1, 0x0

    goto :goto_e
.end method
