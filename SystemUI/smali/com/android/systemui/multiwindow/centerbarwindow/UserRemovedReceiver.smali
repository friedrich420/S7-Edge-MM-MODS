.class public Lcom/android/systemui/multiwindow/centerbarwindow/UserRemovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserRemovedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 11
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 12
    .local v0, "prefs":Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 13
    .local v1, "userId":I
    if-eq v1, v3, :cond_0

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->removeUserData(I)V

    .line 16
    :cond_0
    return-void
.end method
