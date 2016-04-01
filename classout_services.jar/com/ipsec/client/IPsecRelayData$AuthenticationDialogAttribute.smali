.class public Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;
.super Ljava/lang/Object;
.source "IPsecRelayData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecRelayData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationDialogAttribute"
.end annotation


# instance fields
.field private attributeName:Ljava/lang/String;

.field private attributeValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "aName"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, attributeName:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, attributeName:Ljava/lang/String;

    .line 308
    iput-object p2, p0, attributeValue:Ljava/lang/String;

    .line 309
    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, attributeValue:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, attributeValue:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 349
    iget-object v0, p0, attributeValue:Ljava/lang/String;

    .line 351
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, attributeName:Ljava/lang/String;

    const-string v2, "PASSCODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 353
    new-instance v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, attributeValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v0    # "value":Ljava/lang/String;
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthenticationDialogAttribute{attributeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, attributeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attributeValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
