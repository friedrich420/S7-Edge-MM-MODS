.class public Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;
.super Ljava/lang/Object;
.source "RemoteViewContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/widget/RemoteViewContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnClickListenerWrapper"
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/sec/android/cover/widget/RemoteViewContainerView;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/widget/RemoteViewContainerView;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;->this$0:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;->mClickListener:Landroid/view/View$OnClickListener;

    .line 48
    iput-object p2, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;->mClickListener:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;->this$0:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    # invokes: Lcom/sec/android/cover/widget/RemoteViewContainerView;->onChildViewClicked(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->access$000(Lcom/sec/android/cover/widget/RemoteViewContainerView;Landroid/view/View;)V

    .line 57
    :cond_0
    return-void
.end method
