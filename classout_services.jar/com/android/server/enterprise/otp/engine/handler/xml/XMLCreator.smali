.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
.super Ljava/lang/Object;
.source "XMLCreator.java"


# instance fields
.field dBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

.field document:Lorg/w3c/dom/Document;

.field dom:Ljavax/xml/transform/dom/DOMSource;

.field result:Ljavax/xml/transform/stream/StreamResult;

.field stringWriter:Ljava/io/StringWriter;

.field tf:Ljavax/xml/transform/TransformerFactory;

.field transformer:Ljavax/xml/transform/Transformer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, document:Lorg/w3c/dom/Document;

    .line 40
    iput-object v0, p0, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 41
    iput-object v0, p0, dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 42
    iput-object v0, p0, tf:Ljavax/xml/transform/TransformerFactory;

    .line 43
    iput-object v0, p0, transformer:Ljavax/xml/transform/Transformer;

    .line 44
    iput-object v0, p0, dom:Ljavax/xml/transform/dom/DOMSource;

    .line 45
    iput-object v0, p0, result:Ljavax/xml/transform/stream/StreamResult;

    .line 46
    iput-object v0, p0, stringWriter:Ljava/io/StringWriter;

    return-void
.end method


# virtual methods
.method public createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V
    .registers 7
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    .prologue
    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getClientID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 540
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "ClientID"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 541
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getClientID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 543
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 545
    :cond_31
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    if-eqz v1, :cond_11c

    .line 546
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "AuthenticationCodeMAC"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 547
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 548
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 549
    move-object p1, v0

    .line 550
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v1

    if-eqz v1, :cond_8d

    .line 551
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "IterationCount"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 552
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 554
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 556
    :cond_8d
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e4

    .line 557
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "Mac"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 558
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 560
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e1

    .line 561
    const-string v1, "MacAlgorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_e1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 564
    :cond_e4
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11c

    .line 565
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "Nonce"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 566
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 568
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 572
    :cond_11c
    return-void
.end method

.method public createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .registers 7
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 472
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    if-eqz v1, :cond_c8

    .line 473
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "AuthenticationData"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 474
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 475
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 476
    move-object p1, v0

    .line 477
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v1

    if-eqz v1, :cond_51

    .line 478
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "IterationCount"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 479
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 481
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 483
    :cond_51
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 484
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "Mac"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 485
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 487
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_95

    .line 488
    const-string v1, "MacAlgorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_95
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 491
    :cond_98
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c8

    .line 492
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "Nonce"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 493
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 495
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 499
    :cond_c8
    return-void
.end method

.method public createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V
    .registers 7
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getClientID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 504
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "ClientID"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 505
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getClientID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 507
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 509
    :cond_31
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    if-eqz v1, :cond_11c

    .line 510
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "AuthenticationCodeMAC"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 511
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 512
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 513
    move-object p1, v0

    .line 514
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v1

    if-eqz v1, :cond_8d

    .line 515
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "IterationCount"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 516
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 518
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 520
    :cond_8d
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e4

    .line 521
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "Mac"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 522
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 524
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e1

    .line 525
    const-string v1, "MacAlgorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_e1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 528
    :cond_e4
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11c

    .line 529
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v3, "Nonce"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 530
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 532
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 535
    :cond_11c
    return-void
.end method

