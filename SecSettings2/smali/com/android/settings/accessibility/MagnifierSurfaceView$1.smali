.class Lcom/android/settings/accessibility/MagnifierSurfaceView$1;
.super Landroid/os/Handler;
.source "MagnifierSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnifierSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 432
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_4

    .line 433
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # getter for: Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$100(Lcom/android/settings/accessibility/MagnifierSurfaceView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hover_zoom_magnifier_size"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    .line 434
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # getter for: Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$100(Lcom/android/settings/accessibility/MagnifierSurfaceView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hover_zoom_value"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 436
    .local v1, "scaleSize":I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->disableMagnifier()V

    .line 437
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # getter for: Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$100(Lcom/android/settings/accessibility/MagnifierSurfaceView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_magnifier"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 460
    .end local v1    # "scaleSize":I
    :cond_0
    :goto_0
    return-void

    .line 439
    .restart local v1    # "scaleSize":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-boolean v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mIsDualScreenFeatureEnabled:Z

    if-eqz v2, :cond_3

    .line 440
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    if-ne v2, v3, :cond_2

    .line 441
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget-object v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v5, v5, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v4, v4, v5

    int-to-float v5, v1

    add-float/2addr v5, v7

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/accessibility/AccessibilityManager;->enableMagnifierByDisplayID(IIFI)V

    .line 448
    :goto_1
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # getter for: Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;
    invoke-static {v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$200(Lcom/android/settings/accessibility/MagnifierSurfaceView;)Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget-object v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v5, v5, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v4, v4, v5

    int-to-float v5, v1

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->updateSettings(IIF)V

    .line 449
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    invoke-virtual {v2, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->showMagnifier(FF)V

    .line 450
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    # invokes: Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnificationSpec(FF)V
    invoke-static {v2, v3, v4}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$300(Lcom/android/settings/accessibility/MagnifierSurfaceView;FF)V

    .line 451
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # invokes: Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnifierLayoutParams()V
    invoke-static {v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$400(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V

    .line 452
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # invokes: Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateViewLayout()V
    invoke-static {v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$500(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 443
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget-object v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v5, v5, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v4, v4, v5

    int-to-float v5, v1

    add-float/2addr v5, v7

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/accessibility/AccessibilityManager;->enableMagnifierByDisplayID(IIFI)V

    goto :goto_1

    .line 446
    :cond_3
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget-object v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v5, v5, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v4, v4, v5

    int-to-float v5, v1

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/accessibility/AccessibilityManager;->enableMagnifier(IIF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 456
    .end local v1    # "scaleSize":I
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 457
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # invokes: Lcom/android/settings/accessibility/MagnifierSurfaceView;->handleTimeout()V
    invoke-static {v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$600(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V

    goto/16 :goto_0
.end method
