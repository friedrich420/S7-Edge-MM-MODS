.class Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MagnifierSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnifierSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierTouchGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;


# direct methods
.method private constructor <init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;Lcom/android/settings/accessibility/MagnifierSurfaceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/accessibility/MagnifierSurfaceView;
    .param p2, "x1"    # Lcom/android/settings/accessibility/MagnifierSurfaceView$1;

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;-><init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 558
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # invokes: Lcom/android/settings/accessibility/MagnifierSurfaceView;->injectAccessibilityMotionEvent(IZ)V
    invoke-static {v0, v1, v1}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$700(Lcom/android/settings/accessibility/MagnifierSurfaceView;IZ)V

    .line 559
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 564
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
