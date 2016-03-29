.class public Lcom/android/systemui/screenshot/ScreenshotViewActivity;
.super Landroid/app/Activity;
.source "ScreenshotViewActivity.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mNotificationId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doFinish()V
    .locals 4

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d01c7

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 126
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 127
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->mNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->finish()V

    .line 129
    return-void
.end method


# virtual methods
.method public getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 108
    const/4 v7, 0x0

    .line 109
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 111
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 116
    :cond_0
    if-eqz v6, :cond_1

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_1
    return-object v7

    .line 116
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 50
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, "NotificationId"

    const/4 v10, -0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->mNotificationId:I

    .line 51
    const-string v9, "imageUri"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "imageUri":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 53
    const-string v9, "ScreenshotViewActivity"

    const-string v10, "onCreate : imageUri is null."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->doFinish()V

    .line 105
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 59
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v8}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "path":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 61
    const-string v9, "ScreenshotViewActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate : Item is not exist in media provider : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->doFinish()V

    goto :goto_0

    .line 66
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 68
    const-string v9, "ScreenshotViewActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate : Item is not exist : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->doFinish()V

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->mContext:Landroid/content/Context;

    .line 75
    iget-object v9, p0, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    .line 76
    .local v2, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    iget-object v9, p0, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 77
    const/16 v9, 0x200

    invoke-virtual {v2, v9}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 78
    const-string v9, "ScreenshotViewActivity"

    const-string v10, "onCreate : Ultra Power Saving Mode On"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->doFinish()V

    goto :goto_0

    .line 81
    :cond_3
    const-string v9, "ScreenshotViewActivity"

    const-string v10, "onCreate : Emergency Mode On"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    :cond_4
    const-string v9, "device_policy"

    invoke-virtual {p0, v9}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 88
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 89
    const-string v9, "ScreenshotViewActivity"

    const-string v10, "onCreate : DO-NFC Mode On"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->doFinish()V

    goto/16 :goto_0

    .line 96
    :cond_5
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v6, "launchIntent":Landroid/content/Intent;
    const-string v9, "image/png"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const/high16 v9, 0x10000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v6}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->finish()V

    goto/16 :goto_0

    .line 100
    .end local v6    # "launchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d01c3

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->finish()V

    goto/16 :goto_0

    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->finish()V

    throw v9
.end method
