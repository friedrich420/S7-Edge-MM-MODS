.class Lin/panic/xperience/CircleRamView$2;
.super Ljava/lang/Object;
.source "CircleRamView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/panic/xperience/CircleRamView;->update()V
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
    iput-object p1, p0, Lin/panic/xperience/CircleRamView$2;->this$0:Lin/panic/xperience/CircleRamView;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lin/panic/xperience/CircleRamView$2;->this$0:Lin/panic/xperience/CircleRamView;

    # invokes: Lin/panic/xperience/CircleRamView;->updateMemoryInfo()V
    invoke-static {v0}, Lin/panic/xperience/CircleRamView;->access$2(Lin/panic/xperience/CircleRamView;)V

    .line 173
    iget-object v0, p0, Lin/panic/xperience/CircleRamView$2;->this$0:Lin/panic/xperience/CircleRamView;

    invoke-virtual {v0}, Lin/panic/xperience/CircleRamView;->invalidate()V

    .line 174
    return-void
.end method
