.class Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;
.super Ljava/lang/Object;
.source "IPSecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPSecServiceStatus"
.end annotation


# instance fields
.field data:Lcom/ipsec/client/IPsecEventData;

.field error:Lcom/ipsec/client/IPsecError;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sec/epdg/IPSecAdapter$1;

    .prologue
    .line 1851
    invoke-direct {p0}, <init>()V

    return-void
.end method
