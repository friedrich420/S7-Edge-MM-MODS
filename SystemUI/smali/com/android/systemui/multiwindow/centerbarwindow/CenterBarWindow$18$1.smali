.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18$1;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;)V
    .locals 0

    .prologue
    .line 1940
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;

    iget-object v1, v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->animateCenterBarClose(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$4100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Landroid/view/View;)V

    .line 1944
    return-void
.end method
