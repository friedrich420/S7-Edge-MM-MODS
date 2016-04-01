.class abstract Landroid/view/ViewRootImpl$AsyncInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AsyncInputStage"
.end annotation


# static fields
.field protected static final DEFER:I = 0x3


# instance fields
.field private mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueueLength:I

.field private mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final mTraceCounter:Ljava/lang/String;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .registers 4
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;

    .prologue
    .line 4764
    iput-object p1, p0, this$0:Landroid/view/ViewRootImpl;

    .line 4765
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 4766
    iput-object p3, p0, mTraceCounter:Ljava/lang/String;

    .line 4767
    return-void
.end method

.method private dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 7
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "prev"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4862
    if-nez p2, :cond_1f

    .line 4863
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p0, mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4867
    :goto_6
    iget-object v0, p0, mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-ne v0, p1, :cond_c

    .line 4868
    iput-object p2, p0, mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4870
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4872
    iget v0, p0, mQueueLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mQueueLength:I

    .line 4873
    const-wide/16 v0, 0x4

    iget-object v2, p0, mTraceCounter:Ljava/lang/String;

    iget v3, p0, mQueueLength:I

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 4874
    return-void

    .line 4865
    :cond_1f
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_6
.end method

.method private enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4849
    iget-object v0, p0, mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v0, :cond_18

    .line 4850
    iput-object p1, p0, mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4851
    iput-object p1, p0, mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4857
    :goto_8
    iget v0, p0, mQueueLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mQueueLength:I

    .line 4858
    const-wide/16 v0, 0x4

    iget-object v2, p0, mTraceCounter:Ljava/lang/String;

    iget v3, p0, mQueueLength:I

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 4859
    return-void

    .line 4853
    :cond_18
    iget-object v0, p0, mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4854
    iput-object p1, p0, mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_8
.end method


# virtual methods
.method protected apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V
    .registers 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "result"    # I

    .prologue
    .line 4841
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    .line 4842
    invoke-virtual {p0, p1}, defer(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4846
    :goto_6
    return-void

    .line 4844
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V

    goto :goto_6
.end method

.method protected defer(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4775
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 4776
    invoke-direct {p0, p1}, enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4777
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 4878
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4879
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4880
    const-string v0, ": mQueueLength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4881
    iget v0, p0, mQueueLength:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4883
    invoke-super {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4884
    return-void
.end method

.method protected forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 8
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4782
    iget v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 4785
    iget-object v1, p0, mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4786
    .local v1, "curr":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v1, :cond_e

    .line 4787
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4837
    :cond_d
    :goto_d
    return-void

    .line 4794
    :cond_e
    iget-object v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v5}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v2

    .line 4795
    .local v2, "deviceId":I
    const/4 v4, 0x0

    .line 4796
    .local v4, "prev":Landroid/view/ViewRootImpl$QueuedInputEvent;
    const/4 v0, 0x0

    .line 4797
    .local v0, "blocked":Z
    :goto_16
    if-eqz v1, :cond_29

    if-eq v1, p1, :cond_29

    .line 4798
    if-nez v0, :cond_25

    iget-object v5, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v5}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v5

    if-ne v2, v5, :cond_25

    .line 4799
    const/4 v0, 0x1

    .line 4801
    :cond_25
    move-object v4, v1

    .line 4802
    iget-object v1, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_16

    .line 4808
    :cond_29
    if-eqz v0, :cond_31

    .line 4809
    if-nez v1, :cond_d

    .line 4810
    invoke-direct {p0, p1}, enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_d

    .line 4816
    :cond_31
    if-eqz v1, :cond_38

    .line 4817
    iget-object v1, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4818
    invoke-direct {p0, p1, v4}, dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4820
    :cond_38
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4823
    :goto_3b
    if-eqz v1, :cond_d

    .line 4824
    iget-object v5, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v5}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v5

    if-ne v2, v5, :cond_55

    .line 4825
    iget v5, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_d

    .line 4828
    iget-object v3, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4829
    .local v3, "next":Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-direct {p0, v1, v4}, dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4830
    invoke-super {p0, v1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4831
    move-object v1, v3

    .line 4832
    goto :goto_3b

    .line 4833
    .end local v3    # "next":Landroid/view/ViewRootImpl$QueuedInputEvent;
    :cond_55
    move-object v4, v1

    .line 4834
    iget-object v1, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_3b
.end method
