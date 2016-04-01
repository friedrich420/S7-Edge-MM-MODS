.class public Lcom/android/server/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"


# static fields
.field private static sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/fingerprint/FingerprintsUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mUsers:Landroid/util/SparseArray;

    .line 56
    return-void
.end method

.method public static getInstance()Lcom/android/server/fingerprint/FingerprintUtils;
    .registers 2

    .prologue
    .line 47
    sget-object v1, sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_3
    sget-object v0, sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

    if-nez v0, :cond_e

    .line 49
    new-instance v0, Lcom/android/server/fingerprint/FingerprintUtils;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

    .line 51
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 52
    sget-object v0, sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0

    .line 51
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintsUserState;

    .line 101
    .local v0, "state":Lcom/android/server/fingerprint/FingerprintsUserState;
    if-nez v0, :cond_15

    .line 102
    new-instance v0, Lcom/android/server/fingerprint/FingerprintsUserState;

    .end local v0    # "state":Lcom/android/server/fingerprint/FingerprintsUserState;
    invoke-direct {v0, p1, p2}, Lcom/android/server/fingerprint/FingerprintsUserState;-><init>(Landroid/content/Context;I)V

    .line 103
    .restart local v0    # "state":Lcom/android/server/fingerprint/FingerprintsUserState;
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    :cond_15
    monitor-exit p0

    return-object v0

    .line 106
    .end local v0    # "state":Lcom/android/server/fingerprint/FingerprintsUserState;
    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static vibrateFingerprintError(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 84
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 86
    const v1, 0xc36d

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 88
    :cond_1a
    return-void
.end method

.method public static vibrateFingerprintSuccess(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 92
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 94
    const v1, 0xc369

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 96
    :cond_1a
    return-void
.end method


# virtual methods
.method public addFingerprintForUser(Landroid/content/Context;II)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p3}, getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/fingerprint/FingerprintsUserState;->addFingerprint(II)V

    .line 64
    return-void
.end method

.method public addFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I
    .param p4, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 67
    invoke-direct {p0, p1, p3}, getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/fingerprint/FingerprintsUserState;->addFingerprint(IILjava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getFingerprints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeFingerprintIdForUser(Landroid/content/Context;II)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p3}, getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/FingerprintsUserState;->removeFingerprint(I)V

    .line 72
    return-void
.end method

.method public renameFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I
    .param p4, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 75
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    :goto_6
    return-void

    .line 79
    :cond_7
    invoke-direct {p0, p1, p3}, getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/android/server/fingerprint/FingerprintsUserState;->renameFingerprint(ILjava/lang/CharSequence;)V

    goto :goto_6
.end method
