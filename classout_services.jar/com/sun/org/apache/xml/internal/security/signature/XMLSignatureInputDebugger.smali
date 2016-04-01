.class public Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;
.super Ljava/lang/Object;


# static fields
.field static final ATTR_COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

.field static final HTMLExcludePrefix:Ljava/lang/String; = "<span class=\"EXCLUDED\">"

.field static final HTMLExcludeSuffix:Ljava/lang/String; = "</span>"

.field static final HTMLExcludedInclusiveNamespacePrefix:Ljava/lang/String; = "<span class=\"EXCLUDEDINCLUSIVENAMESPACE\">"

.field static final HTMLExcludedInclusiveNamespaceSuffix:Ljava/lang/String; = "</span>"

.field static final HTMLIncludePrefix:Ljava/lang/String; = "<span class=\"INCLUDED\">"

.field static final HTMLIncludeSuffix:Ljava/lang/String; = "</span>"

.field static final HTMLIncludedInclusiveNamespacePrefix:Ljava/lang/String; = "<span class=\"INCLUDEDINCLUSIVENAMESPACE\">"

.field static final HTMLIncludedInclusiveNamespaceSuffix:Ljava/lang/String; = "</span>"

.field static final HTMLPrefix:Ljava/lang/String; = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n<html>\n<head>\n<title>Caninical XML node set</title>\n<style type=\"text/css\">\n<!-- \n.INCLUDED { \n   color: #000000; \n   background-color: \n   #FFFFFF; \n   font-weight: bold; } \n.EXCLUDED { \n   color: #666666; \n   background-color: \n   #999999; } \n.INCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #FFFFFF; \n   font-weight: bold; \n   font-style: italic; } \n.EXCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #999999; \n   font-style: italic; } \n--> \n</style> \n</head>\n<body bgcolor=\"#999999\">\n<h1>Explanation of the output</h1>\n<p>The following text contains the nodeset of the given Reference before it is canonicalized. There exist four different styles to indicate how a given node is treated.</p>\n<ul>\n<li class=\"INCLUDED\">A node which is in the node set is labeled using the INCLUDED style.</li>\n<li class=\"EXCLUDED\">A node which is <em>NOT</em> in the node set is labeled EXCLUDED style.</li>\n<li class=\"INCLUDEDINCLUSIVENAMESPACE\">A namespace which is in the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n<li class=\"EXCLUDEDINCLUSIVENAMESPACE\">A namespace which is in NOT the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n</ul>\n<h1>Output</h1>\n<pre>\n"

.field static final HTMLSuffix:Ljava/lang/String; = "</pre></body></html>"

.field private static final NODE_AFTER_DOCUMENT_ELEMENT:I = 0x1

.field private static final NODE_BEFORE_DOCUMENT_ELEMENT:I = -0x1

.field private static final NODE_NOT_BEFORE_OR_AFTER_DOCUMENT_ELEMENT:I


# instance fields
.field private _doc:Lorg/w3c/dom/Document;

.field private _inclusiveNamespaces:Ljava/util/Set;

.field private _writer:Ljava/io/Writer;

.field private _xpathNodeSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;-><init>()V

    sput-object v0, ATTR_COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, _doc:Lorg/w3c/dom/Document;

    iput-object v0, p0, _writer:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, _doc:Lorg/w3c/dom/Document;

    iput-object v1, p0, _writer:Ljava/io/Writer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet()Z

    move-result v0

    if-nez v0, :cond_11

    iput-object v1, p0, _xpathNodeSet:Ljava/util/Set;

    :goto_10
    return-void

    :cond_11
    iget-object v0, p1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    iput-object v0, p0, _xpathNodeSet:Ljava/util/Set;

    goto :goto_10
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0, p1}, <init>(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)V

    iput-object p2, p0, _inclusiveNamespaces:Ljava/util/Set;

    return-void
.end method

