.class Lcom/android/server/wm/MultiWindowTransition$2;
.super Ljava/lang/Object;
.source "MultiWindowTransition.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MultiWindowTransition;->setMaximizeAnimation(Lcom/android/server/wm/AppWindowToken;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiWindowTransition;

.field final synthetic val$wtoken:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiWindowTransition;Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    .prologue
    .line 175
    iput-object p1, p0, this$0:Lcom/android/server/wm/MultiWindowTransition;

    iput-object p2, p0, val$wtoken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 186
    iget-object v0, p0, val$wtoken:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wm/AppWindowToken;->mTargetTransit:I

    .line 187
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 182
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 178
    return-void
.end method
