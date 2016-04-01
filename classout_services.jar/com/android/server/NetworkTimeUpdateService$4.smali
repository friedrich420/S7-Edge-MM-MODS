.class Lcom/android/server/NetworkTimeUpdateService$4;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .registers 2

    .prologue
    .line 370
    iput-object p1, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "action":Ljava/lang/String;
    const-string v9, "NetworkTimeUpdateService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive + intent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v9, "com.samsung.edm.intent.action.UPDATE_NTP_PARAMETERS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_126

    .line 377
    const-string/jumbo v9, "enterprise_policy"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 379
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDateTimePolicy()Landroid/app/enterprise/DateTimePolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/DateTimePolicy;->getNtpInfo()Landroid/app/enterprise/NtpInfo;

    move-result-object v3

    .line 380
    .local v3, "ntpInfo":Landroid/app/enterprise/NtpInfo;
    if-eqz v3, :cond_dc

    invoke-virtual {v3}, Landroid/app/enterprise/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_dc

    .line 381
    invoke-virtual {v3}, Landroid/app/enterprise/NtpInfo;->getPollingInterval()J

    move-result-wide v4

    .line 382
    .local v4, "pollingInterval":J
    const-wide/16 v10, 0x0

    cmp-long v9, v10, v4

    if-eqz v9, :cond_96

    .line 383
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J
    invoke-static {v9, v4, v5}, Lcom/android/server/NetworkTimeUpdateService;->access$702(Lcom/android/server/NetworkTimeUpdateService;J)J

    .line 388
    :goto_51
    invoke-virtual {v3}, Landroid/app/enterprise/NtpInfo;->getPollingInterval()J

    move-result-wide v6

    .line 389
    .local v6, "pollingIntervalShorterMs":J
    const-wide/16 v10, 0x0

    cmp-long v9, v10, v6

    if-eqz v9, :cond_a8

    .line 390
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J
    invoke-static {v9, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->access$802(Lcom/android/server/NetworkTimeUpdateService;J)J

    .line 395
    :goto_60
    invoke-virtual {v3}, Landroid/app/enterprise/NtpInfo;->getMaxAttempts()I

    move-result v2

    .line 396
    .local v2, "maxAttempts":I
    if-eqz v2, :cond_ba

    .line 397
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I
    invoke-static {v9, v2}, Lcom/android/server/NetworkTimeUpdateService;->access$902(Lcom/android/server/NetworkTimeUpdateService;I)I

    .line 402
    :goto_6b
    invoke-virtual {v3}, Landroid/app/enterprise/NtpInfo;->getTimeErrorThreshold()I

    move-result v8

    .line 403
    .local v8, "timeErrorThreshold":I
    const-wide/16 v10, 0x0

    int-to-long v12, v8

    cmp-long v9, v10, v12

    if-eqz v9, :cond_cb

    .line 404
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I
    invoke-static {v9, v8}, Lcom/android/server/NetworkTimeUpdateService;->access$502(Lcom/android/server/NetworkTimeUpdateService;I)I

    .line 409
    :goto_7b
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mNtpSetByMDM:Z
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$302(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    .line 410
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$1002(Lcom/android/server/NetworkTimeUpdateService;I)I

    .line 422
    .end local v2    # "maxAttempts":I
    .end local v4    # "pollingInterval":J
    .end local v6    # "pollingIntervalShorterMs":J
    .end local v8    # "timeErrorThreshold":I
    :goto_87
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    # getter for: Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/NetworkTimeUpdateService;->access$000(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 426
    .end local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "ntpInfo":Landroid/app/enterprise/NtpInfo;
    :cond_95
    :goto_95
    return-void

    .line 385
    .restart local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v3    # "ntpInfo":Landroid/app/enterprise/NtpInfo;
    .restart local v4    # "pollingInterval":J
    :cond_96
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0078

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v10, v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J
    invoke-static {v9, v10, v11}, Lcom/android/server/NetworkTimeUpdateService;->access$702(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_51

    .line 392
    .restart local v6    # "pollingIntervalShorterMs":J
    :cond_a8
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0079

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v10, v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J
    invoke-static {v9, v10, v11}, Lcom/android/server/NetworkTimeUpdateService;->access$802(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_60

    .line 399
    .restart local v2    # "maxAttempts":I
    :cond_ba
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e007a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$902(Lcom/android/server/NetworkTimeUpdateService;I)I

    goto :goto_6b

    .line 406
    .restart local v8    # "timeErrorThreshold":I
    :cond_cb
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e007b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$502(Lcom/android/server/NetworkTimeUpdateService;I)I

    goto :goto_7b

    .line 412
    .end local v2    # "maxAttempts":I
    .end local v4    # "pollingInterval":J
    .end local v6    # "pollingIntervalShorterMs":J
    .end local v8    # "timeErrorThreshold":I
    :cond_dc
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mNtpSetByMDM:Z
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$302(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    .line 413
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0078

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v10, v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J
    invoke-static {v9, v10, v11}, Lcom/android/server/NetworkTimeUpdateService;->access$702(Lcom/android/server/NetworkTimeUpdateService;J)J

    .line 415
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0079

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v10, v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J
    invoke-static {v9, v10, v11}, Lcom/android/server/NetworkTimeUpdateService;->access$802(Lcom/android/server/NetworkTimeUpdateService;J)J

    .line 417
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e007a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$902(Lcom/android/server/NetworkTimeUpdateService;I)I

    .line 419
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e007b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$502(Lcom/android/server/NetworkTimeUpdateService;I)I

    goto/16 :goto_87

    .line 423
    .end local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "ntpInfo":Landroid/app/enterprise/NtpInfo;
    :cond_126
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_95

    .line 424
    iget-object v9, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mBootCompleted:Z
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$1102(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    goto/16 :goto_95
.end method
