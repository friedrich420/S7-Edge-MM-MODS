.class Landroid/widget/PopupWindow$PopupDecorView$1;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PopupWindow$PopupDecorView;

.field final synthetic val$enterTransition:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V
    .registers 3

    .prologue
    .line 2315
    iput-object p1, p0, this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object p2, p0, val$enterTransition:Landroid/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .prologue
    .line 2318
    iget-object v2, p0, this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v2}, Landroid/widget/PopupWindow$PopupDecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2319
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_b

    .line 2320
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2323
    :cond_b
    iget-object v2, p0, this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v2, v2, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    # invokes: Landroid/widget/PopupWindow;->getRelativeAnchorBounds()Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/PopupWindow;->access$900(Landroid/widget/PopupWindow;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2324
    .local v0, "epicenter":Landroid/graphics/Rect;
    iget-object v2, p0, val$enterTransition:Landroid/transition/Transition;

    new-instance v3, Landroid/widget/PopupWindow$PopupDecorView$1$1;

    invoke-direct {v3, p0, v0}, Landroid/widget/PopupWindow$PopupDecorView$1$1;-><init>(Landroid/widget/PopupWindow$PopupDecorView$1;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 2330
    iget-object v2, p0, this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, val$enterTransition:Landroid/transition/Transition;

    # invokes: Landroid/widget/PopupWindow$PopupDecorView;->startEnterTransition(Landroid/transition/Transition;)V
    invoke-static {v2, v3}, Landroid/widget/PopupWindow$PopupDecorView;->access$1000(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V

    .line 2331
    return-void
.end method
