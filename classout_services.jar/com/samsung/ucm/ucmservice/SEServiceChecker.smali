.class public Lcom/samsung/ucm/ucmservice/SEServiceChecker;
.super Ljava/lang/Object;
.source "SEServiceChecker.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/SEService$CallBack;


# static fields
.field private static final TAG:Ljava/lang/String; = "MySEServiceCallback"


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mSeService:Lorg/simalliance/openmobileapi/SEService;

.field serviceNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, mSeService:Lorg/simalliance/openmobileapi/SEService;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, serviceNameList:Ljava/util/List;

    .line 19
    new-instance v0, Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {v0, p1, p0}, Lorg/simalliance/openmobileapi/SEService;-><init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V

    iput-object v0, p0, mSeService:Lorg/simalliance/openmobileapi/SEService;

    .line 20
    return-void
.end method


# virtual methods
.method public existSEService(Ljava/lang/String;)Z
    .registers 9
    .param p1, "storageType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 23
    iget-object v5, p0, serviceNameList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 24
    .local v2, "serviceCount":I
    if-nez v2, :cond_12

    .line 25
    const-string v4, "MySEServiceCallback"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_11
    :goto_11
    return v3

    .line 29
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    if-ge v0, v2, :cond_11

    .line 31
    iget-object v5, p0, serviceNameList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_2e

    .line 33
    const-string v5, "MySEServiceCallback"

    const-string/jumbo v6, "name is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 37
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_58

    .line 38
    const-string v3, "MySEServiceCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 39
    goto :goto_11

    .line 42
    :cond_58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_96

    .line 44
    const-string v3, "MySEServiceCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 45
    goto/16 :goto_11

    .line 48
    :cond_96
    const-string v5, "1"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_2b

    .line 50
    const-string v3, "MySEServiceCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 51
    goto/16 :goto_11
.end method

.method public serviceConnected(Lorg/simalliance/openmobileapi/SEService;)V
    .registers 10
    .param p1, "services"    # Lorg/simalliance/openmobileapi/SEService;

    .prologue
    .line 59
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/SEService;->getReaders()[Lorg/simalliance/openmobileapi/Reader;

    move-result-object v4

    .line 60
    .local v4, "readers":[Lorg/simalliance/openmobileapi/Reader;
    array-length v0, v4

    .line 61
    .local v0, "count":I
    const-string v5, "MySEServiceCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reader count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_64

    .line 63
    aget-object v3, v4, v1

    .line 64
    .local v3, "reader":Lorg/simalliance/openmobileapi/Reader;
    if-nez v3, :cond_2f

    .line 65
    const-string v5, "MySEServiceCallback"

    const-string/jumbo v6, "reader is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 68
    :cond_2f
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_45

    .line 70
    :cond_3c
    const-string v5, "MySEServiceCallback"

    const-string/jumbo v6, "name is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 74
    :cond_45
    const-string v5, "MySEServiceCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v5, p0, serviceNameList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 77
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "reader":Lorg/simalliance/openmobileapi/Reader;
    :cond_64
    return-void
.end method
