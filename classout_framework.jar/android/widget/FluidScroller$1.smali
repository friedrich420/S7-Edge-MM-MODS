.class Landroid/widget/FluidScroller$1;
.super Ljava/lang/Object;
.source "FluidScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FluidScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FluidScroller;


# direct methods
.method constructor <init>(Landroid/widget/FluidScroller;)V
    .registers 2

    .prologue
    .line 240
    iput-object p1, p0, this$0:Landroid/widget/FluidScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, this$0:Landroid/widget/FluidScroller;

    const/4 v1, 0x0

    # invokes: Landroid/widget/FluidScroller;->setState(I)V
    invoke-static {v0, v1}, Landroid/widget/FluidScroller;->access$000(Landroid/widget/FluidScroller;I)V

    .line 244
    return-void
.end method
