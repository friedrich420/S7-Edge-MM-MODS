.class public Lcom/android/server/LockSettingsStrongAuth;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"


# static fields
.field private static final MSG_REGISTER_TRACKER:I = 0x2

.field private static final MSG_REMOVE_USER:I = 0x4

.field private static final MSG_REQUIRE_STRONG_AUTH:I = 0x1

.field private static final MSG_UNREGISTER_TRACKER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LockSettings"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mStrongAuthForUser:Landroid/util/SparseIntArray;

.field private final mStrongAuthTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/trust/IStrongAuthTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mStrongAuthTrackers:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 148
    new-instance v0, Lcom/android/server/LockSettingsStrongAuth$1;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsStrongAuth$1;-><init>(Lcom/android/server/LockSettingsStrongAuth;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsStrongAuth;
    .param p1, "x1"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 38
    invoke-direct {p0, p1}, handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsStrongAuth;
    .param p1, "x1"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 38
    invoke-direct {p0, p1}, handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/LockSettingsStrongAuth;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LockSettingsStrongAuth;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, handleRequireStrongAuth(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LockSettingsStrongAuth;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsStrongAuth;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, handleRemoveUser(I)V

    return-void
.end method

.method private handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 8
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1f

    .line 52
    iget-object v4, p0, mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v4}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_1c

    .line 67
    :cond_1b
    return-void

    .line 51
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :cond_1f
    iget-object v4, p0, mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v1, 0x0

    :goto_25
    iget-object v4, p0, mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1b

    .line 59
    iget-object v4, p0, mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 60
    .local v2, "key":I
    iget-object v4, p0, mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 62
    .local v3, "value":I
    :try_start_39
    invoke-interface {p1, v3, v2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_3f

    .line 58
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 63
    :catch_3f
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "LockSettings"

    const-string v5, "Exception while adding StrongAuthTracker."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method private handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 5
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 71
    iget-object v1, p0, mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_21

    .line 72
    iget-object v1, p0, mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 76
    :cond_20
    return-void

    .line 70
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleRemoveUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 101
    iget-object v1, p0, mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 102
    .local v0, "index":I
    if-ltz v0, :cond_11

    .line 103
    iget-object v1, p0, mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 104
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, notifyStrongAuthTrackers(II)V

    .line 106
    :cond_11
    return-void
.end method

.method private handleRequireStrongAuth(II)V
    .registers 6
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 79
    const/4 v2, -0x1

    if-ne p2, v2, :cond_18

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 81
    iget-object v2, p0, mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 82
    .local v1, "key":I
    invoke-direct {p0, p1, v1}, handleRequireStrongAuthOneUser(II)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 85
    .end local v0    # "i":I
    .end local v1    # "key":I
    :cond_18
    invoke-direct {p0, p1, p2}, handleRequireStrongAuthOneUser(II)V

    .line 87
    :cond_1b
    return-void
.end method

.method private handleRequireStrongAuthOneUser(II)V
    .registers 7
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 90
    iget-object v2, p0, mStrongAuthForUser:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 91
    .local v1, "oldValue":I
    if-nez p1, :cond_15

    const/4 v0, 0x0

    .line 94
    .local v0, "newValue":I
    :goto_a
    if-eq v1, v0, :cond_14

    .line 95
    iget-object v2, p0, mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    invoke-direct {p0, v0, p2}, notifyStrongAuthTrackers(II)V

    .line 98
    :cond_14
    return-void

    .line 91
    .end local v0    # "newValue":I
    :cond_15
    or-int v0, v1, p1

    goto :goto_a
.end method

.method private notifyStrongAuthTrackers(II)V
    .registers 7
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 111
    :try_start_9
    iget-object v2, p0, mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v2, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_14
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_14} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_27

    .line 109
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    :catch_17
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v2, "LockSettings"

    const-string v3, "Removing dead StrongAuthTracker."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 115
    add-int/lit8 v1, v1, -0x1

    .line 118
    goto :goto_14

    .line 116
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_27
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LockSettings"

    const-string v3, "Exception while notifying StrongAuthTracker."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    return-void
.end method


# virtual methods
.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 4
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 123
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method

.method public removeUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 131
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    return-void
.end method

.method public reportUnlock(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, requireStrongAuth(II)V

    .line 146
    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 5
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 135
    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    if-ltz p2, :cond_10

    .line 136
    :cond_5
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void

    .line 139
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userId must be an explicit user id or USER_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 4
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 127
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void
.end method
