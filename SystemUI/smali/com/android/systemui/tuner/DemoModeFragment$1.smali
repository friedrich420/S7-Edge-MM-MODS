.class Lcom/android/systemui/tuner/DemoModeFragment$1;
.super Landroid/database/ContentObserver;
.source "DemoModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/DemoModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/DemoModeFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/DemoModeFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/systemui/tuner/DemoModeFragment$1;->this$0:Lcom/android/systemui/tuner/DemoModeFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment$1;->this$0:Lcom/android/systemui/tuner/DemoModeFragment;

    # invokes: Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeEnabled()V
    invoke-static {v0}, Lcom/android/systemui/tuner/DemoModeFragment;->access$000(Lcom/android/systemui/tuner/DemoModeFragment;)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment$1;->this$0:Lcom/android/systemui/tuner/DemoModeFragment;

    # invokes: Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeOn()V
    invoke-static {v0}, Lcom/android/systemui/tuner/DemoModeFragment;->access$100(Lcom/android/systemui/tuner/DemoModeFragment;)V

    .line 208
    return-void
.end method
