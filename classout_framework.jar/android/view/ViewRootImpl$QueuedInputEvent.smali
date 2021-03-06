.class final Landroid/view/ViewRootImpl$QueuedInputEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueuedInputEvent"
.end annotation


# static fields
.field public static final FLAG_DEFERRED:I = 0x2

.field public static final FLAG_DELIVER_POST_IME:I = 0x1

.field public static final FLAG_FINISHED:I = 0x4

.field public static final FLAG_FINISHED_HANDLED:I = 0x8

.field public static final FLAG_RESYNTHESIZED:I = 0x10

.field public static final FLAG_UNHANDLED:I = 0x20


# instance fields
.field public mEvent:Landroid/view/InputEvent;

.field public mFlags:I

.field public mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field public mReceiver:Landroid/view/InputEventReceiver;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/view/ViewRootImpl$1;

    .prologue
    .line 7034
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method private flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "hasPrevious"    # Z
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 7085
    iget v0, p0, mFlags:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_11

    .line 7086
    if-eqz p3, :cond_d

    .line 7087
    const-string/jumbo v0, "|"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7089
    :cond_d
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7090
    const/4 p3, 0x1

    .line 7092
    .end local p3    # "hasPrevious":Z
    :cond_11
    return p3
.end method


# virtual methods
.method public shouldSendToSynthesizer()Z
    .registers 2

    .prologue
    .line 7057
    iget v0, p0, mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 7058
    const/4 v0, 0x1

    .line 7061
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public shouldSkipIme()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 7049
    iget v1, p0, mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    .line 7052
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_17

    iget-object v1, p0, mEvent:Landroid/view/InputEvent;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_17
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7066
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QueuedInputEvent{flags="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7067
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 7068
    .local v0, "hasPrevious":Z
    const-string v2, "DELIVER_POST_IME"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v0, v1}, flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    .line 7069
    const-string v2, "DEFERRED"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v0, v1}, flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    .line 7070
    const-string v2, "FINISHED"

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3, v0, v1}, flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    .line 7071
    const-string v2, "FINISHED_HANDLED"

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3, v0, v1}, flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    .line 7072
    const-string v2, "RESYNTHESIZED"

    const/16 v3, 0x10

    invoke-direct {p0, v2, v3, v0, v1}, flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    .line 7073
    const-string v2, "UNHANDLED"

    const/16 v3, 0x20

    invoke-direct {p0, v2, v3, v0, v1}, flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    .line 7074
    if-nez v0, :cond_3c

    .line 7075
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7077
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", hasNextQueuedEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, mEvent:Landroid/view/InputEvent;

    if-eqz v2, :cond_9a

    const-string/jumbo v2, "true"

    :goto_4e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", hasInputEventReceiver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v2, :cond_9d

    const-string/jumbo v2, "true"

    :goto_6b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7080
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 7077
    :cond_9a
    const-string v2, "false"

    goto :goto_4e

    .line 7078
    :cond_9d
    const-string v2, "false"

    goto :goto_6b
.end method
