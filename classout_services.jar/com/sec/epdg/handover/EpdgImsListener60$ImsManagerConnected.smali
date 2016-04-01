.class Lcom/sec/epdg/handover/EpdgImsListener60$ImsManagerConnected;
.super Ljava/lang/Object;
.source "EpdgImsListener60.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsManagerConnected"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener60$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener60$1;

    .prologue
    .line 269
    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 272
    const-string v0, "[EpdgImsListener]"

    const-string v1, "ImsManagerConnected: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v0, :cond_16

    .line 274
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$700()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->getFields()Ljava/util/List;

    move-result-object v0

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener60;->initImsSettings(Ljava/util/List;)V
    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$800(Ljava/util/List;)V

    .line 276
    :cond_16
    return-void
.end method
