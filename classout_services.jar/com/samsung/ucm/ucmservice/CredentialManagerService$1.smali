.class Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;
.super Landroid/os/Handler;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 178
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_11e

    .line 228
    :goto_8
    :pswitch_8
    return-void

    .line 180
    :pswitch_9
    const-string v6, "UcmService"

    const-string v7, "MSG_REFRESH_APPLET_INFO is called..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v6, p0, this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # getter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 182
    :try_start_17
    iget-object v6, p0, this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentAppletsInfoLocked()V
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$100(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    .line 184
    iget-object v6, p0, this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$200(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    .line 185
    monitor-exit v7

    goto :goto_8

    :catchall_23
    move-exception v6

    monitor-exit v7
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_23

    throw v6

    .line 188
    :pswitch_26
    iget-object v6, p0, this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 v7, 0x0

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(ILandroid/os/Bundle;)V
    invoke-static {v6, v9, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V

    goto :goto_8

    .line 195
    :pswitch_2d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 196
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v6, "packageName"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "packageName":Ljava/lang/String;
    const-string/jumbo v6, "status"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, "status":Ljava/lang/String;
    const-string/jumbo v6, "errorCode"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 200
    .local v2, "errorCode":I
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_PACKAGE_LICENSE_UPDATE packageName-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",status-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", errorCode-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz v5, :cond_d1

    const-string/jumbo v6, "success"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d1

    if-nez v2, :cond_d1

    .line 204
    const-string/jumbo v6, "event"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    iget-object v6, p0, this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v6

    if-eqz v6, :cond_b0

    .line 207
    :try_start_8d
    iget-object v6, p0, this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7, v4}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->notifyLicenseStatus(ILjava/lang/String;)Z

    move-result v3

    .line 208
    .local v3, "notifyStatus":Z
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  notifyLicenseStatus Activate status- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_b0} :catch_b7

    .line 225
    .end local v3    # "notifyStatus":Z
    :cond_b0
    :goto_b0
    iget-object v6, p0, this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(ILandroid/os/Bundle;)V
    invoke-static {v6, v9, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    .line 209
    :catch_b7
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 215
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d1
    const-string/jumbo v6, "event"

    invoke-virtual {v0, v6, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    iget-object v6, p0, this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v6

    if-eqz v6, :cond_b0

    .line 218
    :try_start_df
    iget-object v6, p0, this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7, v4}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->notifyLicenseStatus(ILjava/lang/String;)Z

    move-result v3

    .line 219
    .restart local v3    # "notifyStatus":Z
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  notifyLicenseStatus expire status- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_102} :catch_103

    goto :goto_b0

    .line 220
    .end local v3    # "notifyStatus":Z
    :catch_103
    move-exception v1

    .line 221
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 178
    nop

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_26
        :pswitch_8
        :pswitch_8
        :pswitch_2d
        :pswitch_9
    .end packed-switch
.end method
