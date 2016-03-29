.class public Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;
.super Ljava/lang/Object;
.source "ViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/ViewAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskViewCloseAllContext"
.end annotation


# instance fields
.field offscreenTranslation:I

.field postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

.field startOffset:I

.field toRight:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Z)V
    .locals 0
    .param p1, "t"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .param p2, "toRight"    # Z

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 89
    iput-boolean p2, p0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->toRight:Z

    .line 90
    return-void
.end method
