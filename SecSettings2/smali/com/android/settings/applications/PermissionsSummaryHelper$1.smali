.class final Lcom/android/settings/applications/PermissionsSummaryHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "PermissionsSummaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/PermissionsSummaryHelper;->sendPermissionRequest(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/applications/PermissionsSummaryHelper$1;->val$callback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    const-string v2, "android.intent.extra.GET_PERMISSIONS_COUNT_RESULT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 50
    .local v0, "counts":[I
    const-string v2, "android.intent.extra.GET_PERMISSIONS_GROUP_LIST_RESULT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 53
    .local v1, "groups":[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/settings/applications/PermissionsSummaryHelper$1;->val$callback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-interface {v2, v0, v1}, Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;->onPermissionSummaryResult([I[Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    return-void
.end method
