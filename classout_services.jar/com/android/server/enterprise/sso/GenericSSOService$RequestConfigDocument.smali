.class Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
.super Ljava/lang/Object;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestConfigDocument"
.end annotation


# instance fields
.field XMLDoc:Lorg/w3c/dom/Document;

.field private enrolledVendor:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 3
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v0, 0x0

    .line 4320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4307
    iput-object v0, p0, XMLDoc:Lorg/w3c/dom/Document;

    .line 4312
    iput-object v0, p0, enrolledVendor:Lorg/w3c/dom/Node;

    .line 4321
    iput-object p1, p0, XMLDoc:Lorg/w3c/dom/Document;

    .line 4322
    invoke-direct {p0}, update()V

    .line 4323
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    .prologue
    .line 4306
    invoke-direct {p0}, update()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    .prologue
    .line 4306
    invoke-direct {p0}, getEnrolledSSOPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    .prologue
    .line 4306
    invoke-direct {p0}, getEnrolledSSOVendor()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method private getEnrolledSSOPackageName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4363
    iget-object v0, p0, enrolledVendor:Lorg/w3c/dom/Node;

    if-nez v0, :cond_6

    .line 4364
    const/4 v0, 0x0

    .line 4365
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, enrolledVendor:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string/jumbo v1, "servicepackagename"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 4359
    iget-object v0, p0, enrolledVendor:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private update()V
    .registers 4

    .prologue
    .line 4330
    :try_start_0
    invoke-direct {p0}, updateEnrolledSSOVendor()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_11

    .line 4338
    :cond_3
    :goto_3
    return-void

    .line 4331
    :catch_4
    move-exception v0

    .line 4332
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 4333
    const-string v1, "GenericSSOService"

    const-string v2, "In update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 4334
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_11
    move-exception v0

    .line 4335
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 4336
    const-string v1, "GenericSSOService"

    const-string v2, "In update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private updateEnrolledSSOVendor()V
    .registers 7

    .prologue
    .line 4341
    iget-object v4, p0, XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 4342
    .local v1, "root":Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    iput-object v4, p0, enrolledVendor:Lorg/w3c/dom/Node;

    .line 4343
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 4344
    .local v3, "solutionNodes":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_15

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-nez v4, :cond_16

    .line 4356
    :cond_15
    :goto_15
    return-void

    .line 4348
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_15

    .line 4349
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 4350
    .local v2, "solution":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_38

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ssoprovider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 4352
    iput-object v2, p0, enrolledVendor:Lorg/w3c/dom/Node;

    goto :goto_15

    .line 4348
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method
