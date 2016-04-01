.class Lin/panic/xperience/CircleRamView$1;
.super Ljava/lang/Object;
.source "CircleRamView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/panic/xperience/CircleRamView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/panic/xperience/CircleRamView;


# direct methods
.method constructor <init>(Lin/panic/xperience/CircleRamView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lin/panic/xperience/CircleRamView$1;->this$0:Lin/panic/xperience/CircleRamView;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lin/panic/xperience/CircleRamView$1;->this$0:Lin/panic/xperience/CircleRamView;

    # getter for: Lin/panic/xperience/CircleRamView;->mAttached:Z
    invoke-static {v0}, Lin/panic/xperience/CircleRamView;->access$0(Lin/panic/xperience/CircleRamView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lin/panic/xperience/CircleRamView$1;->this$0:Lin/panic/xperience/CircleRamView;

    # invokes: Lin/panic/xperience/CircleRamView;->update()V
    invoke-static {v0}, Lin/panic/xperience/CircleRamView;->access$1(Lin/panic/xperience/CircleRamView;)V

    .line 70
    :cond_0
    return-void
.end method
