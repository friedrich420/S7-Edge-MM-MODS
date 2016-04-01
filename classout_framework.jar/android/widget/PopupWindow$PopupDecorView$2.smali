.class Landroid/widget/PopupWindow$PopupDecorView$2;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/transition/Transition$TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PopupWindow$PopupDecorView;

.field final synthetic val$listener:Landroid/transition/Transition$TransitionListener;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListener;)V
    .registers 3

    .prologue
    .line 2369
    iput-object p1, p0, this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object p2, p0, val$listener:Landroid/transition/Transition$TransitionListener;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 2372
    iget-object v0, p0, val$listener:Landroid/transition/Transition$TransitionListener;

    invoke-interface {v0, p1}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 2375
    iget-object v0, p0, this$1:Landroid/widget/PopupWindow$PopupDecorView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/PopupWindow$PopupDecorView;->mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;
    invoke-static {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->access$1102(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListenerAdapter;)Landroid/transition/Transition$TransitionListenerAdapter;

    .line 2376
    return-void
.end method
