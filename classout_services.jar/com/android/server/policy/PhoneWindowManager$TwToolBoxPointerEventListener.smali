.class final Lcom/android/server/policy/PhoneWindowManager$TwToolBoxPointerEventListener;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TwToolBoxPointerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 735
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManager$1;

    .prologue
    .line 735
    invoke-direct {p0, p1}, <init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 738
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    if-eqz v0, :cond_23

    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->cursorWindowTouchableRegion:Landroid/graphics/Region;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$000(Lcom/android/server/policy/PhoneWindowManager;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-nez v0, :cond_23

    .line 739
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 741
    :cond_23
    return-void
.end method
