.class Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
.super Ljava/lang/Object;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TokenConfigDocument"
.end annotation


# instance fields
.field XMLDoc:Lorg/w3c/dom/Document;

.field deviceCert:Lorg/w3c/dom/Node;

.field tokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field userCert:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 3
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v0, 0x0

    .line 4398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4376
    iput-object v0, p0, XMLDoc:Lorg/w3c/dom/Document;

    .line 4381
    iput-object v0, p0, tokens:Ljava/util/HashMap;

    .line 4385
    iput-object v0, p0, deviceCert:Lorg/w3c/dom/Node;

    .line 4389
    iput-object v0, p0, userCert:Lorg/w3c/dom/Node;

    .line 4399
    iput-object p1, p0, XMLDoc:Lorg/w3c/dom/Document;

    .line 4400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, tokens:Ljava/util/HashMap;

    .line 4401
    invoke-direct {p0}, update()V

    .line 4402
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    .prologue
    .line 4375
    invoke-direct {p0}, update()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    .prologue
    .line 4375
    invoke-direct {p0}, getUserCertificate()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    .prologue
    .line 4375
    invoke-direct {p0}, getDeviceCertificate()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4375
    invoke-direct {p0, p1}, getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceCertificate()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 4445
    iget-object v0, p0, deviceCert:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3
    .param p1, "appPkgName"    # Ljava/lang/String;

    .prologue
    .line 4453
    if-eqz p1, :cond_b

    .line 4454
    iget-object v0, p0, tokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 4455
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getUserCertificate()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 4449
    iget-object v0, p0, userCert:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private update()V
    .registers 4

    .prologue
    .line 4409
    :try_start_0
    invoke-direct {p0}, updateToken()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_11

    .line 4417
    :cond_3
    :goto_3
    return-void

    .line 4410
    :catch_4
    move-exception v0

    .line 4411
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 4412
    const-string v1, "GenericSSOService"

    const-string v2, "In update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 4413
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_11
    move-exception v0

    .line 4414
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 4415
    const-string v1, "GenericSSOService"

    const-string v2, "In update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private updateToken()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 4420
    iget-object v5, p0, XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 4421
    .local v2, "root":Lorg/w3c/dom/Node;
    iget-object v5, p0, tokens:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 4422
    iput-object v6, p0, deviceCert:Lorg/w3c/dom/Node;

    .line 4423
    iput-object v6, p0, userCert:Lorg/w3c/dom/Node;

    .line 4424
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 4425
    .local v4, "tokenNodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_75

    .line 4426
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 4427
    .local v3, "token":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v7, :cond_49

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "apptoken"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 4429
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string/jumbo v6, "packagename"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 4432
    .local v0, "appPkgName":Ljava/lang/String;
    iget-object v5, p0, tokens:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4425
    .end local v0    # "appPkgName":Ljava/lang/String;
    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 4433
    :cond_49
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v7, :cond_5f

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "devicecertificate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 4436
    iput-object v3, p0, deviceCert:Lorg/w3c/dom/Node;

    goto :goto_46

    .line 4437
    :cond_5f
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v7, :cond_46

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "usercertificate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 4439
    iput-object v3, p0, userCert:Lorg/w3c/dom/Node;

    goto :goto_46

    .line 4442
    .end local v3    # "token":Lorg/w3c/dom/Node;
    :cond_75
    return-void
.end method
