.class public Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$signature$XMLSignatureInput:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _MIMEType:Ljava/lang/String;

.field private _SourceURI:Ljava/lang/String;

.field _inputNodeSet:Ljava/util/Set;

.field _inputOctetStreamProxy:Ljava/io/InputStream;

.field _subNode:Lorg/w3c/dom/Node;

.field bytes:[B

.field excludeComments:Z

.field excludeNode:Lorg/w3c/dom/Node;

.field isNodeSet:Z

.field needsToBeExpanded:Z

.field nodeFilters:Ljava/util/List;

.field outputStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$signature$XMLSignatureInput:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$signature$XMLSignatureInput:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$signature$XMLSignatureInput:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    iput-object v1, p0, _inputNodeSet:Ljava/util/Set;

    iput-object v1, p0, _subNode:Lorg/w3c/dom/Node;

    iput-object v1, p0, excludeNode:Lorg/w3c/dom/Node;

    iput-boolean v2, p0, excludeComments:Z

    iput-boolean v2, p0, isNodeSet:Z

    iput-object v1, p0, bytes:[B

    iput-object v1, p0, _MIMEType:Ljava/lang/String;

    iput-object v1, p0, _SourceURI:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, nodeFilters:Ljava/util/List;

    iput-boolean v2, p0, needsToBeExpanded:Z

    iput-object v1, p0, outputStream:Ljava/io/OutputStream;

    iput-object p1, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, <init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, <init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    iput-object v1, p0, _inputNodeSet:Ljava/util/Set;

    iput-object v1, p0, _subNode:Lorg/w3c/dom/Node;

    iput-object v1, p0, excludeNode:Lorg/w3c/dom/Node;

    iput-boolean v2, p0, excludeComments:Z

    iput-boolean v2, p0, isNodeSet:Z

    iput-object v1, p0, bytes:[B

    iput-object v1, p0, _MIMEType:Ljava/lang/String;

    iput-object v1, p0, _SourceURI:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, nodeFilters:Ljava/util/List;

    iput-boolean v2, p0, needsToBeExpanded:Z

    iput-object v1, p0, outputStream:Ljava/io/OutputStream;

    iput-object p1, p0, _inputNodeSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    iput-object v1, p0, _inputNodeSet:Ljava/util/Set;

    iput-object v1, p0, _subNode:Lorg/w3c/dom/Node;

    iput-object v1, p0, excludeNode:Lorg/w3c/dom/Node;

    iput-boolean v2, p0, excludeComments:Z

    iput-boolean v2, p0, isNodeSet:Z

    iput-object v1, p0, bytes:[B

    iput-object v1, p0, _MIMEType:Ljava/lang/String;

    iput-object v1, p0, _SourceURI:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, nodeFilters:Ljava/util/List;

    iput-boolean v2, p0, needsToBeExpanded:Z

    iput-object v1, p0, outputStream:Ljava/io/OutputStream;

    iput-object p1, p0, _subNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    iput-object v1, p0, _inputNodeSet:Ljava/util/Set;

    iput-object v1, p0, _subNode:Lorg/w3c/dom/Node;

    iput-object v1, p0, excludeNode:Lorg/w3c/dom/Node;

    iput-boolean v2, p0, excludeComments:Z

    iput-boolean v2, p0, isNodeSet:Z

    iput-object v1, p0, bytes:[B

    iput-object v1, p0, _MIMEType:Ljava/lang/String;

    iput-object v1, p0, _SourceURI:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, nodeFilters:Ljava/util/List;

    iput-boolean v2, p0, needsToBeExpanded:Z

    iput-object v1, p0, outputStream:Ljava/io/OutputStream;

    iput-object p1, p0, bytes:[B

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addNodeFilter(Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;)V
    .registers 5

    invoke-virtual {p0}, isOctetStream()Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_6
    invoke-virtual {p0}, convertToNodes()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_f

    :cond_9
    iget-object v0, p0, nodeFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catch_f
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityRuntimeException;

    const-string/jumbo v2, "signature.XMLSignatureInput.nodesetReference"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method convertToNodes()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    :try_start_11
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {p0}, getOctetStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->circumventBug2650(Lorg/w3c/dom/Document;)V

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, _subNode:Lorg/w3c/dom/Node;
    :try_end_2a
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_2a} :catch_2f

    :goto_2a
    iput-object v3, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    iput-object v3, p0, bytes:[B

    return-void

    :catch_2f
    move-exception v1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v2, "<container>"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "</container>"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, _subNode:Lorg/w3c/dom/Node;

    goto :goto_2a
.end method

.method public getBytes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    iget-object v0, p0, bytes:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, bytes:[B

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, getResetableInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, bytes:[B

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/JavaUtils;->getBytesFromStream(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, bytes:[B

    :cond_1a
    iget-object v0, p0, bytes:[B

    goto :goto_6

    :cond_1d
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315OmitComments;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315OmitComments;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalize(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)[B

    move-result-object v0

    iput-object v0, p0, bytes:[B

    iget-object v0, p0, bytes:[B

    goto :goto_6
.end method

.method public getExcludeNode()Lorg/w3c/dom/Node;
    .registers 2

    iget-object v0, p0, excludeNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getHTMLRepresentation()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;-><init>(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->getHTMLRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTMLRepresentation(Ljava/util/Set;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;-><init>(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/util/Set;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->getHTMLRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, _MIMEType:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeFilters()Ljava/util/List;
    .registers 2

    iget-object v0, p0, nodeFilters:Ljava/util/List;

    return-object v0
.end method

.method public getNodeSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, getNodeSet(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNodeSet(Z)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    iget-object v0, p0, _inputNodeSet:Ljava/util/Set;

    if-eqz v0, :cond_7

    iget-object v0, p0, _inputNodeSet:Ljava/util/Set;

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, isElement()Z

    move-result v0

    if-eqz v0, :cond_2d

    if-eqz p1, :cond_18

    iget-object v0, p0, _subNode:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->circumventBug2650(Lorg/w3c/dom/Document;)V

    :cond_18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, _inputNodeSet:Ljava/util/Set;

    iget-object v0, p0, _subNode:Lorg/w3c/dom/Node;

    iget-object v1, p0, _inputNodeSet:Ljava/util/Set;

    iget-object v2, p0, excludeNode:Lorg/w3c/dom/Node;

    iget-boolean v3, p0, excludeComments:Z

    invoke-static {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getSet(Lorg/w3c/dom/Node;Ljava/util/Set;Lorg/w3c/dom/Node;Z)V

    iget-object v0, p0, _inputNodeSet:Ljava/util/Set;

    goto :goto_6

    :cond_2d
    invoke-virtual {p0}, isOctetStream()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, convertToNodes()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, _subNode:Lorg/w3c/dom/Node;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getSet(Lorg/w3c/dom/Node;Ljava/util/Set;Lorg/w3c/dom/Node;Z)V

    goto :goto_6

    :cond_43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getNodeSet() called but no input data present"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, getResetableInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOctetStreamReal()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    return-object v0
.end method

.method protected getResetableInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_2c

    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Accepted as Markable but not truly been"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    :goto_2b
    return-object v0

    :cond_2c
    iget-object v0, p0, bytes:[B

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    goto :goto_2b

    :cond_3c
    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    if-nez v0, :cond_42

    const/4 v0, 0x0

    goto :goto_2b

    :cond_42
    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_5d

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_5d

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Mark Suported but not used as reset"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_5d
    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/JavaUtils;->getBytesFromStream(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, bytes:[B

    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    goto :goto_2b
.end method

.method public getSourceURI()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, _SourceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getSubNode()Lorg/w3c/dom/Node;
    .registers 2

    iget-object v0, p0, _subNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public isByteArray()Z
    .registers 2

    iget-object v0, p0, bytes:[B

    if-eqz v0, :cond_e

    iget-object v0, p0, _inputNodeSet:Ljava/util/Set;

    if-nez v0, :cond_e

    iget-object v0, p0, _subNode:Lorg/w3c/dom/Node;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isElement()Z
    .registers 2

    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    if-nez v0, :cond_12

    iget-object v0, p0, _subNode:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_12

    iget-object v0, p0, _inputNodeSet:Ljava/util/Set;

    if-nez v0, :cond_12

    iget-boolean v0, p0, isNodeSet:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isExcludeComments()Z
    .registers 2

    iget-boolean v0, p0, excludeComments:Z

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    invoke-virtual {p0}, isOctetStream()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, isNodeSet()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isNeedsToBeExpanded()Z
    .registers 2

    iget-boolean v0, p0, needsToBeExpanded:Z

    return v0
.end method

.method public isNodeSet()Z
    .registers 2

    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    if-nez v0, :cond_8

    iget-object v0, p0, _inputNodeSet:Ljava/util/Set;

    if-nez v0, :cond_c

    :cond_8
    iget-boolean v0, p0, isNodeSet:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOctetStream()Z
    .registers 2

    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    if-nez v0, :cond_8

    iget-object v0, p0, bytes:[B

    if-eqz v0, :cond_12

    :cond_8
    iget-object v0, p0, _inputNodeSet:Ljava/util/Set;

    if-nez v0, :cond_12

    iget-object v0, p0, _subNode:Lorg/w3c/dom/Node;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setExcludeComments(Z)V
    .registers 2

    iput-boolean p1, p0, excludeComments:Z

    return-void
.end method

.method public setExcludeNode(Lorg/w3c/dom/Node;)V
    .registers 2

    iput-object p1, p0, excludeNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setMIMEType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, _MIMEType:Ljava/lang/String;

    return-void
.end method

.method public setNeedsToBeExpanded(Z)V
    .registers 2

    iput-boolean p1, p0, needsToBeExpanded:Z

    return-void
.end method

.method public setNodeSet(Z)V
    .registers 2

    iput-boolean p1, p0, isNodeSet:Z

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .registers 2

    iput-object p1, p0, outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setSourceURI(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, _SourceURI:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, isNodeSet()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "XMLSignatureInput/NodeSet/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, _inputNodeSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " nodes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, getSourceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    invoke-virtual {p0}, isElement()Z

    move-result v0

    if-eqz v0, :cond_70

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "XMLSignatureInput/Element/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, _subNode:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " exclude "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, excludeNode:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " comments:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, excludeComments:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, getSourceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_70
    :try_start_70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "XMLSignatureInput/OctetStream/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " octets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, getSourceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_95} :catch_97

    move-result-object v0

    goto :goto_2d

    :catch_97
    move-exception v0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "XMLSignatureInput/OctetStream//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, getSourceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d
.end method

.method public updateOutputStream(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, outputStream:Ljava/io/OutputStream;

    if-ne p1, v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, bytes:[B

    if-eqz v0, :cond_10

    iget-object v0, p0, bytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    :cond_10
    iget-object v0, p0, _inputOctetStreamProxy:Ljava/io/InputStream;

    if-nez v0, :cond_20

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315OmitComments;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315OmitComments;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->setWriter(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalize(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)[B

    goto :goto_5

    :cond_20
    invoke-virtual {p0}, getResetableInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, bytes:[B

    if-eqz v1, :cond_31

    iget-object v0, p0, bytes:[B

    iget-object v1, p0, bytes:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    :cond_31
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_38
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_38
.end method
