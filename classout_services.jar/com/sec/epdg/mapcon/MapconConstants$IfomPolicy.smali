.class public Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
.super Ljava/lang/Object;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IfomPolicy"
.end annotation


# instance fields
.field private apnList:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;",
            ">;"
        }
    .end annotation
.end field

.field private ratList:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "apnDbString"    # Ljava/lang/String;
    .param p2, "ratDbString"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    const-class v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, apnList:Ljava/util/EnumSet;

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, ratList:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .line 374
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnTypeList;

    invoke-direct {v0, p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnTypeList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnTypeList;->getMapconApnTypeList()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, apnList:Ljava/util/EnumSet;

    .line 375
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;

    invoke-direct {v0, p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;->getMapconPrefListArray()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v0

    iput-object v0, p0, ratList:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .line 376
    return-void
.end method


# virtual methods
.method public getIfomPolicyApnList()Ljava/util/EnumSet;
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
    .line 378
    iget-object v0, p0, apnList:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getIfomPolicyRatList()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, ratList:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v0}, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    return-object v0
.end method
