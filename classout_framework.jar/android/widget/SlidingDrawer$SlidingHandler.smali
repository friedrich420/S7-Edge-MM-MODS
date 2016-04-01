.class Landroid/widget/SlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Landroid/widget/SlidingDrawer;)V
    .registers 2

    .prologue
    .line 977
    iput-object p1, p0, this$0:Landroid/widget/SlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/SlidingDrawer;
    .param p2, "x1"    # Landroid/widget/SlidingDrawer$1;

    .prologue
    .line 977
    invoke-direct {p0, p1}, <init>(Landroid/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 979
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 984
    :goto_5
    return-void

    .line 981
    :pswitch_6
    iget-object v0, p0, this$0:Landroid/widget/SlidingDrawer;

    # invokes: Landroid/widget/SlidingDrawer;->doAnimation()V
    invoke-static {v0}, Landroid/widget/SlidingDrawer;->access$400(Landroid/widget/SlidingDrawer;)V

    goto :goto_5

    .line 979
    :pswitch_data_c
    .packed-switch 0x3e8
        :pswitch_6
    .end packed-switch
.end method
