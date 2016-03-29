.class Lcom/android/systemui/tuner/QsTuner$1;
.super Ljava/lang/Object;
.source "QsTuner.java"

# interfaces
.implements Lcom/android/systemui/tuner/QsTuner$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/QsTuner;->setupDropTarget()V
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
    .line 141
    iput-object p1, p0, Lcom/android/systemui/tuner/QsTuner$1;->this$0:Lcom/android/systemui/tuner/QsTuner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrop(Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceText"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$1;->this$0:Lcom/android/systemui/tuner/QsTuner;

    # getter for: Lcom/android/systemui/tuner/QsTuner;->mTileHost:Lcom/android/systemui/tuner/QsTuner$CustomHost;
    invoke-static {v0}, Lcom/android/systemui/tuner/QsTuner;->access$000(Lcom/android/systemui/tuner/QsTuner;)Lcom/android/systemui/tuner/QsTuner$CustomHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->remove(Ljava/lang/String;)V

    .line 145
    return-void
.end method
