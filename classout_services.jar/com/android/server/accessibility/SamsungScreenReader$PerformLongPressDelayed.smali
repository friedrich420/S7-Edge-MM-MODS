.class final Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;
.super Ljava/lang/Object;
.source "SamsungScreenReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungScreenReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformLongPressDelayed"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungScreenReader;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungScreenReader;)V
    .registers 3

    .prologue
    .line 253
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/SamsungScreenReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 255
    return-void
.end method

.method private clear()V
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungScreenReader;

    # getter for: Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungScreenReader;->access$200(Lcom/android/server/accessibility/SamsungScreenReader;)Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    move-result-object v0

    invoke-virtual {v0}, cancel()V

    .line 288
    return-void
.end method

.method private performLongPress()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungScreenReader;

    # getter for: Lcom/android/server/accessibility/SamsungScreenReader;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungScreenReader;->access$100(Lcom/android/server/accessibility/SamsungScreenReader;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    .line 280
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungScreenReader;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/SamsungScreenReader;->isLongPressPerformed:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungScreenReader;->access$002(Lcom/android/server/accessibility/SamsungScreenReader;Z)Z

    .line 281
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public post(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 261
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungScreenReader;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungScreenReader;->isLongPressPerformed:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungScreenReader;->access$002(Lcom/android/server/accessibility/SamsungScreenReader;Z)Z

    .line 262
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    return-void
.end method

.method public run()V
    .registers 1

    .prologue
    .line 271
    invoke-direct {p0}, clear()V

    .line 272
    invoke-direct {p0}, performLongPress()V

    .line 273
    return-void
.end method
