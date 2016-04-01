.class Landroid/widget/AbsListView$11;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->twSetFluidScrollEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Z)V
    .registers 3

    .prologue
    .line 10039
    iput-object p1, p0, this$0:Landroid/widget/AbsListView;

    iput-boolean p2, p0, val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 10042
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    iget-boolean v1, p0, val$enabled:Z

    # invokes: Landroid/widget/AbsListView;->twSetFluidScrollerEnabledUiThread(Z)V
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$7100(Landroid/widget/AbsListView;Z)V

    .line 10043
    return-void
.end method
