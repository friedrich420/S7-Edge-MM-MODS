.class Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayContentsAnimator"
.end annotation


# instance fields
.field mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

.field mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field final synthetic this$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowAnimator;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1494
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1495
    iput-object v0, p0, mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 1497
    iput-object v0, p0, mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/WindowAnimator;
    .param p2, "x1"    # Lcom/android/server/wm/WindowAnimator$1;

    .prologue
    .line 1494
    invoke-direct {p0, p1}, <init>(Lcom/android/server/wm/WindowAnimator;)V

    return-void
.end method