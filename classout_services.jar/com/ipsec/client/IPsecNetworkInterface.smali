.class public Lcom/ipsec/client/IPsecNetworkInterface;
.super Ljava/lang/Object;
.source "IPsecNetworkInterface.java"


# instance fields
.field private interfaceName:Ljava/lang/String;

.field private precedence:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0xa

    iput v0, p0, precedence:I

    .line 30
    if-eqz p1, :cond_10

    .line 31
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, interfaceName:Ljava/lang/String;

    .line 32
    :cond_10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "precedence"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0xa

    iput v0, p0, precedence:I

    .line 48
    if-eqz p1, :cond_10

    .line 49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, interfaceName:Ljava/lang/String;

    .line 50
    :cond_10
    iput p2, p0, precedence:I

    .line 51
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, interfaceName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, interfaceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public getPrecedence()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, precedence:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPsecNetworkInterface{interfaceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', precedence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, precedence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
