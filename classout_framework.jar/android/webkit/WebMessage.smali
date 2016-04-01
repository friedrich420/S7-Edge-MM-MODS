.class public Landroid/webkit/WebMessage;
.super Ljava/lang/Object;
.source "WebMessage.java"


# instance fields
.field private mData:Ljava/lang/String;

.field private mPorts:[Landroid/webkit/WebMessagePort;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, mData:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/webkit/WebMessagePort;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "ports"    # [Landroid/webkit/WebMessagePort;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, mData:Ljava/lang/String;

    .line 45
    iput-object p2, p0, mPorts:[Landroid/webkit/WebMessagePort;

    .line 46
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, mData:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[Landroid/webkit/WebMessagePort;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, mPorts:[Landroid/webkit/WebMessagePort;

    return-object v0
.end method
