.class public Lcom/android/systemui/screenshot/ScreenshotShareActivity;
.super Landroid/app/Activity;
.source "ScreenshotShareActivity.java"


# instance fields
.field private mNotificationId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doFinish()V
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d01c7

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 97
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 98
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->mNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->finish()V

    .line 100
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->requestWindowFeature(I)Z

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "NotificationId"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->mNotificationId:I

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 47
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "FilePath"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "imageFilePath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 49
    const-string v5, "ScreenshotShareActivity"

    const-string v6, "onCreate : imageFilePath is null."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->doFinish()V

    .line 73
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 56
    const-string v5, "ScreenshotShareActivity"

    const-string v6, "onCreate : Item is not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->doFinish()V

    goto :goto_0

    .line 61
    :cond_1
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 62
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 63
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 64
    .local v4, "mHandler":Landroid/os/Handler;
    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotShareActivity$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotShareActivity;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 71
    .end local v4    # "mHandler":Landroid/os/Handler;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->startChooserActivity()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->setVisible(Z)V

    .line 79
    return-void
.end method

.method startChooserActivity()V
    .locals 6

    .prologue
    .line 81
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "sharingIntent":Landroid/content/Intent;
    const-string v3, "image/png"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "Uri"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Subject"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, "chooserIntent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->finish()V

    .line 93
    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