.method private canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_278

    :goto_a
    :pswitch_a
    return-void

    :pswitch_b
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v1, "empty"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n<html>\n<head>\n<title>Caninical XML node set</title>\n<style type=\"text/css\">\n<!-- \n.INCLUDED { \n   color: #000000; \n   background-color: \n   #FFFFFF; \n   font-weight: bold; } \n.EXCLUDED { \n   color: #666666; \n   background-color: \n   #999999; } \n.INCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #FFFFFF; \n   font-weight: bold; \n   font-style: italic; } \n.EXCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #999999; \n   font-style: italic; } \n--> \n</style> \n</head>\n<body bgcolor=\"#999999\">\n<h1>Explanation of the output</h1>\n<p>The following text contains the nodeset of the given Reference before it is canonicalized. There exist four different styles to indicate how a given node is treated.</p>\n<ul>\n<li class=\"INCLUDED\">A node which is in the node set is labeled using the INCLUDED style.</li>\n<li class=\"EXCLUDED\">A node which is <em>NOT</em> in the node set is labeled EXCLUDED style.</li>\n<li class=\"INCLUDEDINCLUSIVENAMESPACE\">A namespace which is in the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n<li class=\"EXCLUDEDINCLUSIVENAMESPACE\">A namespace which is in NOT the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n</ul>\n<h1>Output</h1>\n<pre>\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1f
    if-eqz v0, :cond_29

    invoke-direct {p0, v0}, canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1f

    :cond_29
    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "</pre></body></html>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_a

    :pswitch_31
    iget-object v0, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "<span class=\"INCLUDED\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_40
    invoke-direct {p0, p1}, getPositionRelativeToDocumentElement(Lorg/w3c/dom/Node;)I

    move-result v1

    if-ne v1, v2, :cond_4d

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4d
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Comment;

    invoke-direct {p0, v0}, outputCommentToWriter(Lorg/w3c/dom/Comment;)V

    if-ne v1, v3, :cond_5c

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_5c
    iget-object v0, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_a

    :cond_6c
    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "<span class=\"EXCLUDED\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_40

    :cond_74
    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_a

    :pswitch_7c
    iget-object v0, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "<span class=\"INCLUDED\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_8b
    invoke-direct {p0, p1}, getPositionRelativeToDocumentElement(Lorg/w3c/dom/Node;)I

    move-result v1

    if-ne v1, v2, :cond_98

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_98
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-direct {p0, v0}, outputPItoWriter(Lorg/w3c/dom/ProcessingInstruction;)V

    if-ne v1, v3, :cond_a7

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_a7
    iget-object v0, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_b8
    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "<span class=\"EXCLUDED\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8b

    :cond_c0
    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_c9
    iget-object v0, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "<span class=\"INCLUDED\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_d8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, outputTextToWriter(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_e3
    if-eqz v0, :cond_107

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_f3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_107

    :cond_f3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, outputTextToWriter(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_e3

    :cond_ff
    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "<span class=\"EXCLUDED\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_d8

    :cond_107
    iget-object v0, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_118
    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_121
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    iget-object v2, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_168

    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "<span class=\"INCLUDED\">"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_133
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, p0, _writer:Ljava/io/Writer;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_170

    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "</span>"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_152
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    new-array v5, v4, [Ljava/lang/Object;

    move v2, v1

    :goto_15d
    if-ge v2, v4, :cond_178

    invoke-interface {v3, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15d

    :cond_168
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "<span class=\"EXCLUDED\">"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_133

    :cond_170
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "</span>"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_152

    :cond_178
    sget-object v2, ATTR_COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    invoke-static {v5, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v2, v1

    :goto_17e
    if-ge v2, v4, :cond_1ed

    aget-object v1, v5, v2

    check-cast v1, Lorg/w3c/dom/Attr;

    iget-object v3, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-object v6, p0, _inclusiveNamespaces:Ljava/util/Set;

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v3, :cond_1c1

    if-eqz v6, :cond_1b9

    iget-object v7, p0, _writer:Ljava/io/Writer;

    const-string v8, "<span class=\"INCLUDEDINCLUSIVENAMESPACE\">"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_19f
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v1}, outputAttrToWriter(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1db

    if-eqz v6, :cond_1d3

    iget-object v1, p0, _writer:Ljava/io/Writer;

    const-string v3, "</span>"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1b5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_17e

    :cond_1b9
    iget-object v7, p0, _writer:Ljava/io/Writer;

    const-string v8, "<span class=\"INCLUDED\">"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_19f

    :cond_1c1
    if-eqz v6, :cond_1cb

    iget-object v7, p0, _writer:Ljava/io/Writer;

    const-string v8, "<span class=\"EXCLUDEDINCLUSIVENAMESPACE\">"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_19f

    :cond_1cb
    iget-object v7, p0, _writer:Ljava/io/Writer;

    const-string v8, "<span class=\"EXCLUDED\">"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_19f

    :cond_1d3
    iget-object v1, p0, _writer:Ljava/io/Writer;

    const-string v3, "</span>"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1b5

    :cond_1db
    if-eqz v6, :cond_1e5

    iget-object v1, p0, _writer:Ljava/io/Writer;

    const-string v3, "</span>"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1b5

    :cond_1e5
    iget-object v1, p0, _writer:Ljava/io/Writer;

    const-string v3, "</span>"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1b5

    :cond_1ed
    iget-object v1, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_220

    iget-object v1, p0, _writer:Ljava/io/Writer;

    const-string v2, "<span class=\"INCLUDED\">"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1fc
    iget-object v1, p0, _writer:Ljava/io/Writer;

    const-string v2, "&gt;"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_228

    iget-object v1, p0, _writer:Ljava/io/Writer;

    const-string v2, "</span>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_212
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_216
    if-eqz v1, :cond_230

    invoke-direct {p0, v1}, canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;)V

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_216

    :cond_220
    iget-object v1, p0, _writer:Ljava/io/Writer;

    const-string v2, "<span class=\"EXCLUDED\">"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1fc

    :cond_228
    iget-object v1, p0, _writer:Ljava/io/Writer;

    const-string v2, "</span>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_212

    :cond_230
    iget-object v1, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_267

    iget-object v1, p0, _writer:Ljava/io/Writer;

    const-string v2, "<span class=\"INCLUDED\">"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_23f
    iget-object v1, p0, _writer:Ljava/io/Writer;

    const-string v2, "&lt;/"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, _writer:Ljava/io/Writer;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26f

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_267
    iget-object v1, p0, _writer:Ljava/io/Writer;

    const-string v2, "<span class=\"EXCLUDED\">"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_23f

    :cond_26f
    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_data_278
    .packed-switch 0x1
        :pswitch_121
        :pswitch_b
        :pswitch_c9
        :pswitch_c9
        :pswitch_a
        :pswitch_b
        :pswitch_7c
        :pswitch_31
        :pswitch_14
        :pswitch_a
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private getPositionRelativeToDocumentElement(Lorg/w3c/dom/Node;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    if-ne v2, v1, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    :goto_16
    if-eqz p1, :cond_21

    if-ne p1, v1, :cond_1c

    const/4 v0, -0x1

    goto :goto_3

    :cond_1c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_16

    :cond_21
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private outputAttrToWriter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, _writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v1, :cond_59

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_62

    iget-object v3, p0, _writer:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :sswitch_29
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "&amp;amp;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_26

    :sswitch_31
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "&amp;lt;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_26

    :sswitch_39
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "&amp;quot;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_26

    :sswitch_41
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "&amp;#x9;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_26

    :sswitch_49
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "&amp;#xA;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_26

    :sswitch_51
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "&amp;#xD;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_26

    :cond_59
    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_62
    .sparse-switch
        0x9 -> :sswitch_41
        0xa -> :sswitch_49
        0xd -> :sswitch_51
        0x22 -> :sswitch_39
        0x26 -> :sswitch_29
        0x3c -> :sswitch_31
    .end sparse-switch
.end method

.method private outputCommentToWriter(Lorg/w3c/dom/Comment;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "&lt;!--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_3c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_44

    iget-object v4, p0, _writer:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :sswitch_24
    iget-object v3, p0, _writer:Ljava/io/Writer;

    const-string v4, "&amp;#xD;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_21

    :sswitch_2c
    iget-object v3, p0, _writer:Ljava/io/Writer;

    const-string v4, "&middot;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_21

    :sswitch_34
    iget-object v3, p0, _writer:Ljava/io/Writer;

    const-string v4, "&para;\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_21

    :cond_3c
    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "--&gt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_data_44
    .sparse-switch
        0xa -> :sswitch_34
        0xd -> :sswitch_24
        0x20 -> :sswitch_2c
    .end sparse-switch
.end method

.method private outputPItoWriter(Lorg/w3c/dom/ProcessingInstruction;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    iget-object v1, p0, _writer:Ljava/io/Writer;

    const-string v2, "&lt;?"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v0

    :goto_14
    if-ge v1, v3, :cond_3d

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_72

    iget-object v5, p0, _writer:Ljava/io/Writer;

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(I)V

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :sswitch_25
    iget-object v4, p0, _writer:Ljava/io/Writer;

    const-string v5, "&amp;#xD;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_22

    :sswitch_2d
    iget-object v4, p0, _writer:Ljava/io/Writer;

    const-string v5, "&middot;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_22

    :sswitch_35
    iget-object v4, p0, _writer:Ljava/io/Writer;

    const-string v5, "&para;\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_22

    :cond_3d
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v1, :cond_69

    if-lez v2, :cond_69

    iget-object v3, p0, _writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_50
    if-ge v0, v2, :cond_69

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_80

    iget-object v4, p0, _writer:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    :goto_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :pswitch_61
    iget-object v3, p0, _writer:Ljava/io/Writer;

    const-string v4, "&amp;#xD;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5e

    :cond_69
    iget-object v0, p0, _writer:Ljava/io/Writer;

    const-string v1, "?&gt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    nop

    :sswitch_data_72
    .sparse-switch
        0xa -> :sswitch_35
        0xd -> :sswitch_25
        0x20 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0xd
        :pswitch_61
    .end packed-switch
.end method

.method private outputTextToWriter(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_4a

    iget-object v3, p0, _writer:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :sswitch_19
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "&amp;amp;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_16

    :sswitch_21
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "&amp;lt;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_16

    :sswitch_29
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "&amp;gt;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_16

    :sswitch_31
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "&amp;#xD;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_16

    :sswitch_39
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "&middot;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_16

    :sswitch_41
    iget-object v2, p0, _writer:Ljava/io/Writer;

    const-string v3, "&para;\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_16

    nop

    :sswitch_data_4a
    .sparse-switch
        0xa -> :sswitch_41
        0xd -> :sswitch_31
        0x20 -> :sswitch_39
        0x26 -> :sswitch_19
        0x3c -> :sswitch_21
        0x3e -> :sswitch_29
    .end sparse-switch
.end method


# virtual methods
.method public getHTMLRepresentation()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, _xpathNodeSet:Ljava/util/Set;

    if-eqz v0, :cond_d

    iget-object v0, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_10

    :cond_d
    const-string v0, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n<html>\n<head>\n<title>Caninical XML node set</title>\n<style type=\"text/css\">\n<!-- \n.INCLUDED { \n   color: #000000; \n   background-color: \n   #FFFFFF; \n   font-weight: bold; } \n.EXCLUDED { \n   color: #666666; \n   background-color: \n   #999999; } \n.INCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #FFFFFF; \n   font-weight: bold; \n   font-style: italic; } \n.EXCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #999999; \n   font-style: italic; } \n--> \n</style> \n</head>\n<body bgcolor=\"#999999\">\n<h1>Explanation of the output</h1>\n<p>The following text contains the nodeset of the given Reference before it is canonicalized. There exist four different styles to indicate how a given node is treated.</p>\n<ul>\n<li class=\"INCLUDED\">A node which is in the node set is labeled using the INCLUDED style.</li>\n<li class=\"EXCLUDED\">A node which is <em>NOT</em> in the node set is labeled EXCLUDED style.</li>\n<li class=\"INCLUDEDINCLUSIVENAMESPACE\">A namespace which is in the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n<li class=\"EXCLUDEDINCLUSIVENAMESPACE\">A namespace which is in NOT the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n</ul>\n<h1>Output</h1>\n<pre>\n<blink>no node set, sorry</blink></pre></body></html>"

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, _xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, _doc:Lorg/w3c/dom/Document;

    :try_start_22
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, _writer:Ljava/io/Writer;

    iget-object v0, p0, _doc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v0}, canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;)V

    iget-object v0, p0, _writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget-object v0, p0, _writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_38} :catch_40
    .catchall {:try_start_22 .. :try_end_38} :catchall_4a

    move-result-object v0

    iput-object v3, p0, _xpathNodeSet:Ljava/util/Set;

    iput-object v3, p0, _doc:Lorg/w3c/dom/Document;

    iput-object v3, p0, _writer:Ljava/io/Writer;

    goto :goto_f

    :catch_40
    move-exception v0

    :try_start_41
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v0

    iput-object v3, p0, _xpathNodeSet:Ljava/util/Set;

    iput-object v3, p0, _doc:Lorg/w3c/dom/Document;

    iput-object v3, p0, _writer:Ljava/io/Writer;

    throw v0
.end method
