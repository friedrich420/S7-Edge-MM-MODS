.class Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;
.super Landroid/os/Handler;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V
    .registers 2

    .prologue
    .line 712
    iput-object p1, p0, this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 714
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 719
    :goto_5
    return-void

    .line 716
    :pswitch_6
    iget-object v0, p0, this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    # invokes: Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->performSingleTap()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->access$500(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V

    goto :goto_5

    .line 714
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
