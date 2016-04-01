.class Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationConfigDocument"
.end annotation


# instance fields
.field XMLDoc:Lorg/w3c/dom/Document;

.field private authIDProvider:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 3
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v0, 0x0

    .line 1578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1575
    iput-object v0, p0, XMLDoc:Lorg/w3c/dom/Document;

    .line 1576
    iput-object v0, p0, authIDProvider:Lorg/w3c/dom/Node;

    .line 1579
    iput-object p1, p0, XMLDoc:Lorg/w3c/dom/Document;

    .line 1580
    invoke-direct {p0}, update()V

    .line 1581
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    .prologue
    .line 1574
    invoke-direct {p0}, getAuthIDProvider()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    .prologue
    .line 1574
    invoke-direct {p0}, update()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    .prologue
    .line 1574
    invoke-direct {p0}, getAuthIdpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAuthIDProvider()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 1613
    iget-object v0, p0, authIDProvider:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private getAuthIdpPackageName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1617
    iget-object v1, p0, authIDProvider:Lorg/w3c/dom/Node;

    if-nez v1, :cond_6

    .line 1618
    const/4 v1, 0x0

    .line 1620
    :goto_5
    return-object v1

    .line 1619
    :cond_6
    iget-object v0, p0, authIDProvider:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Element;

    .line 1620
    .local v0, "e":Lorg/w3c/dom/Element;
    const-string/jumbo v1, "servicepackagename"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method private update()V
    .registers 4

    .prologue
    .line 1585
    :try_start_0
    invoke-direct {p0}, updateIDAuthenticator()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_11

    .line 1593
    :cond_3
    :goto_3
    return-void

    .line 1586
    :catch_4
    move-exception v0

    .line 1587
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 1588
    const-string v1, "EnterpriseIdentity"

    const-string v2, "In AuthenticationConfigDocument update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1589
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_11
    move-exception v0

    .line 1590
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 1591
    const-string v1, "EnterpriseIdentity"

    const-string v2, "In AuthenticationConfigDocument update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private updateIDAuthenticator()V
    .registers 7

    .prologue
    .line 1596
    iget-object v4, p0, XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1597
    .local v1, "root":Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    iput-object v4, p0, authIDProvider:Lorg/w3c/dom/Node;

    .line 1598
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1599
    .local v3, "solutionNodes":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_15

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-nez v4, :cond_16

    .line 1610
    :cond_15
    :goto_15
    return-void

    .line 1602
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_15

    .line 1603
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1604
    .local v2, "solution":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_37

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "authenticationprovider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1606
    iput-object v2, p0, authIDProvider:Lorg/w3c/dom/Node;

    goto :goto_15

    .line 1602
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method
