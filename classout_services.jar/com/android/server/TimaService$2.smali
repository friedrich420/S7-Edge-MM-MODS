.class Lcom/android/server/TimaService$2;
.super Landroid/content/BroadcastReceiver;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TimaService;


# direct methods
.method constructor <init>(Lcom/android/server/TimaService;)V
    .registers 2

    .prologue
    .line 2147
    iput-object p1, p0, this$0:Lcom/android/server/TimaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2151
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2154
    .local v0, "action":Ljava/lang/String;
    const-string v8, "TimaService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BroadcastReceiver - action:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    iget-object v8, p0, this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->isKapSupported()Z
    invoke-static {v8}, Lcom/android/server/TimaService;->access$200(Lcom/android/server/TimaService;)Z

    move-result v8

    if-eqz v8, :cond_63

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    .line 2157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2159
    .local v6, "token":J
    iget-object v8, p0, this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->isZeroModel()Z
    invoke-static {v8}, Lcom/android/server/TimaService;->access$300(Lcom/android/server/TimaService;)Z

    move-result v8

    if-nez v8, :cond_3d

    .line 2160
    iget-object v8, p0, this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->notifyKapEnabled()V
    invoke-static {v8}, Lcom/android/server/TimaService;->access$400(Lcom/android/server/TimaService;)V

    .line 2163
    :cond_3d
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2164
    .local v2, "kapIntent":Landroid/content/Intent;
    const-string v8, "com.samsung.action.knox.kap.KAP_NOTIFICATION"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2165
    const-string v8, "com.samsung.klmsagent"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2166
    const-string v8, "KAP_LICENSE_STATUS_REQUEST"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2167
    iget-object v8, p0, this$0:Lcom/android/server/TimaService;

    # getter for: Lcom/android/server/TimaService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/TimaService;->access$100(Lcom/android/server/TimaService;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v10, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v8, v2, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2168
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2184
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "kapIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :cond_62
    :goto_62
    return-void

    .line 2169
    .restart local v0    # "action":Ljava/lang/String;
    :cond_63
    iget-object v8, p0, this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->isKapSupported()Z
    invoke-static {v8}, Lcom/android/server/TimaService;->access$200(Lcom/android/server/TimaService;)Z

    move-result v8

    if-eqz v8, :cond_62

    const-string v8, "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 2170
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 2171
    .local v4, "msgData":Landroid/os/Bundle;
    if-nez v4, :cond_87

    .line 2173
    const-string v8, "TimaService"

    const-string/jumbo v9, "null msgData"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_81} :catch_82

    goto :goto_62

    .line 2181
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "msgData":Landroid/os/Bundle;
    :catch_82
    move-exception v1

    .line 2182
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_62

    .line 2177
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v4    # "msgData":Landroid/os/Bundle;
    :cond_87
    :try_start_87
    const-string v8, "KAP_LICENSE_NOTIFICATION_TRIGGER"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2178
    .local v5, "notiTrigger":I
    const-string v8, "KLMS_LICENSE_STATUS"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2179
    .local v3, "licenseStatus":Ljava/lang/Boolean;
    iget-object v8, p0, this$0:Lcom/android/server/TimaService;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v5, v9}, Lcom/android/server/TimaService;->handleLicenseStatus(IZ)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_a0} :catch_82

    goto :goto_62
.end method
