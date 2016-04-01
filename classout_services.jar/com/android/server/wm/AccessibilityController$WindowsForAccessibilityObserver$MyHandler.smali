.class Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_COMPUTE_CHANGED_WINDOWS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1374
    iput-object p1, p0, this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 1375
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1376
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1381
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 1386
    :goto_5
    return-void

    .line 1383
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    goto :goto_5

    .line 1381
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
