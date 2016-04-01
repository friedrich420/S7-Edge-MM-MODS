.class public Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;
.super Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;
.source "XML11NSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;
    }
.end annotation


# instance fields
.field protected fBindNamespaces:Z

.field private fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

.field protected fPerformValidation:Z

.field private fSawSpace:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    return-object v0
.end method


# virtual methods
.method protected createContentDispatcher()Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;
    .registers 2

    .prologue
    .line 773
    new-instance v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)V

    return-object v0
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .registers 3
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 766
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 767
    iput-boolean v0, p0, fPerformValidation:Z

    .line 768
    iput-boolean v0, p0, fBindNamespaces:Z

    .line 769
    return-void
.end method

.method protected scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V
    .registers 15
    .param p1, "attributes"    # Lmf/org/apache/xerces/util/XMLAttributesImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 558
    iget-object v0, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 559
    iget-object v0, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 561
    const-string v0, "EqRequiredInAttribute"

    .line 562
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 563
    iget-object v3, p0, fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 564
    iget-object v3, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 560
    invoke-virtual {p0, v0, v1}, reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    :cond_2c
    iget-object v0, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 571
    iget-boolean v0, p0, fBindNamespaces:Z

    if-eqz v0, :cond_f9

    .line 572
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v6

    .line 574
    .local v6, "attrIndex":I
    iget-object v0, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 575
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 576
    const/4 v2, 0x0

    .line 573
    invoke-virtual {p1, v0, v1, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_41
    :goto_41
    iget-object v1, p0, fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, p0, fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    .line 597
    iget-object v0, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v4, p0, fIsEntityDeclaredVC:Z

    iget-object v0, p0, fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v0, p0

    .line 596
    invoke-virtual/range {v0 .. v5}, scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v7

    .line 599
    .local v7, "isSameNormalizedAttr":Z
    iget-object v0, p0, fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 600
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {p1, v6, v12}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setValue(ILjava/lang/String;)V

    .line 602
    if-nez v7, :cond_68

    .line 603
    iget-object v0, p0, fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setNonNormalizedValue(ILjava/lang/String;)V

    .line 605
    :cond_68
    const/4 v0, 0x1

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 608
    iget-boolean v0, p0, fBindNamespaces:Z

    if-eqz v0, :cond_f8

    .line 610
    iget-object v0, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 612
    .local v8, "localpart":Ljava/lang/String;
    iget-object v0, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_124

    .line 613
    iget-object v0, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 617
    .local v10, "prefix":Ljava/lang/String;
    :goto_7e
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v10, v0, :cond_8a

    .line 618
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v10, v0, :cond_145

    .line 619
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v8, v0, :cond_145

    .line 622
    :cond_8a
    iget-object v0, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 625
    .local v11, "uri":Ljava/lang/String;
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v10, v0, :cond_ab

    .line 626
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v8, v0, :cond_ab

    .line 627
    iget-object v0, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 628
    const-string/jumbo v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 629
    const-string v2, "CantBindXMLNS"

    .line 630
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v5, v3, v4

    .line 631
    const/4 v4, 0x2

    .line 627
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 635
    :cond_ab
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v11, v0, :cond_c2

    .line 636
    iget-object v0, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 637
    const-string/jumbo v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 638
    const-string v2, "CantBindXMLNS"

    .line 639
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v5, v3, v4

    .line 640
    const/4 v4, 0x2

    .line 636
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 644
    :cond_c2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-ne v8, v0, :cond_128

    .line 645
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v11, v0, :cond_dd

    .line 646
    iget-object v0, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 647
    const-string/jumbo v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 648
    const-string v2, "CantBindXML"

    .line 649
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v5, v3, v4

    .line 650
    const/4 v4, 0x2

    .line 646
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 665
    :cond_dd
    :goto_dd
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v8, v0, :cond_140

    move-object v10, v8

    .line 672
    :goto_e2
    iget-object v0, p0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 674
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_143

    .line 672
    .end local v11    # "uri":Ljava/lang/String;
    :goto_ea
    invoke-interface {v0, v10, v11}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 678
    iget-object v0, p0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    .line 692
    .end local v8    # "localpart":Ljava/lang/String;
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_f8
    :goto_f8
    return-void

    .line 578
    .end local v6    # "attrIndex":I
    .end local v7    # "isSameNormalizedAttr":Z
    .end local v12    # "value":Ljava/lang/String;
    :cond_f9
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v9

    .line 581
    .local v9, "oldLen":I
    iget-object v0, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 582
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 583
    const/4 v2, 0x0

    .line 580
    invoke-virtual {p1, v0, v1, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 586
    .restart local v6    # "attrIndex":I
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v0

    if-ne v9, v0, :cond_41

    .line 588
    const-string v0, "AttributeNotUnique"

    .line 589
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 590
    iget-object v3, p0, fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 591
    iget-object v3, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 587
    invoke-virtual {p0, v0, v1}, reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_41

    .line 614
    .end local v9    # "oldLen":I
    .restart local v7    # "isSameNormalizedAttr":Z
    .restart local v8    # "localpart":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    :cond_124
    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_7e

    .line 655
    .restart local v10    # "prefix":Ljava/lang/String;
    .restart local v11    # "uri":Ljava/lang/String;
    :cond_128
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v11, v0, :cond_dd

    .line 656
    iget-object v0, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 657
    const-string/jumbo v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 658
    const-string v2, "CantBindXML"

    .line 659
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v5, v3, v4

    .line 660
    const/4 v4, 0x2

    .line 656
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_dd

    .line 667
    :cond_140
    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_e2

    .line 674
    :cond_143
    const/4 v11, 0x0

    goto :goto_ea

    .line 682
    .end local v11    # "uri":Ljava/lang/String;
    :cond_145
    iget-object v0, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_f8

    .line 685
    iget-object v0, p0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_f8
.end method

.method protected scanEndElement()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 713
    iget-object v0, p0, fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v1, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 724
    iget-object v0, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 726
    const-string v0, "ETagRequired"

    .line 727
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 725
    invoke-virtual {p0, v0, v1}, reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    :cond_22
    iget-object v0, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 732
    iget-object v0, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 734
    const-string v0, "ETagUnterminated"

    .line 735
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 733
    invoke-virtual {p0, v0, v1}, reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    :cond_3e
    iget v0, p0, fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, fMarkupDepth:I

    .line 740
    iget v0, p0, fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, fMarkupDepth:I

    .line 743
    iget v0, p0, fMarkupDepth:I

    iget-object v1, p0, fEntityStack:[I

    iget v2, p0, fEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ge v0, v1, :cond_63

    .line 745
    const-string v0, "ElementEntityMismatch"

    .line 746
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 744
    invoke-virtual {p0, v0, v1}, reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    :cond_63
    iget-object v0, p0, fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_78

    .line 752
    iget-object v0, p0, fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 753
    iget-boolean v0, p0, fBindNamespaces:Z

    if-eqz v0, :cond_78

    .line 754
    iget-object v0, p0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 759
    :cond_78
    iget v0, p0, fMarkupDepth:I

    return v0
.end method

.method protected scanStartElement()Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v11, v0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-object/from16 v0, p0

    iget-object v12, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 135
    move-object/from16 v0, p0

    iget-object v11, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 136
    .local v8, "rawname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v11, v0, fBindNamespaces:Z

    if-eqz v11, :cond_6a

    .line 137
    move-object/from16 v0, p0

    iget-object v11, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 138
    move-object/from16 v0, p0

    iget v11, v0, fScannerState:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_6a

    .line 139
    move-object/from16 v0, p0

    iget-boolean v11, v0, fPerformValidation:Z

    if-eqz v11, :cond_6a

    .line 140
    move-object/from16 v0, p0

    iget-object v11, v0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 141
    const-string/jumbo v12, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 142
    const-string v13, "MSG_GRAMMAR_NOT_FOUND"

    .line 143
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    .line 144
    const/4 v15, 0x1

    .line 140
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 146
    move-object/from16 v0, p0

    iget-object v11, v0, fDoctypeName:Ljava/lang/String;

    if-eqz v11, :cond_4e

    .line 147
    move-object/from16 v0, p0

    iget-object v11, v0, fDoctypeName:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6a

    .line 148
    :cond_4e
    move-object/from16 v0, p0

    iget-object v11, v0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 149
    const-string/jumbo v12, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 150
    const-string v13, "RootElementTypeMustMatchDoctypedecl"

    .line 151
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, fDoctypeName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    .line 152
    const/4 v15, 0x1

    .line 148
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 159
    :cond_6a
    move-object/from16 v0, p0

    iget-object v11, v0, fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    move-object/from16 v0, p0

    iget-object v12, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 162
    const/4 v3, 0x0

    .line 163
    .local v3, "empty":Z
    move-object/from16 v0, p0

    iget-object v11, v0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 166
    :goto_82
    move-object/from16 v0, p0

    iget-object v11, v0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v9

    .line 169
    .local v9, "sawSpace":Z
    move-object/from16 v0, p0

    iget-object v11, v0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    .line 170
    .local v2, "c":I
    const/16 v11, 0x3e

    if-ne v2, v11, :cond_1fb

    .line 171
    move-object/from16 v0, p0

    iget-object v11, v0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 197
    :goto_9d
    move-object/from16 v0, p0

    iget-boolean v11, v0, fBindNamespaces:Z

    if-eqz v11, :cond_19b

    .line 199
    move-object/from16 v0, p0

    iget-object v11, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v11, v12, :cond_cc

    .line 200
    move-object/from16 v0, p0

    iget-object v11, v0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 201
    const-string/jumbo v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 202
    const-string v13, "ElementXMLNSPrefix"

    .line 203
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 204
    const/4 v15, 0x2

    .line 200
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 209
    :cond_cc
    move-object/from16 v0, p0

    iget-object v11, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v11, :cond_24e

    .line 210
    move-object/from16 v0, p0

    iget-object v11, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 213
    .local v7, "prefix":Ljava/lang/String;
    :goto_da
    move-object/from16 v0, p0

    iget-object v11, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v12, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v12, v7}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 215
    move-object/from16 v0, p0

    iget-object v11, v0, fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v12, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v11, :cond_114

    move-object/from16 v0, p0

    iget-object v11, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v11, :cond_114

    .line 218
    move-object/from16 v0, p0

    iget-object v11, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 220
    move-object/from16 v0, p0

    iget-object v11, v0, fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 222
    :cond_114
    move-object/from16 v0, p0

    iget-object v11, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v11, :cond_152

    move-object/from16 v0, p0

    iget-object v11, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v11, :cond_152

    .line 223
    move-object/from16 v0, p0

    iget-object v11, v0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 224
    const-string/jumbo v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 225
    const-string v13, "ElementPrefixUnbound"

    .line 226
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 229
    const/4 v15, 0x2

    .line 223
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 233
    :cond_152
    move-object/from16 v0, p0

    iget-object v11, v0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v5

    .line 234
    .local v5, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15b
    if-lt v4, v5, :cond_252

    .line 264
    const/4 v11, 0x1

    if-le v5, v11, :cond_19b

    .line 265
    move-object/from16 v0, p0

    iget-object v11, v0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v6

    .line 266
    .local v6, "name":Lmf/org/apache/xerces/xni/QName;
    if-eqz v6, :cond_19b

    .line 267
    iget-object v11, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v11, :cond_2cf

    .line 268
    move-object/from16 v0, p0

    iget-object v11, v0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 269
    const-string/jumbo v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 270
    const-string v13, "AttributeNSNotUnique"

    .line 271
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 273
    iget-object v0, v6, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 274
    iget-object v0, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 275
    const/4 v15, 0x2

    .line 268
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 290
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "name":Lmf/org/apache/xerces/xni/QName;
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_19b
    :goto_19b
    move-object/from16 v0, p0

    iget-object v11, v0, fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v11, :cond_1fa

    .line 291
    if-eqz v3, :cond_2f7

    .line 294
    move-object/from16 v0, p0

    iget v11, v0, fMarkupDepth:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, fMarkupDepth:I

    .line 297
    move-object/from16 v0, p0

    iget v11, v0, fMarkupDepth:I

    move-object/from16 v0, p0

    iget-object v12, v0, fEntityStack:[I

    move-object/from16 v0, p0

    iget v13, v0, fEntityDepth:I

    add-int/lit8 v13, v13, -0x1

    aget v12, v12, v13

    if-ge v11, v12, :cond_1d2

    .line 299
    const-string v11, "ElementEntityMismatch"

    .line 300
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 298
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    :cond_1d2
    move-object/from16 v0, p0

    iget-object v11, v0, fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v0, p0

    iget-object v12, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v13, v0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 305
    move-object/from16 v0, p0

    iget-boolean v11, v0, fBindNamespaces:Z

    if-eqz v11, :cond_1ef

    .line 306
    move-object/from16 v0, p0

    iget-object v11, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 309
    :cond_1ef
    move-object/from16 v0, p0

    iget-object v11, v0, fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    move-object/from16 v0, p0

    iget-object v12, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 317
    :cond_1fa
    :goto_1fa
    return v3

    .line 173
    :cond_1fb
    const/16 v11, 0x2f

    if-ne v2, v11, :cond_222

    .line 174
    move-object/from16 v0, p0

    iget-object v11, v0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 175
    move-object/from16 v0, p0

    iget-object v11, v0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x3e

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v11

    if-nez v11, :cond_21f

    .line 177
    const-string v11, "ElementUnterminated"

    .line 178
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    .line 176
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_21f
    const/4 v3, 0x1

    .line 181
    goto/16 :goto_9d

    .line 182
    :cond_222
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, isValidNameStartChar(I)Z

    move-result v11

    if-eqz v11, :cond_22c

    if-nez v9, :cond_243

    .line 185
    :cond_22c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, isValidNameStartHighSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_236

    if-nez v9, :cond_243

    .line 187
    :cond_236
    const-string v11, "ElementUnterminated"

    .line 188
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    .line 186
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_243
    move-object/from16 v0, p0

    iget-object v11, v0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    goto/16 :goto_82

    .line 211
    :cond_24e
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_da

    .line 235
    .restart local v4    # "i":I
    .restart local v5    # "length":I
    .restart local v7    # "prefix":Ljava/lang/String;
    :cond_252
    move-object/from16 v0, p0

    iget-object v11, v0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v4, v12}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v11, v0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v11, :cond_287

    .line 239
    move-object/from16 v0, p0

    iget-object v11, v0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 241
    .local v1, "aprefix":Ljava/lang/String;
    :goto_26b
    move-object/from16 v0, p0

    iget-object v11, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v11, :cond_28a

    .line 245
    move-object/from16 v0, p0

    iget-object v11, v0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v11, v10, :cond_28a

    .line 234
    :cond_283
    :goto_283
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15b

    .line 240
    .end local v1    # "aprefix":Ljava/lang/String;
    .end local v10    # "uri":Ljava/lang/String;
    :cond_287
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_26b

    .line 248
    .restart local v1    # "aprefix":Ljava/lang/String;
    .restart local v10    # "uri":Ljava/lang/String;
    :cond_28a
    sget-object v11, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v1, v11, :cond_283

    .line 249
    move-object/from16 v0, p0

    iget-object v11, v0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v10, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 250
    if-nez v10, :cond_2c7

    .line 251
    move-object/from16 v0, p0

    iget-object v11, v0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 252
    const-string/jumbo v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 253
    const-string v13, "AttributePrefixUnbound"

    .line 254
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 257
    aput-object v1, v14, v15

    .line 258
    const/4 v15, 0x2

    .line 251
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 260
    :cond_2c7
    move-object/from16 v0, p0

    iget-object v11, v0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11, v4, v10}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_283

    .line 277
    .end local v1    # "aprefix":Ljava/lang/String;
    .end local v10    # "uri":Ljava/lang/String;
    .restart local v6    # "name":Lmf/org/apache/xerces/xni/QName;
    :cond_2cf
    move-object/from16 v0, p0

    iget-object v11, v0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 278
    const-string/jumbo v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 279
    const-string v13, "AttributeNotUnique"

    .line 280
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 282
    iget-object v0, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 283
    const/4 v15, 0x2

    .line 277
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_19b

    .line 311
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "name":Lmf/org/apache/xerces/xni/QName;
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_2f7
    move-object/from16 v0, p0

    iget-object v11, v0, fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v0, p0

    iget-object v12, v0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v13, v0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1fa
.end method

.method protected scanStartElementAfterName()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v9, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 346
    .local v7, "rawname":Ljava/lang/String;
    iget-boolean v9, p0, fBindNamespaces:Z

    if-eqz v9, :cond_49

    .line 347
    iget-object v9, p0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v9}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 348
    iget v9, p0, fScannerState:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_49

    .line 349
    iget-boolean v9, p0, fPerformValidation:Z

    if-eqz v9, :cond_49

    .line 350
    iget-object v9, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 351
    const-string/jumbo v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 352
    const-string v11, "MSG_GRAMMAR_NOT_FOUND"

    .line 353
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 354
    const/4 v13, 0x1

    .line 350
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 356
    iget-object v9, p0, fDoctypeName:Ljava/lang/String;

    if-eqz v9, :cond_33

    .line 357
    iget-object v9, p0, fDoctypeName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_49

    .line 358
    :cond_33
    iget-object v9, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 359
    const-string/jumbo v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 360
    const-string v11, "RootElementTypeMustMatchDoctypedecl"

    .line 361
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, fDoctypeName:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    .line 362
    const/4 v13, 0x1

    .line 358
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 369
    :cond_49
    iget-object v9, p0, fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v10, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v9

    iput-object v9, p0, fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 372
    const/4 v2, 0x0

    .line 373
    .local v2, "empty":Z
    iget-object v9, p0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 377
    :goto_59
    iget-object v9, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    .line 378
    .local v1, "c":I
    const/16 v9, 0x3e

    if-ne v1, v9, :cond_15e

    .line 379
    iget-object v9, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 408
    :goto_68
    iget-boolean v9, p0, fBindNamespaces:Z

    if-eqz v9, :cond_11c

    .line 410
    iget-object v9, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v9, v10, :cond_89

    .line 411
    iget-object v9, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 412
    const-string/jumbo v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 413
    const-string v11, "ElementXMLNSPrefix"

    .line 414
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 415
    const/4 v13, 0x2

    .line 411
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 420
    :cond_89
    iget-object v9, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v9, :cond_1ad

    .line 421
    iget-object v9, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 424
    .local v6, "prefix":Ljava/lang/String;
    :goto_93
    iget-object v9, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, p0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v10, v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 426
    iget-object v9, p0, fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v10, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 428
    iget-object v9, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v9, :cond_bd

    iget-object v9, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_bd

    .line 429
    iget-object v9, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 431
    iget-object v9, p0, fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 433
    :cond_bd
    iget-object v9, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v9, :cond_e5

    iget-object v9, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v9, :cond_e5

    .line 434
    iget-object v9, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 435
    const-string/jumbo v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 436
    const-string v11, "ElementPrefixUnbound"

    .line 437
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 438
    iget-object v14, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 439
    iget-object v14, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 440
    const/4 v13, 0x2

    .line 434
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 444
    :cond_e5
    iget-object v9, p0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v4

    .line 445
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ec
    if-lt v3, v4, :cond_1b1

    .line 475
    const/4 v9, 0x1

    if-le v4, v9, :cond_11c

    .line 476
    iget-object v9, p0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v5

    .line 477
    .local v5, "name":Lmf/org/apache/xerces/xni/QName;
    if-eqz v5, :cond_11c

    .line 478
    iget-object v9, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_20a

    .line 479
    iget-object v9, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 480
    const-string/jumbo v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 481
    const-string v11, "AttributeNSNotUnique"

    .line 482
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 483
    iget-object v14, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 484
    iget-object v14, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 485
    iget-object v14, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 486
    const/4 v13, 0x2

    .line 479
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 501
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "name":Lmf/org/apache/xerces/xni/QName;
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_11c
    :goto_11c
    iget-object v9, p0, fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v9, :cond_15d

    .line 502
    if-eqz v2, :cond_226

    .line 505
    iget v9, p0, fMarkupDepth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, fMarkupDepth:I

    .line 508
    iget v9, p0, fMarkupDepth:I

    iget-object v10, p0, fEntityStack:[I

    iget v11, p0, fEntityDepth:I

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    if-ge v9, v10, :cond_143

    .line 510
    const-string v9, "ElementEntityMismatch"

    .line 511
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 509
    invoke-virtual {p0, v9, v10}, reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    :cond_143
    iget-object v9, p0, fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v10, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, p0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 516
    iget-boolean v9, p0, fBindNamespaces:Z

    if-eqz v9, :cond_156

    .line 517
    iget-object v9, p0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v9}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 520
    :cond_156
    iget-object v9, p0, fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v10, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 528
    :cond_15d
    :goto_15d
    return v2

    .line 381
    :cond_15e
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_17f

    .line 382
    iget-object v9, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 383
    iget-object v9, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v9

    if-nez v9, :cond_17c

    .line 385
    const-string v9, "ElementUnterminated"

    .line 386
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    .line 384
    invoke-virtual {p0, v9, v10}, reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    :cond_17c
    const/4 v2, 0x1

    .line 389
    goto/16 :goto_68

    .line 390
    :cond_17f
    invoke-virtual {p0, v1}, isValidNameStartChar(I)Z

    move-result v9

    if-eqz v9, :cond_189

    iget-boolean v9, p0, fSawSpace:Z

    if-nez v9, :cond_19e

    .line 393
    :cond_189
    invoke-virtual {p0, v1}, isValidNameStartHighSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_193

    iget-boolean v9, p0, fSawSpace:Z

    if-nez v9, :cond_19e

    .line 395
    :cond_193
    const-string v9, "ElementUnterminated"

    .line 396
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    .line 394
    invoke-virtual {p0, v9, v10}, reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :cond_19e
    iget-object v9, p0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v9}, scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    .line 404
    iget-object v9, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v9

    iput-boolean v9, p0, fSawSpace:Z

    goto/16 :goto_59

    .line 422
    :cond_1ad
    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_93

    .line 446
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_1b1
    iget-object v9, p0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v10, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9, v3, v10}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 449
    iget-object v9, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v9, :cond_1d8

    .line 450
    iget-object v9, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 452
    .local v0, "aprefix":Ljava/lang/String;
    :goto_1c2
    iget-object v9, p0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v9, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, "uri":Ljava/lang/String;
    iget-object v9, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_1db

    .line 456
    iget-object v9, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v9, v8, :cond_1db

    .line 445
    :cond_1d4
    :goto_1d4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_ec

    .line 451
    .end local v0    # "aprefix":Ljava/lang/String;
    .end local v8    # "uri":Ljava/lang/String;
    :cond_1d8
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1c2

    .line 459
    .restart local v0    # "aprefix":Ljava/lang/String;
    .restart local v8    # "uri":Ljava/lang/String;
    :cond_1db
    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v0, v9, :cond_1d4

    .line 460
    iget-object v9, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v8, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 461
    if-nez v8, :cond_204

    .line 462
    iget-object v9, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 463
    const-string/jumbo v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 464
    const-string v11, "AttributePrefixUnbound"

    .line 465
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 466
    iget-object v14, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 467
    iget-object v14, p0, fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 468
    aput-object v0, v12, v13

    .line 469
    const/4 v13, 0x2

    .line 462
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 471
    :cond_204
    iget-object v9, p0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9, v3, v8}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_1d4

    .line 488
    .end local v0    # "aprefix":Ljava/lang/String;
    .end local v8    # "uri":Ljava/lang/String;
    .restart local v5    # "name":Lmf/org/apache/xerces/xni/QName;
    :cond_20a
    iget-object v9, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 489
    const-string/jumbo v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 490
    const-string v11, "AttributeNotUnique"

    .line 491
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 492
    iget-object v14, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 493
    iget-object v14, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 494
    const/4 v13, 0x2

    .line 488
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_11c

    .line 522
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "name":Lmf/org/apache/xerces/xni/QName;
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_226
    iget-object v9, p0, fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v10, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, p0, fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_15d
.end method

.method protected scanStartElementName()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 332
    iget-object v0, p0, fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iput-boolean v0, p0, fSawSpace:Z

    .line 333
    return-void
.end method

.method public setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V
    .registers 2
    .param p1, "validator"    # Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    .prologue
    .line 104
    iput-object p1, p0, fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    .line 105
    return-void
.end method
