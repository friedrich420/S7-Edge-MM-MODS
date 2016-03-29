.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$10;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeButtonPopupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$10;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$10;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showToastMessage(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3500(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Landroid/view/View;)V

    .line 1565
    const/4 v0, 0x1

    return v0
.end method
