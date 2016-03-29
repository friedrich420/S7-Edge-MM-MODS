.class Lcom/android/settings/accessibility/MagnifierService$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MagnifierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MagnifierService;


# direct methods
.method private constructor <init>(Lcom/android/settings/accessibility/MagnifierService;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accessibility/MagnifierService;Lcom/android/settings/accessibility/MagnifierService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/accessibility/MagnifierService;
    .param p2, "x1"    # Lcom/android/settings/accessibility/MagnifierService$1;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;-><init>(Lcom/android/settings/accessibility/MagnifierService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.samsung.android.app.accesscontrol.PAUSE_MAGNIFIER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    const-string v4, "ACCESSCONTROL_ENABLED"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 96
    .local v2, "isAccessControlEnabled":Z
    if-eqz v2, :cond_4

    .line 98
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e1661

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "toastMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 100
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e1662

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 103
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->removeView()V

    .line 110
    .end local v2    # "isAccessControlEnabled":Z
    .end local v3    # "toastMsg":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 111
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->removeView()V

    .line 116
    :cond_2
    :goto_1
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_magnifier"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->removeView()V

    .line 120
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_3
    :goto_2
    return-void

    .line 106
    .restart local v2    # "isAccessControlEnabled":Z
    :cond_4
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->showView()V

    goto :goto_0

    .line 112
    .end local v2    # "isAccessControlEnabled":Z
    :cond_5
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    # getter for: Lcom/android/settings/accessibility/MagnifierService;->isScoverClosed:Z
    invoke-static {v4}, Lcom/android/settings/accessibility/MagnifierService;->access$100(Lcom/android/settings/accessibility/MagnifierService;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 114
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->showView()V

    goto :goto_1

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
