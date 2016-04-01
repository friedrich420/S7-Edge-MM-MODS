.class Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field isRemovedPackageSystemUpdate:Z

.field removedAppId:I

.field removedPackage:Ljava/lang/String;

.field removedUsers:[I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 19288
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19290
    iput v0, p0, uid:I

    .line 19291
    iput v0, p0, removedAppId:I

    .line 19292
    iput-object v1, p0, removedUsers:[I

    .line 19293
    const/4 v0, 0x0

    iput-boolean v0, p0, isRemovedPackageSystemUpdate:Z

    .line 19295
    iput-object v1, p0, args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-void
.end method


# virtual methods
.method sendBroadcast(ZZZ)V
    .registers 5
    .param p1, "fullRemove"    # Z
    .param p2, "replacing"    # Z
    .param p3, "removedForAllUsers"    # Z

    .prologue
    .line 19298
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, sendBroadcast(ZZZLandroid/content/IIntentReceiver;)V

    .line 19299
    return-void
.end method

.method sendBroadcast(ZZZLandroid/content/IIntentReceiver;)V
    .registers 12
    .param p1, "fullRemove"    # Z
    .param p2, "replacing"    # Z
    .param p3, "removedForAllUsers"    # Z
    .param p4, "finishReceiver"    # Landroid/content/IIntentReceiver;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 19302
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 19303
    .local v3, "extras":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    iget v0, p0, removedAppId:I

    if-ltz v0, :cond_53

    iget v0, p0, removedAppId:I

    :goto_f
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19304
    const-string v0, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19305
    if-eqz p2, :cond_1e

    .line 19306
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19308
    :cond_1e
    const-string v0, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19309
    iget-object v0, p0, removedPackage:Ljava/lang/String;

    if-eqz v0, :cond_43

    .line 19310
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    iget-object v2, p0, removedPackage:Ljava/lang/String;

    iget-object v6, p0, removedUsers:[I

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 19312
    if-eqz p1, :cond_43

    if-nez p2, :cond_43

    .line 19313
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    iget-object v2, p0, removedPackage:Ljava/lang/String;

    iget-object v6, p0, removedUsers:[I

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 19317
    :cond_43
    iget v0, p0, removedAppId:I

    if-ltz v0, :cond_52

    .line 19318
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "android.intent.action.UID_REMOVED"

    iget-object v6, p0, removedUsers:[I

    move-object v2, v4

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 19321
    :cond_52
    return-void

    .line 19303
    :cond_53
    iget v0, p0, uid:I

    goto :goto_f
.end method
