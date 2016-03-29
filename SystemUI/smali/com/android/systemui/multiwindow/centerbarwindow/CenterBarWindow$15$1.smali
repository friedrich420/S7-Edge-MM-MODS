.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15$1;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;)V
    .locals 0

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 1696
    return-void
.end method
