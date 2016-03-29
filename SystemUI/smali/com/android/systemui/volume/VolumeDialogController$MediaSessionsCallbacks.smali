.class final Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"

# interfaces
.implements Lcom/android/systemui/volume/MediaSessions$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSessionsCallbacks"
.end annotation


# instance fields
.field private mNextStream:I

.field private final mRemoteStreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/media/session/MediaSession$Token;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;)V
    .locals 1

    .prologue
    .line 996
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    .line 999
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mNextStream:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeDialogController$1;

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;-><init>(Lcom/android/systemui/volume/VolumeDialogController;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    return-object v0
.end method

.method private findToken(I)Landroid/media/session/MediaSession$Token;
    .locals 4
    .param p1, "stream"    # I

    .prologue
    .line 1066
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1067
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/session/MediaSession$Token;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$Token;

    .line 1071
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/session/MediaSession$Token;Ljava/lang/Integer;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V
    .locals 3
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    .prologue
    .line 1048
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1049
    .local v0, "stream":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->access$2600(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1050
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->access$2600(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-ne v1, v0, :cond_0

    .line 1051
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    const/4 v2, -0x1

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z
    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->access$3300(Lcom/android/systemui/volume/VolumeDialogController;I)Z

    .line 1053
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->access$1500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogController;->access$2600(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 1054
    return-void
.end method

.method public onRemoteUpdate(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 8
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/media/session/MediaController$PlaybackInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1003
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1004
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mNextStream:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRemoteUpdate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mNextStream:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_0
    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mNextStream:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mNextStream:I

    .line 1008
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1009
    .local v2, "stream":I
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->access$2600(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_6

    move v0, v4

    .line 1010
    .local v0, "changed":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v3, v2}, Lcom/android/systemui/volume/VolumeDialogController;->access$3200(Lcom/android/systemui/volume/VolumeDialogController;I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v1

    .line 1011
    .local v1, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iput-boolean v4, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    .line 1012
    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    :goto_1
    iput v4, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    .line 1013
    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRemoteUpdate : stream = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", levelMin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v3

    iput v3, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    .line 1015
    iget v3, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1016
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v3

    iput v3, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    .line 1017
    const/4 v0, 0x1

    .line 1019
    :cond_2
    iget-object v3, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1020
    iput-object p2, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    .line 1021
    const/4 v0, 0x1

    .line 1023
    :cond_3
    if-eqz v0, :cond_5

    .line 1024
    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_4

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRemoteUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->access$1500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogController;->access$2600(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 1028
    :cond_5
    return-void

    .end local v0    # "changed":Z
    .end local v1    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    :cond_6
    move v0, v5

    .line 1009
    goto/16 :goto_0

    .restart local v0    # "changed":Z
    .restart local v1    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    :cond_7
    move v4, v5

    .line 1012
    goto/16 :goto_1
.end method

.method public onRemoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    .locals 5
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;
    .param p2, "flags"    # I

    .prologue
    .line 1032
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1033
    .local v2, "stream":I
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 1034
    .local v1, "showUI":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z
    invoke-static {v3, v2}, Lcom/android/systemui/volume/VolumeDialogController;->access$3300(Lcom/android/systemui/volume/VolumeDialogController;I)Z

    move-result v0

    .line 1035
    .local v0, "changed":Z
    if-eqz v1, :cond_0

    .line 1036
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    const/4 v4, 0x3

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->checkRoutedToBluetoothW(I)Z
    invoke-static {v3, v4}, Lcom/android/systemui/volume/VolumeDialogController;->access$3400(Lcom/android/systemui/volume/VolumeDialogController;I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1038
    :cond_0
    if-eqz v0, :cond_1

    .line 1039
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->access$1500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogController;->access$2600(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 1041
    :cond_1
    if-eqz v1, :cond_2

    .line 1042
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->access$1500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowRequested(I)V

    .line 1044
    :cond_2
    return-void

    .line 1033
    .end local v0    # "changed":Z
    .end local v1    # "showUI":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStreamVolume(II)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    .line 1057
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->findToken(I)Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 1058
    .local v0, "t":Landroid/media/session/MediaSession$Token;
    if-nez v0, :cond_0

    .line 1059
    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStreamVolume: No token found for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :goto_0
    return-void

    .line 1062
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->access$3500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/MediaSessions;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/volume/MediaSessions;->setVolume(Landroid/media/session/MediaSession$Token;I)V

    goto :goto_0
.end method
