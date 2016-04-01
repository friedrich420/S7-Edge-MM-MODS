.class Lcom/android/server/media/MediaSessionRecord$3;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2

    .prologue
    .line 712
    iput-object p1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 715
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$300(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$400(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v2

    if-eq v1, v2, :cond_1d

    const/4 v0, 0x1

    .line 716
    .local v0, "needUpdate":Z
    :goto_f
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v2, -0x1

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I
    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionRecord;->access$302(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 717
    if-eqz v0, :cond_1c

    .line 718
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$500(Lcom/android/server/media/MediaSessionRecord;)V

    .line 720
    :cond_1c
    return-void

    .line 715
    .end local v0    # "needUpdate":Z
    :cond_1d
    const/4 v0, 0x0

    goto :goto_f
.end method
