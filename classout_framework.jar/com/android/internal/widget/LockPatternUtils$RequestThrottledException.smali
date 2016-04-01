.class public final Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
.super Ljava/lang/Exception;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestThrottledException"
.end annotation


# instance fields
.field private mTimeoutMs:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "timeoutMs"    # I

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 307
    iput p1, p0, mTimeoutMs:I

    .line 308
    return-void
.end method


# virtual methods
.method public getTimeoutMs()I
    .registers 2

    .prologue
    .line 315
    iget v0, p0, mTimeoutMs:I

    return v0
.end method
