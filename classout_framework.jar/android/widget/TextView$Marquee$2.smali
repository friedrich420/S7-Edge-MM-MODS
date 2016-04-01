.class Landroid/widget/TextView$Marquee$2;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$Marquee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView$Marquee;


# direct methods
.method constructor <init>(Landroid/widget/TextView$Marquee;)V
    .registers 2

    .prologue
    .line 11794
    iput-object p1, p0, this$0:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 7
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 11797
    iget-object v0, p0, this$0:Landroid/widget/TextView$Marquee;

    const/4 v1, 0x2

    # setter for: Landroid/widget/TextView$Marquee;->mStatus:B
    invoke-static {v0, v1}, Landroid/widget/TextView$Marquee;->access$802(Landroid/widget/TextView$Marquee;B)B

    .line 11798
    iget-object v0, p0, this$0:Landroid/widget/TextView$Marquee;

    iget-object v1, p0, this$0:Landroid/widget/TextView$Marquee;

    # getter for: Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v1}, Landroid/widget/TextView$Marquee;->access$1000(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v2

    # setter for: Landroid/widget/TextView$Marquee;->mLastAnimationMs:J
    invoke-static {v0, v2, v3}, Landroid/widget/TextView$Marquee;->access$902(Landroid/widget/TextView$Marquee;J)J

    .line 11799
    iget-object v0, p0, this$0:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->tick()V

    .line 11800
    return-void
.end method
