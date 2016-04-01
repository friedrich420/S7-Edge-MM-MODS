.class public Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrongAuthTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;
    }
.end annotation


# static fields
.field private static final ALLOWING_FINGERPRINT:I = 0x14

.field public static final DEFAULT:I = 0x1

.field public static final SOME_AUTH_REQUIRED_AFTER_USER_REQUEST:I = 0x4

.field public static final SOME_AUTH_REQUIRED_AFTER_WRONG_CREDENTIAL:I = 0x10

.field public static final STRONG_AUTH_NOT_REQUIRED:I = 0x0

.field public static final STRONG_AUTH_REQUIRED_AFTER_BOOT:I = 0x1

.field public static final STRONG_AUTH_REQUIRED_AFTER_DPM_LOCK_NOW:I = 0x2

.field public static final STRONG_AUTH_REQUIRED_AFTER_LOCKOUT:I = 0x8


# instance fields
.field private final mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

.field private final mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

.field final mStub:Landroid/app/trust/IStrongAuthTracker$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2177
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, <init>(Landroid/os/Looper;)V

    .line 2178
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2173
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    .line 2237
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;-><init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    iput-object v0, p0, mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    .line 2185
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;-><init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    .line 2186
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .prologue
    .line 2126
    iget-object v0, p0, mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    return-object v0
.end method


# virtual methods
.method public getStrongAuthForUser(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2196
    iget-object v0, p0, mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method handleStrongAuthRequiredChanged(II)V
    .registers 5
    .param p1, "strongAuthFlags"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2225
    invoke-virtual {p0, p2}, getStrongAuthForUser(I)I

    move-result v0

    .line 2226
    .local v0, "oldValue":I
    if-eq p1, v0, :cond_11

    .line 2227
    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    .line 2228
    iget-object v1, p0, mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2232
    :goto_e
    invoke-virtual {p0, p2}, onStrongAuthRequiredChanged(I)V

    .line 2234
    :cond_11
    return-void

    .line 2230
    :cond_12
    iget-object v1, p0, mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_e
.end method

.method public isFingerprintAllowedForUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 2213
    invoke-virtual {p0, p1}, getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, -0x1d

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isTrustAllowedForUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 2204
    invoke-virtual {p0, p1}, getStrongAuthForUser(I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onStrongAuthRequiredChanged(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 2220
    return-void
.end method
