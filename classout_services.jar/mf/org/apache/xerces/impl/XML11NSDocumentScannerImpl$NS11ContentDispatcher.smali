.class public final Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;
.super Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;
.source "XML11NSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "NS11ContentDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)V
    .registers 2

    .prologue
    .line 779
    iput-object p1, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V

    return-void
.end method

.method private reconfigurePipeline()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 826
    iget-object v2, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    if-nez v2, :cond_f

    .line 827
    iget-object v2, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-boolean v3, v2, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    .line 841
    :cond_e
    :goto_e
    return-void

    .line 829
    :cond_f
    iget-object v2, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->hasGrammar()Z

    move-result v2

    if-nez v2, :cond_e

    .line 830
    iget-object v2, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-boolean v3, v2, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    .line 831
    iget-object v2, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v3, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v3}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v3

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->validate()Z

    move-result v3

    iput-boolean v3, v2, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    .line 833
    iget-object v2, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v1

    .line 834
    .local v1, "source":Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    iget-object v2, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    .line 835
    .local v0, "handler":Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 836
    if-eqz v0, :cond_49

    .line 837
    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 838
    :cond_49
    iget-object v2, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 839
    iget-object v2, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    goto :goto_e
.end method


# virtual methods
.method protected scanRootElementHook()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc

    const/4 v0, 0x1

    .line 796
    iget-object v1, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    if-eqz v1, :cond_43

    iget-object v1, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-nez v1, :cond_43

    .line 797
    iget-object v1, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDisallowDoctype:Z

    if-nez v1, :cond_43

    iget-object v1, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fValidation:Z

    if-nez v1, :cond_21

    iget-object v1, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v1, :cond_43

    .line 798
    :cond_21
    iget-object v1, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanStartElementName()V

    .line 799
    invoke-virtual {p0}, resolveExternalSubsetAndRead()V

    .line 800
    invoke-direct {p0}, reconfigurePipeline()V

    .line 801
    iget-object v1, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanStartElementAfterName()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 802
    iget-object v1, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setScannerState(I)V

    .line 803
    iget-object v1, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v2, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTrailingMiscDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    .line 815
    :goto_42
    return v0

    .line 808
    :cond_43
    invoke-direct {p0}, reconfigurePipeline()V

    .line 809
    iget-object v1, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanStartElement()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 810
    iget-object v1, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setScannerState(I)V

    .line 811
    iget-object v1, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v2, p0, this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTrailingMiscDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    goto :goto_42

    .line 815
    :cond_5d
    const/4 v0, 0x0

    goto :goto_42
.end method
