.class Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
.super Landroid/app/PackageInstallObserver;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageInstallObserverAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSessionId:I

.field private final mShowNotification:Z

.field private final mTarget:Landroid/content/IntentSender;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/content/IntentSender;
    .param p3, "sessionId"    # I
    .param p4, "showNotification"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 1026
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    .line 1027
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 1028
    iput-object p2, p0, mTarget:Landroid/content/IntentSender;

    .line 1029
    iput p3, p0, mSessionId:I

    .line 1030
    iput-boolean p4, p0, mShowNotification:Z

    .line 1031
    iput p5, p0, mUserId:I

    .line 1032
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 15
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 1050
    if-ne v9, p2, :cond_39

    iget-boolean v1, p0, mShowNotification:Z

    if-eqz v1, :cond_39

    .line 1051
    if-eqz p4, :cond_7f

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1052
    .local v9, "update":Z
    :goto_12
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v9, :cond_81

    const v1, 0x1040587

    :goto_1f
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, mUserId:I

    # invokes: Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    invoke-static {v2, v1, p1, v4}, Lcom/android/server/pm/PackageInstallerService;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v7

    .line 1058
    .local v7, "notification":Landroid/app/Notification;
    if-eqz v7, :cond_39

    .line 1059
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 1061
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v8, p1, v0, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1064
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "notificationManager":Landroid/app/NotificationManager;
    .end local v9    # "update":Z
    :cond_39
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1065
    .local v3, "fillIn":Landroid/content/Intent;
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    const-string v0, "android.content.pm.extra.SESSION_ID"

    iget v1, p0, mSessionId:I

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    const-string v0, "android.content.pm.extra.STATUS"

    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1069
    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    const-string v0, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1072
    if-eqz p4, :cond_74

    .line 1073
    const-string v0, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1075
    .local v6, "existing":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 1076
    const-string v0, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    .end local v6    # "existing":Ljava/lang/String;
    :cond_74
    :try_start_74
    iget-object v0, p0, mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_7e
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_74 .. :try_end_7e} :catch_85

    .line 1083
    :goto_7e
    return-void

    .end local v3    # "fillIn":Landroid/content/Intent;
    :cond_7f
    move v9, v0

    .line 1051
    goto :goto_12

    .line 1052
    .restart local v9    # "update":Z
    :cond_81
    const v1, 0x1040586

    goto :goto_1f

    .line 1081
    .end local v9    # "update":Z
    .restart local v3    # "fillIn":Landroid/content/Intent;
    :catch_85
    move-exception v0

    goto :goto_7e
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1036
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1037
    .local v3, "fillIn":Landroid/content/Intent;
    const-string v0, "android.content.pm.extra.SESSION_ID"

    iget v1, p0, mSessionId:I

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1038
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1040
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1042
    :try_start_17
    iget-object v0, p0, mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_21
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_17 .. :try_end_21} :catch_22

    .line 1045
    :goto_21
    return-void

    .line 1043
    :catch_22
    move-exception v0

    goto :goto_21
.end method
