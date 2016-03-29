.class Lcom/android/systemui/recents/Recents$TransitionStartedListener;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnTransitionStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Recents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransitionStartedListener"
.end annotation


# instance fields
.field private mAnimationStartedListener:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

.field final synthetic this$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/Recents$AnimationStartedListener;)V
    .locals 1
    .param p2, "animationStartedListener"    # Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    .prologue
    .line 1636
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$TransitionStartedListener;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/Recents$TransitionStartedListener;->mAnimationStartedListener:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    .line 1637
    iput-object p2, p0, Lcom/android/systemui/recents/Recents$TransitionStartedListener;->mAnimationStartedListener:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    .line 1638
    return-void
.end method


# virtual methods
.method public onTransitionStarted()V
    .locals 1

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$TransitionStartedListener;->mAnimationStartedListener:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$TransitionStartedListener;->mAnimationStartedListener:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->onAnimationStarted()V

    .line 1645
    :cond_0
    return-void
.end method
