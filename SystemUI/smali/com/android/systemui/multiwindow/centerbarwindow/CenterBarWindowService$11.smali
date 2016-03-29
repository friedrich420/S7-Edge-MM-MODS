.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$11;
.super Landroid/content/BroadcastReceiver;
.source "CenterBarWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$11;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 319
    const-string v3, "CenterBarWindowService"

    const-string v4, "Knox Setup Complete"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 322
    .local v0, "intentExtra":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 323
    const-string v3, "userid"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 325
    .local v1, "knoxUserId":I
    const/16 v3, 0x64

    if-lt v1, v3, :cond_0

    .line 326
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 327
    .local v2, "prefs":Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;
    invoke-virtual {v2, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->removeAllUserData(I)V

    .line 330
    .end local v1    # "knoxUserId":I
    .end local v2    # "prefs":Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;
    :cond_0
    return-void
.end method
