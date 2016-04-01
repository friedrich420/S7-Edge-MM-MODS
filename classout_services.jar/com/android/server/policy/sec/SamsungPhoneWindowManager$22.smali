.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$22;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->startAodService(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 4487
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 4490
    const/4 v0, 0x0

    .line 4491
    .local v0, "aodIntent":Landroid/content/Intent;
    :try_start_1
    iget-object v3, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAodStartState:I

    packed-switch v3, :pswitch_data_5e

    .line 4513
    :goto_8
    return-void

    .line 4493
    :pswitch_9
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.aodservice.intent.action.AOD_APP_START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .end local v0    # "aodIntent":Landroid/content/Intent;
    .local v1, "aodIntent":Landroid/content/Intent;
    move-object v0, v1

    .line 4507
    .end local v1    # "aodIntent":Landroid/content/Intent;
    .restart local v0    # "aodIntent":Landroid/content/Intent;
    :goto_11
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_32

    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAodService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4508
    :cond_32
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.aodservice"

    const-string v5, "com.samsung.android.app.aodservice.AODService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4509
    iget-object v3, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_46

    goto :goto_8

    .line 4510
    :catch_46
    move-exception v2

    .line 4511
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 4497
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_4b
    :try_start_4b
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.aodservice.intent.action.AOD_SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .end local v0    # "aodIntent":Landroid/content/Intent;
    .restart local v1    # "aodIntent":Landroid/content/Intent;
    move-object v0, v1

    .line 4498
    .end local v1    # "aodIntent":Landroid/content/Intent;
    .restart local v0    # "aodIntent":Landroid/content/Intent;
    goto :goto_11

    .line 4501
    :pswitch_54
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.aodservice.intent.action.AOD_SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5b} :catch_46

    .end local v0    # "aodIntent":Landroid/content/Intent;
    .restart local v1    # "aodIntent":Landroid/content/Intent;
    move-object v0, v1

    .line 4502
    .end local v1    # "aodIntent":Landroid/content/Intent;
    .restart local v0    # "aodIntent":Landroid/content/Intent;
    goto :goto_11

    .line 4491
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_4b
        :pswitch_54
    .end packed-switch
.end method
