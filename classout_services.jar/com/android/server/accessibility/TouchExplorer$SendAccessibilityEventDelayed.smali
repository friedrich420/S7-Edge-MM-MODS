.class Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAccessibilityEventDelayed"
.end annotation


# instance fields
.field private final mDelay:I

.field private final mEventType:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/TouchExplorer;II)V
    .registers 4
    .param p2, "eventType"    # I
    .param p3, "delay"    # I

    .prologue
    .line 1573
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1574
    iput p2, p0, mEventType:I

    .line 1575
    iput p3, p0, mDelay:I

    .line 1576
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 1579
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1580
    return-void
.end method

.method public forceSendAndRemove()V
    .registers 2

    .prologue
    .line 1591
    invoke-virtual {p0}, isPending()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1592
    invoke-virtual {p0}, run()V

    .line 1593
    invoke-virtual {p0}, cancel()V

    .line 1595
    :cond_c
    return-void
.end method

.method public isPending()Z
    .registers 2

    .prologue
    .line 1587
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public post()V
    .registers 5

    .prologue
    .line 1583
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, mDelay:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1584
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 1599
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget v1, p0, mEventType:I

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->access$1900(Lcom/android/server/accessibility/TouchExplorer;I)V

    .line 1600
    return-void
.end method
