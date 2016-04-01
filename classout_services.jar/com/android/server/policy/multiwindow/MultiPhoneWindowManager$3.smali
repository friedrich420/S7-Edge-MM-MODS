.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$3;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->finishPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 551
    iput-object p1, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 554
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    .local v1, "multiWindowUIIntent":Landroid/content/Intent;
    iget-object v2, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 556
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.multiwindow.centerbarwindow.CenterBarWindowService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    :goto_18
    const-string v2, "com.sec.android.multiwindow.first.split"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    iget-object v2, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 567
    .end local v1    # "multiWindowUIIntent":Landroid/content/Intent;
    :goto_24
    return-void

    .line 559
    .restart local v1    # "multiWindowUIIntent":Landroid/content/Intent;
    :cond_25
    const-string v2, "com.sec.android.app.FlashBarService"

    const-string v3, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_18

    .line 564
    .end local v1    # "multiWindowUIIntent":Landroid/content/Intent;
    :catch_2d
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method