.method public createDSKPPKeyContainer(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .registers 11
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "mKeyContainer"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    .param p3, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v3

    if-eqz v3, :cond_e2

    .line 577
    iget-object v3, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v5, "EncryptionKey"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 578
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    move-result-object v3

    if-eqz v3, :cond_75

    .line 580
    iget-object v3, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2000/09/xmldsig#"

    const-string v5, "X509Data"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 581
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object v4, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v5, "http://www.w3.org/2000/09/xmldsig#"

    const-string v6, "X509Certificate"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 582
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object v4, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->getX509Certificate()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 584
    :cond_75
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getEncryptionKeyType()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    move-result-object v3

    if-eqz v3, :cond_ae

    .line 585
    iget-object v3, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2000/09/xmldsig#"

    const-string v5, "KeyName"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 586
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object v4, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getEncryptionKeyType()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 588
    :cond_ae
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getDerivedKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    move-result-object v3

    if-eqz v3, :cond_df

    .line 589
    iget-object v3, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2009/xmlsec-derivedkey#"

    const-string v5, "DerivedKey"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDkey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 590
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getDerivedKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p3}, createDerivedKey(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    .line 592
    :cond_df
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 594
    :cond_e2
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v3

    if-eqz v3, :cond_1ac

    .line 595
    iget-object v3, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v5, "MACMethod"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 596
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getShaAlgo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_111

    .line 598
    const-string v3, "Algorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getShaAlgo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_111
    iget-object v3, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v5, "MACKey"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherAlgo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_157

    .line 601
    iget-object v3, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2001/04/xmlenc#"

    const-string v5, "EncryptionMethod"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 602
    .local v2, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 603
    const-string v3, "Algorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherAlgo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 606
    .end local v2    # "temp":Lorg/w3c/dom/Element;
    :cond_157
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a9

    .line 607
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object v4, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v5, "http://www.w3.org/2001/04/xmlenc#"

    const-string v6, "CipherData"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 608
    iget-object v3, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2001/04/xmlenc#"

    const-string v5, "CipherValue"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 609
    .restart local v2    # "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 610
    iget-object v3, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherData()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 611
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 613
    .end local v2    # "temp":Lorg/w3c/dom/Element;
    :cond_1a9
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 615
    :cond_1ac
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_268

    .line 616
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_268

    .line 617
    iget-object v3, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v5, "KeyPackage"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 618
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 619
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 620
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v3

    if-eqz v3, :cond_204

    .line 621
    iget-object v3, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v5, "DeviceInfo"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 622
    .restart local v2    # "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {p0, v2, p3, v3}, createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V

    .line 624
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 626
    .end local v2    # "temp":Lorg/w3c/dom/Element;
    :cond_204
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    if-eqz v3, :cond_264

    .line 627
    iget-object v3, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v5, "Key"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 628
    .restart local v2    # "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 629
    const-string v4, "Id"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v4, "Algorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {p0, v2, p3, v3}, createKey(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V

    .line 632
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 616
    .end local v2    # "temp":Lorg/w3c/dom/Element;
    :cond_264
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1b3

    .line 636
    .end local v1    # "i":I
    :cond_268
    return-void
.end method

.method public createDerivedKey(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .registers 9
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "dKey"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .param p3, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 771
    const/4 v0, 0x0

    .local v0, "element":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 772
    .local v1, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 773
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "http://www.w3.org/2009/xmlsec-derivedkey#"

    const-string v4, "KeyDerivationMethod"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 774
    const-string/jumbo v2, "dKey"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 776
    const-string v2, "Algorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_30
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->getPBKDFParams()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 778
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

    const-string v4, "PBKDF2-Params"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 779
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPkcs5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->getPBKDFParams()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3}, createPBKDFParams(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    .line 781
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 783
    :cond_5a
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 785
    :cond_5d
    return-void
.end method

.method public createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V
    .registers 7
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 380
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "Manufacturer"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 381
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 383
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 385
    :cond_31
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 386
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "SerialNo"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 387
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 389
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 391
    :cond_61
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 392
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "Model"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 393
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 395
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 397
    :cond_91
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c1

    .line 398
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "DeviceBinding"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 399
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 401
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 403
    :cond_c1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_f5

    .line 404
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "StartDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 405
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 407
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 409
    :cond_f5
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_129

    .line 410
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "ExpiryDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 411
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 413
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 415
    :cond_129
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_159

    .line 416
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "UserId"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 417
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 419
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 421
    :cond_159
    return-void
.end method

.method public createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V
    .registers 8
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .param p3, "mKeyPackage"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 426
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "Manufacturer"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 427
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 429
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 431
    :cond_31
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 432
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "SerialNo"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 433
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 435
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 437
    :cond_61
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 438
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "Model"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 439
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 441
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 443
    :cond_91
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c1

    .line 444
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "DeviceBinding"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 445
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 447
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 449
    :cond_c1
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_f5

    .line 450
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "StartDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 451
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 453
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 455
    :cond_f5
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_129

    .line 456
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "ExpiryDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 457
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 459
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 461
    :cond_129
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_159

    .line 462
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "UserId"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 463
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 465
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 467
    :cond_159
    return-void
.end method

.method public createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V
    .registers 7
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 334
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "Manufacturer"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 335
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 337
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 339
    :cond_31
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 340
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "SerialNo"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 341
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 343
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 345
    :cond_61
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 346
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "Model"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 347
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 349
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 351
    :cond_91
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c1

    .line 352
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "DeviceBinding"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 353
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 355
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 357
    :cond_c1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_f5

    .line 358
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "StartDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 359
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 361
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 363
    :cond_f5
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_129

    .line 364
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "ExpiryDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 365
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 367
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 369
    :cond_129
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_159

    .line 370
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "UserId"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 371
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 373
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 375
    :cond_159
    return-void
.end method

.method public createKey(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V
    .registers 12
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .param p3, "mKey"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    .prologue
    .line 639
    const/4 v2, 0x0

    .line 640
    .local v2, "element":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 641
    .local v4, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getIssuer()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 642
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v7, "Issuer"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 643
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 644
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getIssuer()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 645
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 647
    :cond_32
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v5

    if-eqz v5, :cond_e5

    .line 648
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v7, "AlgorithmParameters"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8e

    .line 650
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v7, "Suite"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 651
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 652
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 653
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 655
    :cond_8e
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v7, "ResponseFormat"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 656
    const-string v5, "Length"

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getLength()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v5, "Encoding"

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v6

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getEncoding()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->encodingToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 660
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 662
    :cond_e5
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v5

    if-eqz v5, :cond_249

    .line 663
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v7, "Data"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v1

    .line 665
    .local v1, "data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    if-eqz v5, :cond_20a

    .line 666
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v7, "Secret"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 667
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v5

    if-eqz v5, :cond_1ce

    .line 669
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v7, "EncryptedValue"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 670
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_175

    .line 672
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "http://www.w3.org/2001/04/xmlenc#"

    const-string v7, "EncryptionMethod"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 673
    .local v3, "encryptionAlgo":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 674
    const-string v5, "Algorithm"

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 677
    .end local v3    # "encryptionAlgo":Lorg/w3c/dom/Element;
    :cond_175
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getCipherData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    move-result-object v5

    if-eqz v5, :cond_1cb

    .line 678
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "http://www.w3.org/2001/04/xmlenc#"

    const-string v7, "CipherData"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 679
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "http://www.w3.org/2001/04/xmlenc#"

    const-string v7, "CipherValue"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 680
    .local v0, "cipherValue":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 681
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getCipherData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->getCipherValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 682
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 684
    .end local v0    # "cipherValue":Lorg/w3c/dom/Element;
    :cond_1cb
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 687
    :cond_1ce
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getValueMAC()[B

    move-result-object v5

    if-eqz v5, :cond_203

    .line 688
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v7, "ValueMAC"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 689
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 690
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getValueMAC()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 691
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 693
    :cond_203
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 696
    :cond_20a
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v7, "Counter"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 697
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 698
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v7, "PlainValue"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 699
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 700
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getCounter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 701
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 702
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 704
    .end local v1    # "data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;
    :cond_249
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v5

    if-eqz v5, :cond_273

    .line 705
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v7, "Policy"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 706
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v5

    invoke-virtual {p0, v2, v5, p2}, createPolicy(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    .line 708
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 710
    :cond_273
    return-void
.end method

.method public createKeyProvClientHelloXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, "element":Lorg/w3c/dom/Element;
    const/4 v5, 0x0

    .line 128
    .local v5, "xmlBuffer":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    iput-object v6, p0, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 129
    iget-object v6, p0, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 130
    iget-object v6, p0, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    iput-object v6, p0, dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 131
    iget-object v6, p0, dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    iput-object v6, p0, document:Lorg/w3c/dom/Document;

    .line 132
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    invoke-interface {v6, p2}, Lorg/w3c/dom/Document;->setXmlVersion(Ljava/lang/String;)V

    .line 134
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "KeyProvClientHello"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 135
    .local v3, "root":Lorg/w3c/dom/Element;
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    invoke-interface {v6, v3}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 136
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_62

    .line 138
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    invoke-interface {v3, v6, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_62
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_89

    .line 140
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:pskc"

    invoke-interface {v3, v6, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_89
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixXENC()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b0

    .line 142
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixXENC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.w3.org/2001/04/xmlenc#"

    invoke-interface {v3, v6, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_b0
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getmPrefixDS()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d7

    .line 144
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getmPrefixDS()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {v3, v6, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_d7
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPKCS5()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_fe

    .line 146
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPKCS5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

    invoke-interface {v3, v6, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_fe
    const-string v6, "Version"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v6, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v6

    if-eqz v6, :cond_13f

    .line 149
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "DeviceIdentifierData"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 150
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "DeviceId"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 151
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v1, p1}, createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V

    .line 153
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 155
    :cond_13f
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getKeyID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_167

    .line 156
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "KeyID"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 157
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 158
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getKeyID()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 159
    invoke-interface {v3, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 161
    :cond_167
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyTypes()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1c2

    .line 162
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "SupportedKeyTypes"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 163
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 164
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_180
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyTypes()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1bf

    .line 165
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyTypes()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1bc

    .line 166
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "Algorithm"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 167
    .local v4, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 168
    iget-object v8, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyTypes()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v8, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 169
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 164
    .end local v4    # "temp":Lorg/w3c/dom/Element;
    :cond_1bc
    add-int/lit8 v2, v2, 0x1

    goto :goto_180

    .line 172
    :cond_1bf
    invoke-interface {v3, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 174
    .end local v2    # "i":I
    :cond_1c2
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedEncryptionAlgorithms()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_204

    .line 175
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "SupportedEncryptionAlgorithms"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 176
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "Algorithm"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 177
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 178
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedEncryptionAlgorithms()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 179
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 181
    :cond_204
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedMacAlgorithms()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_246

    .line 182
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "SupportedMacAlgorithms"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 183
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "Algorithm"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 185
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedMacAlgorithms()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 186
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 188
    :cond_246
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v6

    if-eqz v6, :cond_3a9

    .line 189
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "SupportedProtocolVariants"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 190
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getSupportedProtocolVariant()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 192
    const/4 v4, 0x0

    .line 193
    .restart local v4    # "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getmSupportedKeyProtectionMethod()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2af

    .line 194
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "SupportedKeyProtectionMethod"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 195
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 196
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getmSupportedKeyProtectionMethod()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 197
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 199
    :cond_2af
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    move-result-object v6

    if-eqz v6, :cond_33a

    .line 200
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "Payload"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 201
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "http://www.w3.org/2000/09/xmldsig#"

    const-string v9, "KeyInfo"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 202
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getmPrefixDS()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 203
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "http://www.w3.org/2000/09/xmldsig#"

    const-string v9, "X509Data"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getmPrefixDS()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 204
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    iget-object v8, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "http://www.w3.org/2000/09/xmldsig#"

    const-string v10, "X509Certificate"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getmPrefixDS()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 205
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    iget-object v8, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->getX509Certificate()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 206
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 208
    :cond_33a
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getKeyInfo()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    move-result-object v6

    if-eqz v6, :cond_3a2

    .line 209
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "Payload"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 210
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "http://www.w3.org/2000/09/xmldsig#"

    const-string v9, "KeyInfo"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 211
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getmPrefixDS()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 212
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "http://www.w3.org/2000/09/xmldsig#"

    const-string v9, "KeyName"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getmPrefixDS()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 213
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    iget-object v8, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getKeyInfo()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 214
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 216
    :cond_3a2
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 218
    .end local v4    # "temp":Lorg/w3c/dom/Element;
    :cond_3a9
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyPackageFormat()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3eb

    .line 219
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "SupportedKeyPackages"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 220
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "KeyPackageFormat"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 221
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 222
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyPackageFormat()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 223
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 225
    :cond_3eb
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v6

    if-eqz v6, :cond_409

    .line 226
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v9, "AuthenticationData"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 227
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v1, p1}, createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V

    .line 229
    invoke-interface {v3, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 231
    :cond_409
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    iput-object v6, p0, tf:Ljavax/xml/transform/TransformerFactory;

    .line 232
    iget-object v6, p0, tf:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v6

    iput-object v6, p0, transformer:Ljavax/xml/transform/Transformer;

    .line 233
    new-instance v6, Ljavax/xml/transform/dom/DOMSource;

    iget-object v8, p0, document:Lorg/w3c/dom/Document;

    invoke-direct {v6, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v6, p0, dom:Ljavax/xml/transform/dom/DOMSource;

    .line 234
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    iput-object v6, p0, stringWriter:Ljava/io/StringWriter;

    .line 235
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    iget-object v8, p0, stringWriter:Ljava/io/StringWriter;

    invoke-direct {v6, v8}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    iput-object v6, p0, result:Ljavax/xml/transform/stream/StreamResult;

    .line 236
    iget-object v6, p0, transformer:Ljavax/xml/transform/Transformer;

    iget-object v8, p0, dom:Ljavax/xml/transform/dom/DOMSource;

    iget-object v9, p0, result:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v6, v8, v9}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 237
    iget-object v6, p0, stringWriter:Ljava/io/StringWriter;

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_43e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_43e} :catch_441
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_3 .. :try_end_43e} :catch_45e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_43e} :catch_47b

    move-result-object v5

    move-object v6, v5

    .line 248
    .end local v3    # "root":Lorg/w3c/dom/Element;
    :goto_440
    return-object v6

    .line 238
    :catch_441
    move-exception v0

    .line 239
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLCreator::createKeyProvClientHelloXML: unable to create it - ParserConfiguration Exception: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    move-object v6, v7

    .line 240
    goto :goto_440

    .line 241
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_45e
    move-exception v0

    .line 242
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLCreator::createKeyProvClientHelloXML: unable to create it - TransformerConfiguration Exception: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    move-object v6, v7

    .line 243
    goto :goto_440

    .line 244
    .end local v0    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_47b
    move-exception v0

    .line 245
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLCreator::createKeyProvClientHelloXML: unable to create it - Transformer Exception: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    move-object v6, v7

    .line 246
    goto :goto_440
.end method

.method public createKeyProvServerFinishedXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "element":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 255
    .local v4, "xmlBuffer":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    iput-object v6, p0, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 256
    iget-object v6, p0, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 257
    iget-object v6, p0, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    iput-object v6, p0, dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 258
    iget-object v6, p0, dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    iput-object v6, p0, document:Lorg/w3c/dom/Document;

    .line 259
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    invoke-interface {v6, p2}, Lorg/w3c/dom/Document;->setXmlVersion(Ljava/lang/String;)V

    .line 261
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v8, "KeyProvServerFinished"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 262
    .local v2, "root":Lorg/w3c/dom/Element;
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    invoke-interface {v6, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 263
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_62

    .line 265
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmlns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    invoke-interface {v2, v6, v7, v8}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_62
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_89

    .line 267
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmlns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:pskc"

    invoke-interface {v2, v6, v7, v8}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_89
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b0

    .line 269
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmlns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "http://www.w3.org/2001/04/xmlenc#"

    invoke-interface {v2, v6, v7, v8}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_b0
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d7

    .line 271
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmlns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {v2, v6, v7, v8}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_d7
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDkey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_fe

    .line 273
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmlns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDkey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "http://www.w3.org/2009/xmlsec-derivedkey#"

    invoke-interface {v2, v6, v7, v8}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_fe
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPkcs5()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_125

    .line 275
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmlns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPkcs5()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

    invoke-interface {v2, v6, v7, v8}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_125
    const-string v6, "Version"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v6, "Status"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v6, "SessionID"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v6

    if-eqz v6, :cond_1dc

    .line 280
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v8, "KeyPackage"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 281
    .local v3, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 282
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 283
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getServerId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18c

    .line 284
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "serverId"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 285
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 286
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getServerId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 287
    invoke-interface {v3, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 289
    :cond_18c
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v6

    if-eqz v6, :cond_1dc

    .line 290
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v8, "KeyContainer"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 291
    const-string v6, "Version"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v6, "Id"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 294
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 295
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v6

    invoke-virtual {p0, v1, v6, p1}, createDSKPPKeyContainer(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    .line 298
    .end local v3    # "temp":Lorg/w3c/dom/Element;
    :cond_1dc
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    move-result-object v6

    if-eqz v6, :cond_215

    .line 299
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v8, "Mac"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 300
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 301
    const-string v6, "MacAlgorithm"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->getMac()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 303
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 305
    :cond_215
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v6

    if-eqz v6, :cond_233

    .line 306
    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v8, "AuthenticationData"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 307
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0, v1, p1}, createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    .line 309
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 311
    :cond_233
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    iput-object v6, p0, tf:Ljavax/xml/transform/TransformerFactory;

    .line 312
    iget-object v6, p0, tf:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v6

    iput-object v6, p0, transformer:Ljavax/xml/transform/Transformer;

    .line 313
    new-instance v6, Ljavax/xml/transform/dom/DOMSource;

    iget-object v7, p0, document:Lorg/w3c/dom/Document;

    invoke-direct {v6, v7}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v6, p0, dom:Ljavax/xml/transform/dom/DOMSource;

    .line 314
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    iput-object v6, p0, stringWriter:Ljava/io/StringWriter;

    .line 315
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    iget-object v7, p0, stringWriter:Ljava/io/StringWriter;

    invoke-direct {v6, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    iput-object v6, p0, result:Ljavax/xml/transform/stream/StreamResult;

    .line 316
    iget-object v6, p0, transformer:Ljavax/xml/transform/Transformer;

    iget-object v7, p0, dom:Ljavax/xml/transform/dom/DOMSource;

    iget-object v8, p0, result:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v6, v7, v8}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 317
    iget-object v6, p0, stringWriter:Ljava/io/StringWriter;

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_268
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_268} :catch_26b
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_3 .. :try_end_268} :catch_287
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_268} :catch_2a3

    move-result-object v4

    move-object v5, v4

    .line 328
    .end local v2    # "root":Lorg/w3c/dom/Element;
    :goto_26a
    return-object v5

    .line 318
    :catch_26b
    move-exception v0

    .line 319
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLCreator::createKeyProvServerFinishedXML: unable to create it - ParserConfiguration Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_26a

    .line 321
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_287
    move-exception v0

    .line 322
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLCreator::createKeyProvServerFinishedXML: unable to create it - TransformerConfiguration Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_26a

    .line 324
    .end local v0    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2a3
    move-exception v0

    .line 325
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLCreator::createKeyProvServerFinishedXML: unable to create it - Transformer Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_26a
.end method

.method public createKeyProvTriggerXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "element":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 52
    .local v3, "xmlBuffer":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    iput-object v5, p0, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 53
    iget-object v5, p0, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 54
    iget-object v5, p0, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    iput-object v5, p0, dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 55
    iget-object v5, p0, dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    iput-object v5, p0, document:Lorg/w3c/dom/Document;

    .line 56
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    invoke-interface {v5, p2}, Lorg/w3c/dom/Document;->setXmlVersion(Ljava/lang/String;)V

    .line 58
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v7, "KeyProvTrigger"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 59
    .local v2, "root":Lorg/w3c/dom/Element;
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    invoke-interface {v5, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 60
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 62
    const-string/jumbo v5, "http://www.w3.org/2000/xmlns/"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xmlns:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    invoke-interface {v2, v5, v6, v7}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_62
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_89

    .line 64
    const-string/jumbo v5, "http://www.w3.org/2000/xmlns/"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xmlns:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:pskc"

    invoke-interface {v2, v5, v6, v7}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_89
    const-string v5, "Version"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v7, "InitializationTrigger"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 68
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 69
    move-object v2, v1

    .line 70
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v5

    if-eqz v5, :cond_e0

    .line 71
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v7, "DeviceIdentifierData"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 72
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v7, "DeviceId"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v1, p1}, createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V

    .line 75
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 77
    :cond_e0
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getKeyID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_108

    .line 78
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v7, "KeyID"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 80
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getKeyID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 81
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 83
    :cond_108
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v5

    if-eqz v5, :cond_151

    .line 84
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v7, "TokenPlatformInfo"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->getKeyLocation()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_137

    .line 87
    const-string v5, "KeyLocation"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->getKeyLocation()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_137
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->getAlgoLocation()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14e

    .line 89
    const-string v5, "AlgorithmLocation"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->getAlgoLocation()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_14e
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 92
    :cond_151
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v5

    if-eqz v5, :cond_16f

    .line 93
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v7, "AuthenticationData"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 94
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v1, p1}, createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V

    .line 96
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 98
    :cond_16f
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getServerURL()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_197

    .line 99
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string v7, "ServerUrl"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getServerURL()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 102
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 104
    :cond_197
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v5

    iput-object v5, p0, tf:Ljavax/xml/transform/TransformerFactory;

    .line 105
    iget-object v5, p0, tf:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v5}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    iput-object v5, p0, transformer:Ljavax/xml/transform/Transformer;

    .line 106
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    iget-object v6, p0, document:Lorg/w3c/dom/Document;

    invoke-direct {v5, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v5, p0, dom:Ljavax/xml/transform/dom/DOMSource;

    .line 107
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    iput-object v5, p0, stringWriter:Ljava/io/StringWriter;

    .line 108
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    iget-object v6, p0, stringWriter:Ljava/io/StringWriter;

    invoke-direct {v5, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    iput-object v5, p0, result:Ljavax/xml/transform/stream/StreamResult;

    .line 109
    iget-object v5, p0, transformer:Ljavax/xml/transform/Transformer;

    iget-object v6, p0, dom:Ljavax/xml/transform/dom/DOMSource;

    iget-object v7, p0, result:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v5, v6, v7}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 110
    iget-object v5, p0, stringWriter:Ljava/io/StringWriter;

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1cc
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_1cc} :catch_1cf
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_3 .. :try_end_1cc} :catch_1eb
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_1cc} :catch_207

    move-result-object v3

    move-object v4, v3

    .line 121
    .end local v2    # "root":Lorg/w3c/dom/Element;
    :goto_1ce
    return-object v4

    .line 111
    :catch_1cf
    move-exception v0

    .line 112
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XMLCreator::CreateXML: unable to create it - ParserConfiguration Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1ce

    .line 114
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1eb
    move-exception v0

    .line 115
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XMLCreator::createKeyProvTriggerXML: unable to create it - TransformerConfiguration Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1ce

    .line 117
    .end local v0    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_207
    move-exception v0

    .line 118
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XMLCreator::createKeyProvTriggerXML: unable to create it - Transformer Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1ce
.end method

.method public createPBKDFParams(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .registers 8
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "params"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .param p3, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 788
    const/4 v0, 0x0

    .local v0, "element":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 789
    .local v1, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getSalt()[B

    move-result-object v2

    if-eqz v2, :cond_33

    .line 790
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    const-string v3, "Salt"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 791
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    const-string v3, "Specified"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 792
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getSalt()[B

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->byteToStringSalt([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 793
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 795
    :cond_33
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getIterationCount()I

    move-result v2

    if-eqz v2, :cond_55

    .line 796
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    const-string v3, "IterationCount"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 797
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getIterationCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 798
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 800
    :cond_55
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getKeyLength()I

    move-result v2

    if-eqz v2, :cond_77

    .line 801
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    const-string v3, "KeyLength"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 802
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getKeyLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 803
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 805
    :cond_77
    return-void
.end method

.method public createPinPolicy(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .registers 8
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "policy"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;
    .param p3, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "element":Lorg/w3c/dom/Element;
    iget-object v1, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v3, "PinPolicy"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 748
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 750
    const-string v1, "PinEncoding"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_22
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinKeyID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 753
    const-string v1, "PinKeyID"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinKeyID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_31
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinUsageMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 756
    const-string v1, "PinUsageMode"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinUsageMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_40
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxFailedAttempts()I

    move-result v1

    if-eqz v1, :cond_53

    .line 759
    const-string v1, "MaxFailedAttempts"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxFailedAttempts()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_53
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxLength()I

    move-result v1

    if-eqz v1, :cond_66

    .line 762
    const-string v1, "MaxFailedAttempts"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMinLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_66
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMinLength()I

    move-result v1

    if-eqz v1, :cond_79

    .line 765
    const-string v1, "MaxFailedAttempts"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMinLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_79
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 768
    return-void
.end method

.method public createPolicy(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .registers 9
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "policy"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;
    .param p3, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 713
    const/4 v0, 0x0

    .line 714
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getStartDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 715
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v4, "StartDate"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 716
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 717
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getStartDate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 718
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 720
    :cond_29
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getExpiryDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 721
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v4, "ExpiryDate"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 722
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 723
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getExpiryDate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 724
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 726
    :cond_51
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getNoOfTransactions()I

    move-result v2

    if-eqz v2, :cond_7d

    .line 727
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v4, "NumberOfTransactions"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 728
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 729
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getNoOfTransactions()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 730
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 732
    :cond_7d
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getKeyUsage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_bd

    .line 733
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_84
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getKeyUsage()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_bd

    .line 734
    iget-object v2, p0, document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string v4, "KeyUsage"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 735
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 736
    iget-object v3, p0, document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getKeyUsage()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 737
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 740
    .end local v1    # "i":I
    :cond_bd
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getPinPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;

    move-result-object v2

    if-eqz v2, :cond_ca

    .line 741
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getPinPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, createPinPolicy(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    .line 743
    :cond_ca
    return-void
.end method
