.class final Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowAppListInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 212
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getInstance()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v1

    .line 213
    .local v1, "info":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    if-eqz v1, :cond_0

    .line 215
    :try_start_0
    const-string v3, "Recents_MultiWindowAppListInfo"

    const-string v4, "MultiWindowAppListInfo update"

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$1;->getSendingUserId()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 217
    .local v2, "userHandle":I
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 227
    .end local v2    # "userHandle":I
    :cond_0
    :goto_0
    return-void

    .line 221
    .restart local v2    # "userHandle":I
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->pkgManagerList(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v2    # "userHandle":I
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Recents_MultiWindowAppListInfo"

    const-string v4, "MultiWindowAppListInfo update failed"

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
