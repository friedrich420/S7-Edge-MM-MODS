.class Lcom/android/server/SEDenialService$AuditFileObserver;
.super Landroid/os/FileObserver;
.source "SEDenialService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SEDenialService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuditFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SEDenialService;


# direct methods
.method public constructor <init>(Lcom/android/server/SEDenialService;Ljava/lang/String;I)V
    .registers 4
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mask"    # I

    .prologue
    .line 63
    iput-object p1, p0, this$0:Lcom/android/server/SEDenialService;

    .line 64
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 65
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 12
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string/jumbo v6, "sys.boot_completed"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 70
    const-string v6, "SecurityLogAgent:SEDenialService"

    const-string v7, "Not Boot completed . No intent for this"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_16
    :goto_16
    return-void

    .line 73
    :cond_17
    const/4 v6, 0x2

    if-ne p1, v6, :cond_df

    if-eqz p2, :cond_df

    const-string v6, "audit.log"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_df

    .line 74
    const-string v6, "audit.ondenial"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "strProcessName":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_84

    .line 76
    const-string v6, "SecurityLogAgent:SEDenialService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got Modify Event and sending Denial Intent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "samsung.intent.action.knox.DENIAL_NOTIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, "denialIntent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.securitylogagent"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string/jumbo v6, "isNotification"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const-string v6, "PROC_INFO"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v6, p0, this$0:Lcom/android/server/SEDenialService;

    # getter for: Lcom/android/server/SEDenialService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/SEDenialService;->access$000(Lcom/android/server/SEDenialService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    const-string v6, "audit.ondenial"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v6, "SecurityLogAgent:SEDenialService"

    const-string v7, "audit.ondenial set to 0 after sending samsung.intent.action.knox.DENIAL_NOTIFICATION intent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v3    # "denialIntent":Landroid/content/Intent;
    .end local v5    # "strProcessName":Ljava/lang/String;
    :cond_84
    :goto_84
    const/16 v6, 0x80

    if-ne p1, v6, :cond_16

    .line 97
    const-string v6, "SecurityLogAgent:SEDenialService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got Moved To Event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v6, "audit.old"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 99
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "samsung.intent.action.knox.DENIAL_NOTIFICATION"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v4, "denialZipIntent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.securitylogagent"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/misc/audit/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "denialFilePath":Ljava/lang/String;
    const-string v6, "DENIAL_LOG_FILE"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v6, p0, this$0:Lcom/android/server/SEDenialService;

    # getter for: Lcom/android/server/SEDenialService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/SEDenialService;->access$000(Lcom/android/server/SEDenialService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    const-string v6, "SecurityLogAgent:SEDenialService"

    const-string v7, "Sending Denial Intent for zip"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 85
    .end local v2    # "denialFilePath":Ljava/lang/String;
    .end local v4    # "denialZipIntent":Landroid/content/Intent;
    :cond_df
    const/16 v6, 0x8

    if-ne p1, v6, :cond_84

    .line 86
    const-string v6, "SecurityLogAgent:SEDenialService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got CLOSE_WRITE Event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v6, "ams.old"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "samsung.intent.action.knox.AMS_NOTIFICATION"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "amsZipIntent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.securitylogagent"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/misc/audit/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "amsFilePath":Ljava/lang/String;
    const-string v6, "AMS_LOG_FILE"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v6, p0, this$0:Lcom/android/server/SEDenialService;

    # getter for: Lcom/android/server/SEDenialService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/SEDenialService;->access$000(Lcom/android/server/SEDenialService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    const-string v6, "SecurityLogAgent:SEDenialService"

    const-string v7, "Sending AMS Intent for zip"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_84
.end method
