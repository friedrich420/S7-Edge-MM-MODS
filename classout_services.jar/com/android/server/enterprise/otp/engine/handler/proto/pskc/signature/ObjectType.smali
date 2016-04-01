.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;
.super Ljava/lang/Object;
.source "ObjectType.java"


# instance fields
.field private mObjectEncoding:Ljava/lang/String;

.field private mObjectId:Ljava/lang/String;

.field private mObjectMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObjectEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, mObjectEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, mObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, mObjectMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public setObjectEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "mObjectEncoding"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, mObjectEncoding:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .registers 2
    .param p1, "mObjectId"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, mObjectId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setObjectMimeType(Ljava/lang/String;)V
    .registers 2
    .param p1, "mObjectMimeType"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, mObjectMimeType:Ljava/lang/String;

    .line 28
    return-void
.end method
