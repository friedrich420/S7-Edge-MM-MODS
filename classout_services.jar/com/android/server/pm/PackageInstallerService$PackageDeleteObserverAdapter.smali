.class Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
.super Landroid/app/PackageDeleteObserver;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDeleteObserverAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotification:Landroid/app/Notification;

.field private final mPackageName:Ljava/lang/String;

.field private final mTarget:Landroid/content/IntentSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/content/IntentSender;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "showNotification"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 970
    invoke-direct {p0}, Landroid/app/PackageDeleteObserver;-><init>()V

    .line 971
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 972
    iput-object p2, p0, mTarget:Landroid/content/IntentSender;

    .line 973
    iput-object p3, p0, mPackageName:Ljava/lang/String;

    .line 974
    if-eqz p4, :cond_21

    .line 975
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040588

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    invoke-static {v0, v1, p3, p5}, Lcom/android/server/pm/PackageInstallerService;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, mNotification:Landroid/app/Notification;

    .line 982
    :goto_20
    return-void

    .line 980
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, mNotification:Landroid/app/Notification;

    goto :goto_20
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 999
    const/4 v0, 0x1

    if-ne v0, p2, :cond_18

    iget-object v0, p0, mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_18

    .line 1000
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 1002
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    iget-object v0, p0, mNotification:Landroid/app/Notification;

    invoke-virtual {v6, p1, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1004
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    :cond_18
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1005
    .local v3, "fillIn":Landroid/content/Intent;
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    iget-object v1, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    const-string v0, "android.content.pm.extra.STATUS"

    invoke-static {p2}, Landroid/content/pm/PackageManager;->deleteStatusToPublicStatus(I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1008
    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->deleteStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    const-string v0, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1012
    :try_start_3b
    iget-object v0, p0, mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_45
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3b .. :try_end_45} :catch_46

    .line 1015
    :goto_45
    return-void

    .line 1013
    :catch_46
    move-exception v0

    goto :goto_45
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 986
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 987
    .local v3, "fillIn":Landroid/content/Intent;
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    iget-object v1, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 990
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 992
    :try_start_17
    iget-object v0, p0, mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_21
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_17 .. :try_end_21} :catch_22

    .line 995
    :goto_21
    return-void

    .line 993
    :catch_22
    move-exception v0

    goto :goto_21
.end method
