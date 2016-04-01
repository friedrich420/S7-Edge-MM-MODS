.class public Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
.super Ljava/lang/Object;
.source "EpdgNetHandoverInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[HANDOVERRESULTINFO]"


# instance fields
.field private mAct:I

.field private mCause:I

.field private mPdnType:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x2

    iput v0, p0, mState:I

    .line 12
    const/16 v0, 0xff

    iput v0, p0, mAct:I

    .line 13
    const/4 v0, 0x4

    iput v0, p0, mCause:I

    .line 14
    const/4 v0, 0x0

    iput v0, p0, mPdnType:I

    .line 15
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "act"    # I
    .param p3, "pdnType"    # I
    .param p4, "cause"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, mState:I

    .line 19
    iput p2, p0, mAct:I

    .line 20
    iput p4, p0, mCause:I

    .line 21
    iput p3, p0, mPdnType:I

    .line 22
    return-void
.end method


# virtual methods
.method public getAct()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, mAct:I

    return v0
.end method

.method public getPdnType()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, mPdnType:I

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, mState:I

    return v0
.end method

.method public getmCause()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, mCause:I

    return v0
.end method
