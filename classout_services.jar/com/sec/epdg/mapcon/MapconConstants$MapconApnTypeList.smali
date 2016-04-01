.class public Lcom/sec/epdg/mapcon/MapconConstants$MapconApnTypeList;
.super Ljava/lang/Object;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MapconApnTypeList"
.end annotation


# instance fields
.field private mMapconApnTypeList:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 11
    .param p1, "dbString"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v6, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    iput-object v6, p0, mMapconApnTypeList:Ljava/util/EnumSet;

    .line 29
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "apnTypeListStr":[Ljava/lang/String;
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_14
    if-ge v4, v5, :cond_45

    aget-object v2, v3, v4

    .line 31
    .local v2, "apnTypeStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v0

    .line 34
    .local v0, "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    iget-object v6, p0, mMapconApnTypeList:Ljava/util/EnumSet;

    invoke-virtual {v6, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 35
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

    .line 38
    :cond_3d
    iget-object v6, p0, mMapconApnTypeList:Ljava/util/EnumSet;

    invoke-virtual {v6, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 40
    .end local v0    # "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .end local v2    # "apnTypeStr":Ljava/lang/String;
    :cond_45
    return-void
.end method


# virtual methods
.method public getMapconApnTypeList()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, mMapconApnTypeList:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
