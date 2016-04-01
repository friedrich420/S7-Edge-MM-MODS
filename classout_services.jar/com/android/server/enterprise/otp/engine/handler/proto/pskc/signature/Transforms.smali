.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;
.super Ljava/lang/Object;
.source "Transforms.java"


# instance fields
.field private mReferenceTransformAlgo:Ljava/lang/String;

.field private mReferenceTransformXPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReferenceTransformAlgo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, mReferenceTransformAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceTransformXPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    iget-object v0, p0, mReferenceTransformXPath:Ljava/lang/String;

    return-object v0
.end method

.method public setReferenceTransformAlgo(Ljava/lang/String;)V
    .registers 2
    .param p1, "mReferenceTransformAlgo"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, mReferenceTransformAlgo:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setReferenceTransformXPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "mReferenceTransformXPath"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, mReferenceTransformXPath:Ljava/lang/String;

    .line 14
    return-void
.end method
