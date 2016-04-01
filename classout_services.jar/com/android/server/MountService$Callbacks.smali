.class Lcom/android/server/MountService$Callbacks;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callbacks"
.end annotation


# static fields
.field private static final MSG_DISK_DESTROYED:I = 0x6

.field private static final MSG_DISK_SCANNED:I = 0x5

.field private static final MSG_STORAGE_STATE_CHANGED:I = 0x1

.field private static final MSG_VOLUME_FORGOTTEN:I = 0x4

.field private static final MSG_VOLUME_RECORD_CHANGED:I = 0x3

.field private static final MSG_VOLUME_STATE_CHANGED:I = 0x2


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/storage/IMountServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3963
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3959
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    .line 3964
    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/MountService$Callbacks;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 3951
    invoke-direct {p0, p1, p2, p3}, notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService$Callbacks;
    .param p1, "x1"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 3951
    invoke-direct {p0, p1}, notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService$Callbacks;
    .param p1, "x1"    # Landroid/os/storage/DiskInfo;
    .param p2, "x2"    # I

    .prologue
    .line 3951
    invoke-direct {p0, p1, p2}, notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeInfo;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/MountService$Callbacks;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 3951
    invoke-direct {p0, p1, p2, p3}, notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService$Callbacks;
    .param p1, "x1"    # Landroid/os/storage/VolumeRecord;

    .prologue
    .line 3951
    invoke-direct {p0, p1}, notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService$Callbacks;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3951
    invoke-direct {p0, p1}, notifyVolumeForgotten(Ljava/lang/String;)V

    return-void
.end method

.method private invokeCallback(Landroid/os/storage/IMountServiceListener;ILcom/android/internal/os/SomeArgs;)V
    .registers 7
    .param p1, "callback"    # Landroid/os/storage/IMountServiceListener;
    .param p2, "what"    # I
    .param p3, "args"    # Lcom/android/internal/os/SomeArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3991
    packed-switch p2, :pswitch_data_42

    .line 4018
    :goto_3
    return-void

    .line 3993
    :pswitch_4
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3998
    :pswitch_14
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v2, p3, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {p1, v0, v1, v2}, Landroid/os/storage/IMountServiceListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    goto :goto_3

    .line 4002
    :pswitch_20
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeRecord;

    invoke-interface {p1, v0}, Landroid/os/storage/IMountServiceListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    goto :goto_3

    .line 4006
    :pswitch_28
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/os/storage/IMountServiceListener;->onVolumeForgotten(Ljava/lang/String;)V

    goto :goto_3

    .line 4010
    :pswitch_30
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/DiskInfo;

    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {p1, v0, v1}, Landroid/os/storage/IMountServiceListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    goto :goto_3

    .line 4014
    :pswitch_3a
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/DiskInfo;

    invoke-interface {p1, v0}, Landroid/os/storage/IMountServiceListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    goto :goto_3

    .line 3991
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_4
        :pswitch_14
        :pswitch_20
        :pswitch_28
        :pswitch_30
        :pswitch_3a
    .end packed-switch
.end method

.method private notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .registers 4
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 4056
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4057
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4058
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4059
    return-void
.end method

.method private notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .registers 5
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .prologue
    .line 4049
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4050
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4051
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 4052
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4053
    return-void
.end method

.method private notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 4021
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4022
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4023
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 4024
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4025
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4026
    return-void
.end method

.method private notifyVolumeForgotten(Ljava/lang/String;)V
    .registers 4
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 4043
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4044
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4045
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4046
    return-void
.end method

.method private notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .registers 4
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .prologue
    .line 4037
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4038
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->clone()Landroid/os/storage/VolumeRecord;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4039
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4040
    return-void
.end method

.method private notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 4029
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4030
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4031
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 4032
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 4033
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4034
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3976
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3977
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 3978
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v3, :cond_1d

    .line 3979
    iget-object v4, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/storage/IMountServiceListener;

    .line 3981
    .local v1, "callback":Landroid/os/storage/IMountServiceListener;
    :try_start_15
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1, v4, v0}, invokeCallback(Landroid/os/storage/IMountServiceListener;ILcom/android/internal/os/SomeArgs;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_26

    .line 3978
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3985
    .end local v1    # "callback":Landroid/os/storage/IMountServiceListener;
    :cond_1d
    iget-object v4, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3986
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3987
    return-void

    .line 3982
    .restart local v1    # "callback":Landroid/os/storage/IMountServiceListener;
    :catch_26
    move-exception v4

    goto :goto_1a
.end method

.method public register(Landroid/os/storage/IMountServiceListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 3967
    iget-object v0, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3968
    return-void
.end method

.method public unregister(Landroid/os/storage/IMountServiceListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 3971
    iget-object v0, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3972
    return-void
.end method
