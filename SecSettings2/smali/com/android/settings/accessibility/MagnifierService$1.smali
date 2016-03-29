.class Lcom/android/settings/accessibility/MagnifierService$1;
.super Landroid/database/ContentObserver;
.source "MagnifierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MagnifierService;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/MagnifierService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierService$1;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 60
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierService$1;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_magnifier"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 62
    .local v1, "newstate":Z
    :goto_0
    if-nez v1, :cond_0

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService$1;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->removeView()V

    .line 65
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService$1;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/MagnifierService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_1
    return-void

    .end local v1    # "newstate":Z
    :cond_1
    move v1, v2

    .line 60
    goto :goto_0

    .line 66
    .restart local v1    # "newstate":Z
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
