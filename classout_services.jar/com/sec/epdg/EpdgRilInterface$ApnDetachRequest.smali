.class public Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;
.super Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;
.source "EpdgRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnDetachRequest"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "cid"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;-><init>(I)V

    .line 61
    return-void
.end method
