.class public Lcom/sec/epdg/mapcon/MapconConstants$IfomAppList;
.super Ljava/lang/Object;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IfomAppList"
.end annotation


# instance fields
.field private mIfomAppList:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 11
    .param p1, "dbString"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const-class v6, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    iput-object v6, p0, mIfomAppList:Ljava/util/EnumSet;

    .line 390
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "appListStr":[Ljava/lang/String;
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_14
    if-ge v4, v5, :cond_5d

    aget-object v2, v3, v4

    .line 392
    .local v2, "appStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->getIfomAppType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    move-result-object v0

    .line 395
    .local v0, "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    iget-object v6, p0, mIfomAppList:Ljava/util/EnumSet;

    invoke-virtual {v6, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 396
    const-string v6, "[MAPCON]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IfomAppList Invalid key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 400
    :cond_55
    iget-object v6, p0, mIfomAppList:Ljava/util/EnumSet;

    invoke-virtual {v6, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 391
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 402
    .end local v0    # "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    .end local v2    # "appStr":Ljava/lang/String;
    :cond_5d
    return-void
.end method


# virtual methods
.method public getIfomAppList()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, mIfomAppList:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
