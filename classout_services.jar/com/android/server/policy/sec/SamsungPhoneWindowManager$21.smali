.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$21;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 4403
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4405
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.dualscreencontrolpanel"

    const-string v3, "com.samsung.android.dualscreencontrolpanel.DualScreenControlPanelService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4407
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4408
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4409
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4410
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_23

    const-string v2, "SamsungWindowManager"

    const-string v3, "Screen manager launch : broadcast"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    :cond_23
    return-void
.end method
