.class Lcom/android/internal/widget/LockPatternView$1;
.super Landroid/os/Handler;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .prologue
    .line 88
    iput-object p1, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 96
    :goto_5
    return-void

    .line 93
    :pswitch_6
    iget-object v1, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    # invokes: Lcom/android/internal/widget/LockPatternView;->handleActionUpEvent(Landroid/view/MotionEvent;)V
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView;->access$000(Lcom/android/internal/widget/LockPatternView;Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 91
    :pswitch_data_10
    .packed-switch 0xa
        :pswitch_6
    .end packed-switch
.end method
