.class public Lcom/android/settings/applications/PermissionsSummaryHelper;
.super Ljava/lang/Object;
.source "PermissionsSummaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)Landroid/content/BroadcastReceiver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_PERMISSIONS_COUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "request":Landroid/content/Intent;
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "com.android.settings.PERM_COUNT_RESPONSE"

    invoke-static {p0, v1, v0, p2}, Lcom/android/settings/applications/PermissionsSummaryHelper;->sendPermissionRequest(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    return-object v1
.end method

.method private static sendPermissionRequest(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)Landroid/content/BroadcastReceiver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/content/Intent;
    .param p3, "callback"    # Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .prologue
    .line 45
    new-instance v0, Lcom/android/settings/applications/PermissionsSummaryHelper$1;

    invoke-direct {v0, p3}, Lcom/android/settings/applications/PermissionsSummaryHelper$1;-><init>(Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    .line 58
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    const-string v1, "android.intent.extra.GET_PERMISSIONS_RESONSE_INTENT"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    return-object v0
.end method
