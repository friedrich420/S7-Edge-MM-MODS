.class public Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
.super Ljava/lang/Object;
.source "SdpDomain.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_7

    const-string p1, ""

    .end local p1    # "alias":Ljava/lang/String;
    :cond_7
    iput-object p1, p0, mAlias:Ljava/lang/String;

    .line 33
    if-nez p2, :cond_d

    const-string p2, ""

    .end local p2    # "pkgName":Ljava/lang/String;
    :cond_d
    iput-object p2, p0, mPackageName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 53
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdpDomain { alias : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / pkgName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
