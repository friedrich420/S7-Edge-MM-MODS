.class Lcom/android/systemui/tuner/QsTuner$3;
.super Ljava/lang/Object;
.source "QsTuner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/QsTuner;->onStartDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/QsTuner;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/QsTuner;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/systemui/tuner/QsTuner$3;->this$0:Lcom/android/systemui/tuner/QsTuner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$3;->this$0:Lcom/android/systemui/tuner/QsTuner;

    # getter for: Lcom/android/systemui/tuner/QsTuner;->mDropTarget:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/tuner/QsTuner;->access$100(Lcom/android/systemui/tuner/QsTuner;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$3;->this$0:Lcom/android/systemui/tuner/QsTuner;

    # getter for: Lcom/android/systemui/tuner/QsTuner;->mAddTarget:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/tuner/QsTuner;->access$200(Lcom/android/systemui/tuner/QsTuner;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 172
    return-void
.end method
