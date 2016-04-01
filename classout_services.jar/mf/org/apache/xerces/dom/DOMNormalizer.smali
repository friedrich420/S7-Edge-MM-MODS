.class public Lmf/org/apache/xerces/dom/DOMNormalizer;
.super Ljava/lang/Object;
.source "DOMNormalizer.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DEBUG_EVENTS:Z = false

.field protected static final DEBUG_ND:Z = false

.field public static final EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

.field protected static final PREFIX:Ljava/lang/String; = "NS"

.field public static final abort:Ljava/lang/RuntimeException;


# instance fields
.field private fAllWhitespace:Z

.field protected final fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

.field private final fAttrQName:Lmf/org/apache/xerces/xni/QName;

.field protected final fAttributeList:Ljava/util/ArrayList;

.field protected fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

.field protected fCurrentNode:Lmf/org/w3c/dom/Node;

.field protected fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

.field private final fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

.field protected fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

.field protected final fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected final fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

.field protected final fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNamespaceValidation:Z

.field final fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

.field protected fPSVI:Z

.field protected final fQName:Lmf/org/apache/xerces/xni/QName;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    sput-object v0, abort:Ljava/lang/RuntimeException;

    .line 159
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    sput-object v0, EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v3, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    .line 110
    iput-object v3, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 111
    new-instance v0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;-><init>(Lmf/org/apache/xerces/dom/DOMNormalizer;)V

    iput-object v0, p0, fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    .line 112
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, fQName:Lmf/org/apache/xerces/xni/QName;

    .line 126
    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    .line 129
    iput-boolean v2, p0, fNamespaceValidation:Z

    .line 132
    iput-boolean v2, p0, fPSVI:Z

    .line 135
    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 138
    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, fAttributeList:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    .line 147
    iput-object v3, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 148
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, fAttrQName:Lmf/org/apache/xerces/xni/QName;

    .line 151
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    const/16 v1, 0x10

    new-array v1, v1, [C

    invoke-direct {v0, v1, v2, v2}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v0, p0, fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    .line 162
    iput-boolean v2, p0, fAllWhitespace:Z

    .line 167
    return-void
.end method

.method public static final isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V
    .registers 25
    .param p0, "errorHandler"    # Lmf/org/w3c/dom/DOMErrorHandler;
    .param p1, "error"    # Lmf/org/apache/xerces/dom/DOMErrorImpl;
    .param p2, "locator"    # Lmf/org/apache/xerces/dom/DOMLocatorImpl;
    .param p3, "attributes"    # Lmf/org/w3c/dom/NamedNodeMap;
    .param p4, "a"    # Lmf/org/w3c/dom/Attr;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "xml11Version"    # Z

    .prologue
    .line 1309
    move-object/from16 v0, p4

    instance-of v5, v0, Lmf/org/apache/xerces/dom/AttrImpl;

    if-eqz v5, :cond_1e

    move-object/from16 v5, p4

    check-cast v5, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1310
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    .line 1346
    :cond_1d
    return-void

    .line 1312
    :cond_1e
    invoke-interface/range {p4 .. p4}, Lmf/org/w3c/dom/Attr;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v12

    .line 1314
    .local v12, "children":Lmf/org/w3c/dom/NodeList;
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_24
    invoke-interface {v12}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v5

    move/from16 v0, v16

    if-ge v0, v5, :cond_1d

    .line 1315
    move/from16 v0, v16

    invoke-interface {v12, v0}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v11

    .line 1317
    .local v11, "child":Lmf/org/w3c/dom/Node;
    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_7a

    .line 1318
    invoke-interface/range {p4 .. p4}, Lmf/org/w3c/dom/Attr;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v17

    .line 1319
    .local v17, "owner":Lmf/org/w3c/dom/Document;
    const/4 v14, 0x0

    .line 1322
    .local v14, "ent":Lmf/org/w3c/dom/Entity;
    if-eqz v17, :cond_56

    .line 1323
    invoke-interface/range {v17 .. v17}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v13

    .line 1324
    .local v13, "docType":Lmf/org/w3c/dom/DocumentType;
    if-eqz v13, :cond_56

    .line 1325
    invoke-interface {v13}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v15

    .line 1327
    .local v15, "entities":Lmf/org/w3c/dom/NamedNodeMap;
    const-string v5, "*"

    .line 1328
    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 1326
    invoke-interface {v15, v5, v6}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v14

    .end local v14    # "ent":Lmf/org/w3c/dom/Entity;
    check-cast v14, Lmf/org/w3c/dom/Entity;

    .line 1332
    .end local v13    # "docType":Lmf/org/w3c/dom/DocumentType;
    .end local v15    # "entities":Lmf/org/w3c/dom/NamedNodeMap;
    .restart local v14    # "ent":Lmf/org/w3c/dom/Entity;
    :cond_56
    if-nez v14, :cond_77

    .line 1334
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "UndeclaredEntRefInAttrValue"

    .line 1335
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface/range {p4 .. p4}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 1333
    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1336
    .local v8, "msg":Ljava/lang/String;
    const/4 v9, 0x2

    .line 1337
    const-string v10, "UndeclaredEntRefInAttrValue"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 1336
    invoke-static/range {v5 .. v10}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .line 1314
    .end local v8    # "msg":Ljava/lang/String;
    .end local v14    # "ent":Lmf/org/w3c/dom/Entity;
    .end local v17    # "owner":Lmf/org/w3c/dom/Document;
    :cond_77
    :goto_77
    add-int/lit8 v16, v16, 0x1

    goto :goto_24

    .line 1342
    :cond_7a
    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v5, v3}, isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto :goto_77
.end method

.method public static final isCDataWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .registers 18
    .param p0, "errorHandler"    # Lmf/org/w3c/dom/DOMErrorHandler;
    .param p1, "error"    # Lmf/org/apache/xerces/dom/DOMErrorImpl;
    .param p2, "locator"    # Lmf/org/apache/xerces/dom/DOMLocatorImpl;
    .param p3, "datavalue"    # Ljava/lang/String;
    .param p4, "isXML11Version"    # Z

    .prologue
    .line 1074
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 1164
    :cond_8
    :goto_8
    return-void

    .line 1078
    :cond_9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 1079
    .local v9, "dataarray":[C
    array-length v10, v9

    .line 1082
    .local v10, "datalength":I
    if-eqz p4, :cond_93

    .line 1084
    const/4 v11, 0x0

    .local v11, "i":I
    move v12, v11

    .line 1085
    .end local v11    # "i":I
    .local v12, "i":I
    :cond_12
    :goto_12
    if-lt v12, v10, :cond_16

    move v11, v12

    .line 1123
    .end local v12    # "i":I
    .restart local v11    # "i":I
    goto :goto_8

    .line 1086
    .end local v11    # "i":I
    .restart local v12    # "i":I
    :cond_16
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    aget-char v6, v9, v12

    .line 1087
    .local v6, "c":C
    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1089
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-ge v11, v10, :cond_3d

    .line 1090
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .restart local v12    # "i":I
    aget-char v7, v9, v11

    .line 1091
    .local v7, "c2":C
    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1092
    invoke-static {v6, v7}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_3c
    move v11, v12

    .line 1097
    .end local v7    # "c2":C
    .end local v12    # "i":I
    .restart local v11    # "i":I
    :cond_3d
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1098
    const-string v1, "InvalidCharInCDSect"

    .line 1099
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v6, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1096
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1105
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x2

    .line 1106
    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1100
    invoke-static/range {v0 .. v5}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v12, v11

    .line 1107
    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_12

    .line 1108
    .end local v3    # "msg":Ljava/lang/String;
    .end local v12    # "i":I
    .restart local v11    # "i":I
    :cond_5e
    const/16 v0, 0x5d

    if-ne v6, v0, :cond_91

    .line 1109
    move v8, v11

    .line 1110
    .local v8, "count":I
    if-ge v8, v10, :cond_91

    aget-char v0, v9, v8

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_91

    .line 1111
    :cond_6b
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v10, :cond_75

    aget-char v0, v9, v8

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_6b

    .line 1114
    :cond_75
    if-ge v8, v10, :cond_91

    aget-char v0, v9, v8

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_91

    .line 1116
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v1, "CDEndInContent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1117
    .restart local v3    # "msg":Ljava/lang/String;
    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .end local v3    # "msg":Ljava/lang/String;
    .end local v8    # "count":I
    :cond_91
    move v12, v11

    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_12

    .line 1126
    .end local v6    # "c":C
    .end local v12    # "i":I
    :cond_93
    const/4 v11, 0x0

    .restart local v11    # "i":I
    move v12, v11

    .line 1127
    .end local v11    # "i":I
    .restart local v12    # "i":I
    :cond_95
    :goto_95
    if-lt v12, v10, :cond_9a

    move v11, v12

    .end local v12    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_8

    .line 1128
    .end local v11    # "i":I
    .restart local v12    # "i":I
    :cond_9a
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    aget-char v6, v9, v12

    .line 1129
    .restart local v6    # "c":C
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 1131
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    if-ge v11, v10, :cond_c1

    .line 1132
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .restart local v12    # "i":I
    aget-char v7, v9, v11

    .line 1133
    .restart local v7    # "c2":C
    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 1134
    invoke-static {v6, v7}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_95

    :cond_c0
    move v11, v12

    .line 1143
    .end local v7    # "c2":C
    .end local v12    # "i":I
    .restart local v11    # "i":I
    :cond_c1
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1144
    const-string v1, "InvalidCharInCDSect"

    .line 1145
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v6, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1142
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1146
    .restart local v3    # "msg":Ljava/lang/String;
    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v12, v11

    .line 1147
    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_95

    .line 1148
    .end local v3    # "msg":Ljava/lang/String;
    .end local v12    # "i":I
    .restart local v11    # "i":I
    :cond_e2
    const/16 v0, 0x5d

    if-ne v6, v0, :cond_115

    .line 1149
    move v8, v11

    .line 1150
    .restart local v8    # "count":I
    if-ge v8, v10, :cond_115

    aget-char v0, v9, v8

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_115

    .line 1151
    :cond_ef
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v10, :cond_f9

    aget-char v0, v9, v8

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_ef

    .line 1154
    :cond_f9
    if-ge v8, v10, :cond_115

    aget-char v0, v9, v8

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_115

    .line 1155
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v1, "CDEndInContent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1156
    .restart local v3    # "msg":Ljava/lang/String;
    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .end local v3    # "msg":Ljava/lang/String;
    .end local v8    # "count":I
    :cond_115
    move v12, v11

    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto/16 :goto_95
.end method

.method public static final isCommentWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .registers 18
    .param p0, "errorHandler"    # Lmf/org/w3c/dom/DOMErrorHandler;
    .param p1, "error"    # Lmf/org/apache/xerces/dom/DOMErrorImpl;
    .param p2, "locator"    # Lmf/org/apache/xerces/dom/DOMLocatorImpl;
    .param p3, "datavalue"    # Ljava/lang/String;
    .param p4, "isXML11Version"    # Z

    .prologue
    .line 1237
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 1300
    :cond_8
    :goto_8
    return-void

    .line 1241
    :cond_9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 1242
    .local v8, "dataarray":[C
    array-length v9, v8

    .line 1245
    .local v9, "datalength":I
    if-eqz p4, :cond_84

    .line 1247
    const/4 v10, 0x0

    .local v10, "i":I
    move v11, v10

    .line 1248
    .end local v10    # "i":I
    .local v11, "i":I
    :cond_12
    :goto_12
    if-lt v11, v9, :cond_16

    move v10, v11

    .line 1271
    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto :goto_8

    .line 1249
    .end local v10    # "i":I
    .restart local v11    # "i":I
    :cond_16
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aget-char v6, v8, v11

    .line 1250
    .local v6, "c":C
    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1252
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-ge v10, v9, :cond_3d

    .line 1253
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    aget-char v7, v8, v10

    .line 1254
    .local v7, "c2":C
    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1255
    invoke-static {v6, v7}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_3c
    move v10, v11

    .line 1259
    .end local v7    # "c2":C
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_3d
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1260
    const-string v1, "InvalidCharInComment"

    .line 1261
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v10, -0x1

    aget-char v5, v8, v5

    const/16 v12, 0x10

    invoke-static {v5, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1259
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1262
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v11, v10

    .line 1263
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_12

    .line 1264
    .end local v3    # "msg":Ljava/lang/String;
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_62
    const/16 v0, 0x2d

    if-ne v6, v0, :cond_82

    if-ge v10, v9, :cond_82

    aget-char v0, v8, v10

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_82

    .line 1265
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1266
    const-string v1, "DashDashInComment"

    const/4 v2, 0x0

    .line 1265
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1268
    .restart local v3    # "msg":Ljava/lang/String;
    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .end local v3    # "msg":Ljava/lang/String;
    :cond_82
    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_12

    .line 1274
    .end local v6    # "c":C
    .end local v11    # "i":I
    :cond_84
    const/4 v10, 0x0

    .restart local v10    # "i":I
    move v11, v10

    .line 1275
    .end local v10    # "i":I
    .restart local v11    # "i":I
    :cond_86
    :goto_86
    if-lt v11, v9, :cond_8b

    move v10, v11

    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_8

    .line 1276
    .end local v10    # "i":I
    .restart local v11    # "i":I
    :cond_8b
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aget-char v6, v8, v11

    .line 1277
    .restart local v6    # "c":C
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 1279
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    if-ge v10, v9, :cond_b2

    .line 1280
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    aget-char v7, v8, v10

    .line 1281
    .restart local v7    # "c2":C
    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1282
    invoke-static {v6, v7}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_86

    :cond_b1
    move v10, v11

    .line 1286
    .end local v7    # "c2":C
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_b2
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1287
    const-string v1, "InvalidCharInComment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v10, -0x1

    aget-char v5, v8, v5

    const/16 v12, 0x10

    invoke-static {v5, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1286
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1288
    .restart local v3    # "msg":Ljava/lang/String;
    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v11, v10

    .line 1289
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_86

    .line 1290
    .end local v3    # "msg":Ljava/lang/String;
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_d7
    const/16 v0, 0x2d

    if-ne v6, v0, :cond_f7

    if-ge v10, v9, :cond_f7

    aget-char v0, v8, v10

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_f7

    .line 1291
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1292
    const-string v1, "DashDashInComment"

    const/4 v2, 0x0

    .line 1291
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1294
    .restart local v3    # "msg":Ljava/lang/String;
    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .end local v3    # "msg":Ljava/lang/String;
    :cond_f7
    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_86
.end method

.method public static final isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .registers 18
    .param p0, "errorHandler"    # Lmf/org/w3c/dom/DOMErrorHandler;
    .param p1, "error"    # Lmf/org/apache/xerces/dom/DOMErrorImpl;
    .param p2, "locator"    # Lmf/org/apache/xerces/dom/DOMLocatorImpl;
    .param p3, "datavalue"    # Ljava/lang/String;
    .param p4, "isXML11Version"    # Z

    .prologue
    .line 1174
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 1227
    :cond_8
    :goto_8
    return-void

    .line 1178
    :cond_9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 1179
    .local v8, "dataarray":[C
    array-length v9, v8

    .line 1182
    .local v9, "datalength":I
    if-eqz p4, :cond_66

    .line 1184
    const/4 v10, 0x0

    .local v10, "i":I
    move v11, v10

    .line 1185
    .end local v10    # "i":I
    .local v11, "i":I
    :cond_12
    :goto_12
    if-lt v11, v9, :cond_16

    move v10, v11

    .line 1203
    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto :goto_8

    .line 1186
    .end local v10    # "i":I
    .restart local v11    # "i":I
    :cond_16
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aget-char v0, v8, v11

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1188
    add-int/lit8 v0, v10, -0x1

    aget-char v6, v8, v0

    .line 1189
    .local v6, "ch":C
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_41

    if-ge v10, v9, :cond_41

    .line 1190
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    aget-char v7, v8, v10

    .line 1191
    .local v7, "ch2":C
    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1192
    invoke-static {v6, v7}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_40
    move v10, v11

    .line 1197
    .end local v7    # "ch2":C
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_41
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "InvalidXMLCharInDOM"

    .line 1198
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v10, -0x1

    aget-char v5, v8, v5

    const/16 v12, 0x10

    invoke-static {v5, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1196
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1199
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x2

    .line 1200
    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1199
    invoke-static/range {v0 .. v5}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .end local v3    # "msg":Ljava/lang/String;
    .end local v6    # "ch":C
    :cond_64
    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_12

    .line 1206
    .end local v11    # "i":I
    :cond_66
    const/4 v10, 0x0

    .restart local v10    # "i":I
    move v11, v10

    .line 1207
    .end local v10    # "i":I
    .restart local v11    # "i":I
    :cond_68
    :goto_68
    if-lt v11, v9, :cond_6c

    move v10, v11

    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto :goto_8

    .line 1208
    .end local v10    # "i":I
    .restart local v11    # "i":I
    :cond_6c
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aget-char v0, v8, v11

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 1210
    add-int/lit8 v0, v10, -0x1

    aget-char v6, v8, v0

    .line 1211
    .restart local v6    # "ch":C
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_97

    if-ge v10, v9, :cond_97

    .line 1212
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    aget-char v7, v8, v10

    .line 1213
    .restart local v7    # "ch2":C
    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1214
    invoke-static {v6, v7}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_68

    :cond_96
    move v10, v11

    .line 1219
    .end local v7    # "ch2":C
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_97
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "InvalidXMLCharInDOM"

    .line 1220
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v10, -0x1

    aget-char v5, v8, v5

    const/16 v12, 0x10

    invoke-static {v5, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1218
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1221
    .restart local v3    # "msg":Ljava/lang/String;
    const/4 v4, 0x2

    .line 1222
    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1221
    invoke-static/range {v0 .. v5}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .end local v3    # "msg":Ljava/lang/String;
    .end local v6    # "ch":C
    :cond_ba
    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_68
.end method

.method private processDTD(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "xmlVersion"    # Ljava/lang/String;
    .param p2, "schemaLocation"    # Ljava/lang/String;

    .prologue
    .line 683
    const/4 v2, 0x0

    .line 684
    .local v2, "rootName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 685
    .local v3, "publicId":Ljava/lang/String;
    move-object v4, p2

    .line 686
    .local v4, "systemId":Ljava/lang/String;
    iget-object v1, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v5

    .line 687
    .local v5, "baseSystemId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 689
    .local v6, "internalSubset":Ljava/lang/String;
    iget-object v1, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v7

    .line 690
    .local v7, "docType":Lmf/org/w3c/dom/DocumentType;
    if-eqz v7, :cond_5f

    .line 691
    invoke-interface {v7}, Lmf/org/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 692
    invoke-interface {v7}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v3

    .line 693
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_26

    .line 694
    :cond_22
    invoke-interface {v7}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 696
    :cond_26
    invoke-interface {v7}, Lmf/org/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v6

    .line 707
    :cond_2a
    const/4 v0, 0x0

    .line 709
    .local v0, "loader":Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    :try_start_2b
    iget-object v1, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v9, 0x0

    invoke-interface {v1, v2, v3, v4, v9}, Lmf/org/apache/xerces/impl/RevalidationHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 710
    sget-object v1, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDTDLoader(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    move-result-object v0

    .line 711
    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    const/4 v9, 0x1

    invoke-virtual {v0, v1, v9}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setFeature(Ljava/lang/String;Z)V

    .line 712
    iget-object v1, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    .line 713
    iget-object v1, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V

    .line 714
    iget-object v1, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    check-cast v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->loadGrammarWithContext(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_57} :catch_74
    .catchall {:try_start_2b .. :try_end_57} :catchall_7d

    .line 721
    if-eqz v0, :cond_5e

    .line 722
    sget-object v1, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v1, p1, v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    .line 725
    .end local v0    # "loader":Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    :cond_5e
    :goto_5e
    return-void

    .line 701
    :cond_5f
    iget-object v1, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v8

    .line 702
    .local v8, "elem":Lmf/org/w3c/dom/Element;
    if-eqz v8, :cond_5e

    .line 703
    invoke-interface {v8}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 704
    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_5e

    .line 718
    .end local v8    # "elem":Lmf/org/w3c/dom/Element;
    .restart local v0    # "loader":Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    :catch_74
    move-exception v1

    .line 721
    if-eqz v0, :cond_5e

    .line 722
    sget-object v1, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v1, p1, v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    goto :goto_5e

    .line 720
    :catchall_7d
    move-exception v1

    .line 721
    if-eqz v0, :cond_85

    .line 722
    sget-object v9, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v9, p1, v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    .line 724
    :cond_85
    throw v1
.end method

.method public static final reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V
    .registers 7
    .param p0, "errorHandler"    # Lmf/org/w3c/dom/DOMErrorHandler;
    .param p1, "error"    # Lmf/org/apache/xerces/dom/DOMErrorImpl;
    .param p2, "locator"    # Lmf/org/apache/xerces/dom/DOMLocatorImpl;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "severity"    # S
    .param p5, "type"    # Ljava/lang/String;

    .prologue
    .line 1357
    if-eqz p0, :cond_1a

    .line 1358
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DOMErrorImpl;->reset()V

    .line 1359
    iput-object p3, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 1360
    iput-short p4, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 1361
    iput-object p2, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    .line 1362
    iput-object p5, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 1363
    iget-object v0, p2, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    iput-object v0, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    .line 1365
    invoke-interface {p0, p1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1366
    sget-object v0, abort:Ljava/lang/RuntimeException;

    throw v0

    .line 1368
    :cond_1a
    const/4 v0, 0x3

    if-ne p4, v0, :cond_20

    .line 1369
    sget-object v0, abort:Ljava/lang/RuntimeException;

    throw v0

    .line 1370
    :cond_20
    return-void
.end method


# virtual methods
.method protected final addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "element"    # Lmf/org/apache/xerces/dom/ElementImpl;

    .prologue
    .line 1047
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_c

    .line 1051
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {p3, v0, v1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :goto_b
    return-void

    .line 1056
    :cond_c
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "xmlns:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 3
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1968
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 3
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1764
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 5
    .param p1, "rootElement"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1752
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 4
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1895
    invoke-virtual {p0, p1, p2, p3}, startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1896
    invoke-virtual {p0, p1, p3}, endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1897
    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2064
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2075
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 10
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2002
    if-eqz p2, :cond_51

    .line 2003
    const-string v5, "ELEMENT_PSVI"

    invoke-interface {p2, v5}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/ElementPSVI;

    .line 2004
    .local v1, "elementPSVI":Lmf/org/apache/xerces/xs/ElementPSVI;
    if-eqz v1, :cond_51

    .line 2005
    iget-object v0, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 2006
    .local v0, "elementNode":Lmf/org/apache/xerces/dom/ElementImpl;
    iget-boolean v5, p0, fPSVI:Z

    if-eqz v5, :cond_1b

    .line 2007
    iget-object v5, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v5, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/ElementPSVI;)V

    .line 2010
    :cond_1b
    instance-of v5, v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    if-eqz v5, :cond_2f

    .line 2011
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v4

    .line 2012
    .local v4, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-nez v4, :cond_29

    .line 2013
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    :cond_29
    move-object v5, v0

    .line 2015
    check-cast v5, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {v5, v4}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    .line 2018
    .end local v4    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2f
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v2

    .line 2019
    .local v2, "normalizedValue":Ljava/lang/String;
    iget-object v5, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v5, v5, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_41

    .line 2020
    if-eqz v2, :cond_40

    .line 2021
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/ElementImpl;->setTextContent(Ljava/lang/String;)V

    .line 2041
    .end local v0    # "elementNode":Lmf/org/apache/xerces/dom/ElementImpl;
    .end local v1    # "elementPSVI":Lmf/org/apache/xerces/xs/ElementPSVI;
    .end local v2    # "normalizedValue":Ljava/lang/String;
    :cond_40
    :goto_40
    return-void

    .line 2027
    .restart local v0    # "elementNode":Lmf/org/apache/xerces/dom/ElementImpl;
    .restart local v1    # "elementPSVI":Lmf/org/apache/xerces/xs/ElementPSVI;
    .restart local v2    # "normalizedValue":Ljava/lang/String;
    :cond_41
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 2028
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_40

    .line 2030
    if-eqz v2, :cond_40

    .line 2031
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/ElementImpl;->setTextContent(Ljava/lang/String;)V

    goto :goto_40

    .line 2038
    .end local v0    # "elementNode":Lmf/org/apache/xerces/dom/ElementImpl;
    .end local v1    # "elementPSVI":Lmf/org/apache/xerces/xs/ElementPSVI;
    .end local v2    # "normalizedValue":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    :cond_51
    iget-object v5, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    instance-of v5, v5, Lmf/org/apache/xerces/dom/ElementNSImpl;

    if-eqz v5, :cond_40

    .line 2039
    iget-object v5, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v5, Lmf/org/apache/xerces/dom/ElementNSImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    goto :goto_40
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1956
    return-void
.end method

.method protected final expandEntityRef(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V
    .registers 5
    .param p1, "parent"    # Lmf/org/w3c/dom/Node;
    .param p2, "reference"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 729
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "kid":Lmf/org/w3c/dom/Node;
    :goto_4
    if-nez v0, :cond_7

    .line 733
    return-void

    .line 730
    :cond_7
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 731
    .local v1, "next":Lmf/org/w3c/dom/Node;
    invoke-interface {p1, v0, p2}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 729
    move-object v0, v1

    goto :goto_4
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .registers 2

    .prologue
    .line 2085
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 4
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1985
    const/4 v0, 0x1

    iput-boolean v0, p0, fAllWhitespace:Z

    .line 1986
    return-void
.end method

.method protected final namespaceFixUp(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/AttributeMap;)V
    .registers 28
    .param p1, "element"    # Lmf/org/apache/xerces/dom/ElementImpl;
    .param p2, "attributes"    # Lmf/org/apache/xerces/dom/AttributeMap;

    .prologue
    .line 757
    if-eqz p2, :cond_c

    .line 760
    const/16 v20, 0x0

    .local v20, "k":I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v4

    move/from16 v0, v20

    if-lt v0, v4, :cond_73

    .line 825
    .end local v20    # "k":I
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v23

    .line 826
    .local v23, "uri":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getPrefix()Ljava/lang/String;

    move-result-object v22

    .line 827
    .local v22, "prefix":Ljava/lang/String;
    if-eqz v23, :cond_134

    .line 828
    move-object/from16 v0, p0

    iget-object v4, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 829
    if-eqz v22, :cond_28

    .line 830
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_128

    :cond_28
    sget-object v22, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 831
    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    if-eq v4, v0, :cond_59

    .line 838
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v4, v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 840
    move-object/from16 v0, p0

    iget-object v4, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v4, v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 876
    :cond_59
    :goto_59
    if-eqz p2, :cond_72

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, fAttributeList:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneMap(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 880
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_66
    move-object/from16 v0, p0

    iget-object v4, v0, fAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-lt v0, v4, :cond_1c1

    .line 1031
    .end local v19    # "i":I
    :cond_72
    return-void

    .line 761
    .end local v22    # "prefix":Ljava/lang/String;
    .end local v23    # "uri":Ljava/lang/String;
    .restart local v20    # "k":I
    :cond_73
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmf/org/w3c/dom/Attr;

    .line 762
    .local v12, "attr":Lmf/org/w3c/dom/Attr;
    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v23

    .line 763
    .restart local v23    # "uri":Ljava/lang/String;
    if-eqz v23, :cond_c7

    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 765
    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    .line 766
    .local v13, "value":Ljava/lang/String;
    if-nez v13, :cond_95

    .line 767
    sget-object v13, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 771
    :cond_95
    move-object/from16 v0, p0

    iget-object v4, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_cb

    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 774
    move-object/from16 v0, p0

    iget-object v4, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v12, v4, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 775
    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "CantBindXMLNS"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 776
    .local v7, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v8, 0x2

    const-string v9, "CantBindXMLNS"

    invoke-static/range {v4 .. v9}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .line 760
    .end local v7    # "msg":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_c7
    :goto_c7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 780
    .restart local v13    # "value":Ljava/lang/String;
    :cond_cb
    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v22

    .line 781
    .restart local v22    # "prefix":Ljava/lang/String;
    if-eqz v22, :cond_d7

    .line 782
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_103

    :cond_d7
    sget-object v22, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 783
    :goto_d9
    move-object/from16 v0, p0

    iget-object v4, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 784
    .local v21, "localpart":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_10e

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v13}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 787
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c7

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v13}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_c7

    .line 782
    .end local v21    # "localpart":Ljava/lang/String;
    :cond_103
    move-object/from16 v0, p0

    iget-object v4, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto :goto_d9

    .line 798
    .restart local v21    # "localpart":Ljava/lang/String;
    :cond_10e
    move-object/from16 v0, p0

    iget-object v4, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v13}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 799
    move-object/from16 v0, p0

    iget-object v4, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_126

    .end local v13    # "value":Ljava/lang/String;
    :goto_122
    invoke-interface {v4, v5, v13}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_c7

    .restart local v13    # "value":Ljava/lang/String;
    :cond_126
    const/4 v13, 0x0

    goto :goto_122

    .line 830
    .end local v12    # "attr":Lmf/org/w3c/dom/Attr;
    .end local v13    # "value":Ljava/lang/String;
    .end local v20    # "k":I
    .end local v21    # "localpart":Ljava/lang/String;
    :cond_128
    move-object/from16 v0, p0

    iget-object v4, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_2a

    .line 843
    :cond_134
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18e

    .line 846
    move-object/from16 v0, p0

    iget-boolean v4, v0, fNamespaceValidation:Z

    if-eqz v4, :cond_167

    .line 848
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NullLocalElementName"

    .line 849
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 847
    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 850
    .restart local v7    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v8, 0x3

    .line 851
    const-string v9, "NullLocalElementName"

    .line 850
    invoke-static/range {v4 .. v9}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_59

    .line 854
    .end local v7    # "msg":Ljava/lang/String;
    :cond_167
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NullLocalElementName"

    .line 855
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 853
    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 856
    .restart local v7    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v8, 0x2

    .line 857
    const-string v9, "NullLocalElementName"

    .line 856
    invoke-static/range {v4 .. v9}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_59

    .line 861
    .end local v7    # "msg":Ljava/lang/String;
    :cond_18e
    move-object/from16 v0, p0

    iget-object v4, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 862
    if-eqz v23, :cond_59

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_59

    .line 865
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v4, v0, fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 867
    move-object/from16 v0, p0

    iget-object v4, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_59

    .line 881
    .restart local v19    # "i":I
    :cond_1c1
    move-object/from16 v0, p0

    iget-object v4, v0, fAttributeList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmf/org/w3c/dom/Attr;

    .line 882
    .restart local v12    # "attr":Lmf/org/w3c/dom/Attr;
    move-object/from16 v0, p0

    iget-object v4, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v12, v4, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 888
    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->normalize()V

    .line 889
    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 890
    .restart local v13    # "value":Ljava/lang/String;
    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v23

    .line 893
    if-nez v13, :cond_1e2

    .line 894
    sget-object v13, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 900
    :cond_1e2
    move-object/from16 v0, p0

    iget-object v4, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_25f

    move-object/from16 v0, p0

    iget-object v4, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v4, v4, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_25f

    .line 901
    move-object/from16 v0, p0

    iget-object v8, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v9, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v10, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v14

    move-object/from16 v11, p2

    invoke-static/range {v8 .. v14}, isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v4

    if-eqz v4, :cond_25f

    .line 904
    move-object/from16 v0, p0

    iget-boolean v4, v0, fNamespaceValidation:Z

    if-eqz v4, :cond_28a

    .line 905
    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v6

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v24

    .line 910
    .local v24, "wellformed":Z
    :goto_231
    if-nez v24, :cond_25f

    .line 912
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    .line 913
    const-string/jumbo v5, "wf-invalid-character-in-node-name"

    .line 914
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Attr"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 911
    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 915
    .restart local v7    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v8, 0x2

    .line 916
    const-string/jumbo v9, "wf-invalid-character-in-node-name"

    .line 915
    invoke-static/range {v4 .. v9}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .line 921
    .end local v7    # "msg":Ljava/lang/String;
    .end local v24    # "wellformed":Z
    :cond_25f
    if-eqz v23, :cond_365

    .line 922
    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v22

    .line 923
    if-eqz v22, :cond_26d

    .line 924
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_29b

    :cond_26d
    sget-object v22, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 925
    :goto_26f
    move-object/from16 v0, p0

    iget-object v4, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    .line 932
    if-eqz v23, :cond_2a6

    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a6

    .line 880
    :cond_286
    :goto_286
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_66

    .line 908
    :cond_28a
    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v5

    invoke-static {v4, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v24

    .restart local v24    # "wellformed":Z
    goto :goto_231

    .line 924
    .end local v24    # "wellformed":Z
    :cond_29b
    move-object/from16 v0, p0

    iget-object v4, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto :goto_26f

    :cond_2a6
    move-object v4, v12

    .line 948
    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    .line 950
    move-object/from16 v0, p0

    iget-object v4, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 953
    move-object/from16 v0, p0

    iget-object v4, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 955
    .local v18, "declaredURI":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_2cd

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_286

    .line 965
    :cond_2cd
    move-object/from16 v0, p0

    iget-object v4, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 966
    .local v17, "declaredPrefix":Ljava/lang/String;
    if-eqz v17, :cond_2e7

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v0, v4, :cond_2e7

    .line 969
    move-object/from16 v22, v17

    .line 994
    :goto_2e1
    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Lmf/org/w3c/dom/Attr;->setPrefix(Ljava/lang/String;)V

    goto :goto_286

    .line 971
    :cond_2e7
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_2f9

    move-object/from16 v0, p0

    iget-object v4, v0, fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_321

    .line 979
    :cond_2f9
    const/4 v15, 0x1

    .line 980
    .local v15, "counter":I
    move-object/from16 v0, p0

    iget-object v4, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NS"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "counter":I
    .local v16, "counter":I
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move/from16 v15, v16

    .line 981
    .end local v16    # "counter":I
    .restart local v15    # "counter":I
    :goto_315
    move-object/from16 v0, p0

    iget-object v4, v0, fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_349

    .line 987
    .end local v15    # "counter":I
    :cond_321
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v4, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v13}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 989
    move-object/from16 v0, p0

    iget-object v4, v0, fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    invoke-interface {v4, v0, v13}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v4, v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2e1

    .line 982
    .restart local v15    # "counter":I
    :cond_349
    move-object/from16 v0, p0

    iget-object v4, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NS"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "counter":I
    .restart local v16    # "counter":I
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move/from16 v15, v16

    .end local v16    # "counter":I
    .restart local v15    # "counter":I
    goto :goto_315

    .end local v15    # "counter":I
    .end local v17    # "declaredPrefix":Ljava/lang/String;
    .end local v18    # "declaredURI":Ljava/lang/String;
    :cond_365
    move-object v4, v12

    .line 1002
    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    .line 1004
    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_286

    .line 1006
    move-object/from16 v0, p0

    iget-boolean v4, v0, fNamespaceValidation:Z

    if-eqz v4, :cond_39f

    .line 1008
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    .line 1009
    const-string v5, "NullLocalAttrName"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 1007
    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1010
    .restart local v7    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v8, 0x3

    .line 1011
    const-string v9, "NullLocalAttrName"

    .line 1010
    invoke-static/range {v4 .. v9}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_286

    .line 1014
    .end local v7    # "msg":Ljava/lang/String;
    :cond_39f
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    .line 1015
    const-string v5, "NullLocalAttrName"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 1013
    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1016
    .restart local v7    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v8, 0x2

    .line 1017
    const-string v9, "NullLocalAttrName"

    .line 1016
    invoke-static/range {v4 .. v9}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_286
.end method

.method final normalizeAttributeValue(Ljava/lang/String;Lmf/org/w3c/dom/Attr;)Ljava/lang/String;
    .registers 15
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "attr"    # Lmf/org/w3c/dom/Attr;

    .prologue
    const/16 v11, 0x20

    const/16 v10, 0xa

    .line 1406
    invoke-interface {p2}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v6

    if-nez v6, :cond_c

    move-object v5, p1

    .line 1438
    .end local p1    # "value":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    :goto_b
    return-object v5

    .line 1411
    .end local v5    # "value":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/String;
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1413
    .local v1, "end":I
    iget-object v6, p0, fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v6, v6

    if-ge v6, v1, :cond_1d

    .line 1414
    iget-object v6, p0, fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    new-array v7, v1, [C

    iput-object v7, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    .line 1416
    :cond_1d
    iget-object v6, p0, fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v7, 0x0

    iput v7, v6, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 1417
    const/4 v4, 0x0

    .line 1418
    .local v4, "normalized":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    if-lt v2, v1, :cond_33

    .line 1434
    if-eqz v4, :cond_31

    .line 1435
    iget-object v6, p0, fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1436
    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    :cond_31
    move-object v5, p1

    .line 1438
    .end local p1    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_b

    .line 1419
    .end local v5    # "value":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/String;
    :cond_33
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1420
    .local v0, "c":C
    const/16 v6, 0x9

    if-eq v0, v6, :cond_3d

    if-ne v0, v10, :cond_4f

    .line 1421
    :cond_3d
    iget-object v6, p0, fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v7, p0, fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v11, v6, v8

    .line 1422
    const/4 v4, 0x1

    .line 1418
    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 1424
    :cond_4f
    const/16 v6, 0xd

    if-ne v0, v6, :cond_6e

    .line 1425
    const/4 v4, 0x1

    .line 1426
    iget-object v6, p0, fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v7, p0, fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v11, v6, v8

    .line 1427
    add-int/lit8 v3, v2, 0x1

    .line 1428
    .local v3, "next":I
    if-ge v3, v1, :cond_4c

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_4c

    move v2, v3

    .line 1429
    goto :goto_4c

    .line 1431
    .end local v3    # "next":I
    :cond_6e
    iget-object v6, p0, fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v7, p0, fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v0, v6, v8

    goto :goto_4c
.end method

.method protected normalizeDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Lmf/org/apache/xerces/dom/DOMConfigurationImpl;)V
    .registers 16
    .param p1, "document"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "config"    # Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 177
    iput-object p1, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 178
    iput-object p2, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    .line 179
    iput-boolean v9, p0, fAllWhitespace:Z

    .line 180
    iput-boolean v9, p0, fNamespaceValidation:Z

    .line 182
    iget-object v7, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "xmlVersion":Ljava/lang/String;
    const/4 v5, 0x0

    .line 184
    .local v5, "schemaType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 188
    .local v4, "schemaLocations":[Ljava/lang/String;
    iget-object v7, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v7, v11}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v7, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 190
    iget-object v7, p0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v7}, Lmf/org/apache/xerces/xni/NamespaceContext;->reset()V

    .line 191
    iget-object v7, p0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v11, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {v7, v11, v10}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    iget-object v7, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v7, v7, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_12a

    .line 194
    iget-object v7, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v11, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v7, v11}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
    .local v3, "schemaLang":Ljava/lang/String;
    if-eqz v3, :cond_109

    sget-object v7, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_109

    .line 197
    const-string/jumbo v5, "http://www.w3.org/2001/XMLSchema"

    .line 198
    sget-object v7, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v7, v5, v6}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getValidator(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-result-object v7

    iput-object v7, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    .line 199
    iget-object v7, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v11, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v7, v11, v8}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    .line 200
    iget-object v7, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v11, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {v7, v11, v8}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    .line 202
    iput-boolean v8, p0, fNamespaceValidation:Z

    .line 205
    iget-object v7, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v7, v7, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_106

    move v7, v8

    :goto_70
    iput-boolean v7, p0, fPSVI:Z

    .line 217
    :goto_72
    iget-object v7, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v9, "http://xml.org/sax/features/validation"

    invoke-virtual {v7, v9, v8}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    .line 220
    iget-object v7, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->clearIdentifiers()V

    .line 222
    iget-object v7, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v7, :cond_8c

    .line 224
    iget-object v7, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    check-cast v7, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    iget-object v8, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-interface {v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 231
    .end local v3    # "schemaLang":Ljava/lang/String;
    :cond_8c
    :goto_8c
    iget-object v7, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v8, "error-handler"

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/w3c/dom/DOMErrorHandler;

    iput-object v7, p0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    .line 232
    iget-object v7, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v7, :cond_d6

    .line 233
    iget-object v7, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface {v7, p0}, Lmf/org/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 234
    iget-object v7, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    .line 235
    new-instance v8, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v9, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v9, v9, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    iget-object v11, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v11, v11, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    invoke-direct {v8, v9, v11, v12, v12}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 236
    iget-object v9, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v9, v9, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    iget-object v11, p0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 234
    invoke-interface {v7, v8, v9, v11, v10}, Lmf/org/apache/xerces/impl/RevalidationHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 237
    iget-object v8, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget-object v7, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v9

    .line 238
    iget-object v7, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlEncoding()Ljava/lang/String;

    move-result-object v11

    iget-object v7, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlStandalone()Z

    move-result v7

    if-eqz v7, :cond_12e

    const-string/jumbo v7, "yes"

    .line 237
    :goto_d3
    invoke-interface {v8, v9, v11, v7, v10}, Lmf/org/apache/xerces/impl/RevalidationHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 241
    :cond_d6
    :try_start_d6
    const-string/jumbo v7, "http://www.w3.org/TR/REC-xml"

    if-ne v5, v7, :cond_e3

    .line 242
    if-eqz v4, :cond_132

    const/4 v7, 0x0

    aget-object v7, v4, v7

    :goto_e0
    invoke-direct {p0, v6, v7}, processDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_e3
    iget-object v7, p0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/ParentNode;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "kid":Lmf/org/w3c/dom/Node;
    :goto_e9
    if-nez v1, :cond_134

    .line 255
    iget-object v7, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v7, :cond_105

    .line 256
    iget-object v7, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lmf/org/apache/xerces/impl/RevalidationHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 257
    iget-object v7, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lmf/org/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 258
    sget-object v7, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    iget-object v8, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-virtual {v7, v5, v6, v8}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseValidator(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    .line 259
    const/4 v7, 0x0

    iput-object v7, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;
    :try_end_105
    .catch Ljava/lang/RuntimeException; {:try_start_d6 .. :try_end_105} :catch_141

    .line 274
    .end local v1    # "kid":Lmf/org/w3c/dom/Node;
    :cond_105
    return-void

    .restart local v3    # "schemaLang":Ljava/lang/String;
    :cond_106
    move v7, v9

    .line 205
    goto/16 :goto_70

    .line 208
    :cond_109
    const-string/jumbo v5, "http://www.w3.org/TR/REC-xml"

    .line 209
    if-eqz v3, :cond_119

    .line 210
    iget-object v7, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v11, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v7, v11}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "schemaLocations":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 212
    .restart local v4    # "schemaLocations":[Ljava/lang/String;
    :cond_119
    iget-object v7, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setDTDValidatorFactory(Ljava/lang/String;)V

    .line 213
    sget-object v7, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v7, v5, v6}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getValidator(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-result-object v7

    iput-object v7, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    .line 214
    iput-boolean v9, p0, fPSVI:Z

    goto/16 :goto_72

    .line 228
    .end local v3    # "schemaLang":Ljava/lang/String;
    :cond_12a
    iput-object v10, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    goto/16 :goto_8c

    .line 238
    :cond_12e
    const-string/jumbo v7, "no"

    goto :goto_d3

    :cond_132
    move-object v7, v10

    .line 242
    goto :goto_e0

    .line 247
    .restart local v1    # "kid":Lmf/org/w3c/dom/Node;
    :cond_134
    :try_start_134
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 248
    .local v2, "next":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, v1}, normalizeNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_13b
    .catch Ljava/lang/RuntimeException; {:try_start_134 .. :try_end_13b} :catch_141

    move-result-object v1

    .line 249
    if-eqz v1, :cond_13f

    .line 250
    move-object v2, v1

    .line 246
    :cond_13f
    move-object v1, v2

    goto :goto_e9

    .line 262
    .end local v1    # "kid":Lmf/org/w3c/dom/Node;
    .end local v2    # "next":Lmf/org/w3c/dom/Node;
    :catch_141
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v7, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v7, :cond_154

    .line 265
    iget-object v7, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface {v7, v10}, Lmf/org/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 266
    sget-object v7, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    iget-object v8, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-virtual {v7, v5, v6, v8}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseValidator(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    .line 267
    iput-object v10, p0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    .line 269
    :cond_154
    sget-object v7, abort:Ljava/lang/RuntimeException;

    if-eq v0, v7, :cond_105

    .line 272
    throw v0
.end method

.method protected normalizeNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 35
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 293
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v30

    .line 295
    .local v30, "type":I
    move-object/from16 v0, p0

    iget-object v3, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    move-object/from16 v0, p1

    iput-object v0, v3, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 297
    packed-switch v30, :pswitch_data_5ee

    .line 678
    :cond_f
    :goto_f
    :pswitch_f
    const/16 v27, 0x0

    :cond_11
    :goto_11
    return-object v27

    .line 313
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_76

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_76

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 316
    move-object/from16 v0, p0

    iget-boolean v3, v0, fNamespaceValidation:Z

    if-eqz v3, :cond_13f

    .line 317
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v5

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v32

    .line 322
    .local v32, "wellformed":Z
    :goto_48
    if-nez v32, :cond_76

    .line 324
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    .line 325
    const-string/jumbo v4, "wf-invalid-character-in-node-name"

    .line 326
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Element"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 323
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v7, 0x2

    .line 328
    const-string/jumbo v8, "wf-invalid-character-in-node-name"

    .line 327
    invoke-static/range {v3 .. v8}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .line 333
    .end local v6    # "msg":Ljava/lang/String;
    .end local v32    # "wellformed":Z
    :cond_76
    move-object/from16 v0, p0

    iget-object v3, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->reset()V

    move-object/from16 v16, p1

    .line 336
    check-cast v16, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 337
    .local v16, "elem":Lmf/org/apache/xerces/dom/ElementImpl;
    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncChildren()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 338
    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeChildren()V

    .line 340
    :cond_91
    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_151

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/dom/AttributeMap;

    move-object v10, v3

    .line 343
    .local v10, "attributes":Lmf/org/apache/xerces/dom/AttributeMap;
    :goto_9e
    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_17f

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v10}, namespaceFixUp(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/AttributeMap;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_c5

    if-eqz v10, :cond_c5

    .line 350
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_bd
    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v3

    move/from16 v0, v18

    if-lt v0, v3, :cond_154

    .line 390
    .end local v18    # "i":I
    :cond_c5
    move-object/from16 v0, p0

    iget-object v3, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_103

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, v16

    invoke-virtual {v3, v10, v4, v0}, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->setAttributes(Lmf/org/apache/xerces/dom/AttributeMap;Lmf/org/apache/xerces/dom/CoreDocumentImpl;Lmf/org/apache/xerces/dom/ElementImpl;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, fQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object/from16 v0, p1

    iput-object v0, v3, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 399
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, fQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v5, v0, fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/RevalidationHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 406
    :cond_103
    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v20

    .local v20, "kid":Lmf/org/w3c/dom/Node;
    :goto_107
    if-nez v20, :cond_22a

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_136

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, fQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object/from16 v0, p1

    iput-object v0, v3, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 429
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, fQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/impl/RevalidationHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 434
    :cond_136
    move-object/from16 v0, p0

    iget-object v3, v0, fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    goto/16 :goto_f

    .line 320
    .end local v10    # "attributes":Lmf/org/apache/xerces/dom/AttributeMap;
    .end local v16    # "elem":Lmf/org/apache/xerces/dom/ElementImpl;
    .end local v20    # "kid":Lmf/org/w3c/dom/Node;
    :cond_13f
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v32

    .restart local v32    # "wellformed":Z
    goto/16 :goto_48

    .line 340
    .end local v32    # "wellformed":Z
    .restart local v16    # "elem":Lmf/org/apache/xerces/dom/ElementImpl;
    :cond_151
    const/4 v10, 0x0

    goto/16 :goto_9e

    .line 351
    .restart local v10    # "attributes":Lmf/org/apache/xerces/dom/AttributeMap;
    .restart local v18    # "i":I
    :cond_154
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmf/org/w3c/dom/Attr;

    .line 352
    .local v14, "att":Lmf/org/w3c/dom/Attr;
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v14}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_174

    .line 353
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v14}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 354
    :cond_174
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/dom/ElementImpl;->removeAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    .line 355
    add-int/lit8 v18, v18, -0x1

    .line 350
    :cond_17b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_bd

    .line 361
    .end local v14    # "att":Lmf/org/w3c/dom/Attr;
    .end local v18    # "i":I
    :cond_17f
    if-eqz v10, :cond_c5

    .line 362
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_183
    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_c5

    .line 363
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lmf/org/w3c/dom/Attr;

    .line 365
    .local v11, "attr":Lmf/org/w3c/dom/Attr;
    invoke-interface {v11}, Lmf/org/w3c/dom/Attr;->normalize()V

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_215

    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_215

    .line 367
    move-object/from16 v0, p0

    iget-object v7, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {v11}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v13

    invoke-static/range {v7 .. v13}, isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v3

    if-eqz v3, :cond_215

    .line 369
    move-object/from16 v0, p0

    iget-boolean v3, v0, fNamespaceValidation:Z

    if-eqz v3, :cond_219

    .line 370
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v5

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v32

    .line 375
    .restart local v32    # "wellformed":Z
    :goto_1e7
    if-nez v32, :cond_215

    .line 377
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    .line 378
    const-string/jumbo v4, "wf-invalid-character-in-node-name"

    .line 379
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Attr"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 376
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 380
    .restart local v6    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v7, 0x2

    .line 381
    const-string/jumbo v8, "wf-invalid-character-in-node-name"

    .line 380
    invoke-static/range {v3 .. v8}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .line 362
    .end local v6    # "msg":Ljava/lang/String;
    .end local v32    # "wellformed":Z
    :cond_215
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_183

    .line 373
    :cond_219
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v32

    .restart local v32    # "wellformed":Z
    goto :goto_1e7

    .line 407
    .end local v11    # "attr":Lmf/org/w3c/dom/Attr;
    .end local v18    # "i":I
    .end local v32    # "wellformed":Z
    .restart local v20    # "kid":Lmf/org/w3c/dom/Node;
    :cond_22a
    invoke-interface/range {v20 .. v20}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v22

    .line 408
    .local v22, "next":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, normalizeNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v20

    .line 409
    if-eqz v20, :cond_23a

    .line 410
    move-object/from16 v22, v20

    .line 406
    :cond_23a
    move-object/from16 v20, v22

    goto/16 :goto_107

    .line 444
    .end local v10    # "attributes":Lmf/org/apache/xerces/dom/AttributeMap;
    .end local v16    # "elem":Lmf/org/apache/xerces/dom/ElementImpl;
    .end local v20    # "kid":Lmf/org/w3c/dom/Node;
    .end local v22    # "next":Lmf/org/w3c/dom/Node;
    :pswitch_23e
    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_284

    .line 445
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v27

    .line 446
    .local v27, "prevSibling":Lmf/org/w3c/dom/Node;
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v25

    .line 448
    .local v25, "parent":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 449
    if-eqz v27, :cond_f

    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    .line 450
    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v23

    .line 451
    .local v23, "nextSibling":Lmf/org/w3c/dom/Node;
    if-eqz v23, :cond_f

    invoke-interface/range {v23 .. v23}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    move-object/from16 v3, v23

    .line 452
    check-cast v3, Lmf/org/apache/xerces/dom/TextImpl;

    const/4 v4, 0x0

    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/dom/TextImpl;->insertData(ILjava/lang/String;)V

    .line 453
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object/from16 v27, v23

    .line 454
    goto/16 :goto_11

    .line 459
    .end local v23    # "nextSibling":Lmf/org/w3c/dom/Node;
    .end local v25    # "parent":Lmf/org/w3c/dom/Node;
    .end local v27    # "prevSibling":Lmf/org/w3c/dom/Node;
    :cond_284
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_2b5

    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_2b5

    move-object/from16 v3, p1

    .line 460
    check-cast v3, Lmf/org/w3c/dom/Comment;

    invoke-interface {v3}, Lmf/org/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v15

    .line 463
    .local v15, "commentdata":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v7

    invoke-static {v3, v4, v5, v15, v7}, isCommentWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    .line 465
    .end local v15    # "commentdata":Ljava/lang/String;
    :cond_2b5
    move-object/from16 v0, p0

    iget-object v3, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_f

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    sget-object v4, EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/impl/RevalidationHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_f

    .line 480
    :pswitch_2c7
    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_313

    .line 481
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v27

    .line 482
    .restart local v27    # "prevSibling":Lmf/org/w3c/dom/Node;
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v25

    .restart local v25    # "parent":Lmf/org/w3c/dom/Node;
    move-object/from16 v3, p1

    .line 483
    check-cast v3, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    .line 484
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, expandEntityRef(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V

    .line 485
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 486
    if-eqz v27, :cond_30e

    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v22

    .line 490
    .restart local v22    # "next":Lmf/org/w3c/dom/Node;
    :goto_2f8
    if-eqz v27, :cond_30a

    if-eqz v22, :cond_30a

    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_30a

    .line 491
    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_11

    :cond_30a
    move-object/from16 v27, v22

    .line 494
    goto/16 :goto_11

    .line 486
    .end local v22    # "next":Lmf/org/w3c/dom/Node;
    :cond_30e
    invoke-interface/range {v25 .. v25}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v22

    goto :goto_2f8

    .line 496
    .end local v25    # "parent":Lmf/org/w3c/dom/Node;
    .end local v27    # "prevSibling":Lmf/org/w3c/dom/Node;
    :cond_313
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_f

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 498
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    goto/16 :goto_f

    .line 511
    :pswitch_340
    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_38b

    .line 513
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v27

    .line 514
    .restart local v27    # "prevSibling":Lmf/org/w3c/dom/Node;
    if-eqz v27, :cond_36d

    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_36d

    move-object/from16 v3, v27

    .line 515
    check-cast v3, Lmf/org/w3c/dom/Text;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    .line 516
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_11

    .line 520
    :cond_36d
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v29

    .line 521
    .local v29, "text":Lmf/org/w3c/dom/Text;
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v25

    .line 522
    .restart local v25    # "parent":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/Node;->replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    move-object/from16 v27, v29

    .line 523
    goto/16 :goto_11

    .line 529
    .end local v25    # "parent":Lmf/org/w3c/dom/Node;
    .end local v27    # "prevSibling":Lmf/org/w3c/dom/Node;
    .end local v29    # "text":Lmf/org/w3c/dom/Text;
    :cond_38b
    move-object/from16 v0, p0

    iget-object v3, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_3bd

    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object/from16 v0, p1

    iput-object v0, v3, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 533
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/impl/RevalidationHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v3, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/impl/RevalidationHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 538
    :cond_3bd
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v31

    .line 540
    .local v31, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_450

    .line 542
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v25

    .line 543
    .restart local v25    # "parent":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_3f2

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v8

    invoke-static {v3, v4, v5, v7, v8}, isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    .line 546
    :cond_3f2
    :goto_3f2
    const-string v3, "]]>"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    .local v19, "index":I
    if-ltz v19, :cond_f

    .line 547
    const/4 v3, 0x0

    add-int/lit8 v4, v19, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 548
    add-int/lit8 v3, v19, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    .line 550
    move-object/from16 v17, p1

    .line 551
    .local v17, "firstSplitNode":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v21

    .line 552
    .local v21, "newChild":Lmf/org/w3c/dom/Node;
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v3}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 553
    move-object/from16 p1, v21

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    move-object/from16 v0, v17

    iput-object v0, v3, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 557
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    .line 558
    const-string v4, "cdata-sections-splitted"

    .line 559
    const/4 v5, 0x0

    .line 556
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 560
    .restart local v6    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v7, 0x1

    .line 561
    const-string v8, "cdata-sections-splitted"

    .line 560
    invoke-static/range {v3 .. v8}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_3f2

    .line 565
    .end local v6    # "msg":Ljava/lang/String;
    .end local v17    # "firstSplitNode":Lmf/org/w3c/dom/Node;
    .end local v19    # "index":I
    .end local v21    # "newChild":Lmf/org/w3c/dom/Node;
    .end local v25    # "parent":Lmf/org/w3c/dom/Node;
    :cond_450
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_f

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v7

    move-object/from16 v0, v31

    invoke-static {v3, v4, v5, v0, v7}, isCDataWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_f

    .line 581
    .end local v31    # "value":Ljava/lang/String;
    :pswitch_473
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v22

    .line 583
    .restart local v22    # "next":Lmf/org/w3c/dom/Node;
    if-eqz v22, :cond_498

    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_498

    move-object/from16 v3, p1

    .line 584
    check-cast v3, Lmf/org/w3c/dom/Text;

    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    .line 585
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object/from16 v27, p1

    .line 589
    goto/16 :goto_11

    .line 590
    :cond_498
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4ad

    .line 592
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_f

    .line 600
    :cond_4ad
    if-eqz v22, :cond_550

    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v24

    .line 601
    .local v24, "nextType":S
    :goto_4b3
    const/4 v3, -0x1

    move/from16 v0, v24

    if-eq v0, v3, :cond_4e6

    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_4c7

    .line 602
    const/4 v3, 0x6

    move/from16 v0, v24

    if-eq v0, v3, :cond_f

    .line 603
    :cond_4c7
    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_4d7

    .line 604
    const/16 v3, 0x8

    move/from16 v0, v24

    if-eq v0, v3, :cond_f

    .line 605
    :cond_4d7
    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_4e6

    .line 606
    const/4 v3, 0x4

    move/from16 v0, v24

    if-eq v0, v3, :cond_f

    .line 607
    :cond_4e6
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_513

    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_513

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v8

    invoke-static {v3, v4, v5, v7, v8}, isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    .line 610
    :cond_513
    move-object/from16 v0, p0

    iget-object v3, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_f

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object/from16 v0, p1

    iput-object v0, v3, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 612
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z

    .line 614
    move-object/from16 v0, p0

    iget-boolean v3, v0, fNamespaceValidation:Z

    if-nez v3, :cond_f

    .line 615
    move-object/from16 v0, p0

    iget-boolean v3, v0, fAllWhitespace:Z

    if-eqz v3, :cond_554

    .line 616
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, fAllWhitespace:Z

    move-object/from16 v3, p1

    .line 617
    check-cast v3, Lmf/org/apache/xerces/dom/TextImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    goto/16 :goto_f

    .line 600
    .end local v24    # "nextType":S
    :cond_550
    const/16 v24, -0x1

    goto/16 :goto_4b3

    .restart local v24    # "nextType":S
    :cond_554
    move-object/from16 v3, p1

    .line 620
    check-cast v3, Lmf/org/apache/xerces/dom/TextImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    goto/16 :goto_f

    .line 640
    .end local v22    # "next":Lmf/org/w3c/dom/Node;
    .end local v24    # "nextType":S
    :pswitch_55e
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_5cf

    move-object/from16 v0, p0

    iget-object v3, v0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_5cf

    move-object/from16 v26, p1

    .line 641
    check-cast v26, Lmf/org/w3c/dom/ProcessingInstruction;

    .line 643
    .local v26, "pinode":Lmf/org/w3c/dom/ProcessingInstruction;
    invoke-interface/range {v26 .. v26}, Lmf/org/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v28

    .line 645
    .local v28, "target":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v3

    if-eqz v3, :cond_5e9

    .line 646
    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v32

    .line 652
    .restart local v32    # "wellformed":Z
    :goto_586
    if-nez v32, :cond_5b4

    .line 654
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    .line 655
    const-string/jumbo v4, "wf-invalid-character-in-node-name"

    .line 656
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Element"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 653
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 657
    .restart local v6    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v7, 0x2

    .line 658
    const-string/jumbo v8, "wf-invalid-character-in-node-name"

    .line 657
    invoke-static/range {v3 .. v8}, reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .line 664
    .end local v6    # "msg":Ljava/lang/String;
    :cond_5b4
    move-object/from16 v0, p0

    iget-object v3, v0, fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface/range {v26 .. v26}, Lmf/org/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v8

    invoke-static {v3, v4, v5, v7, v8}, isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    .line 667
    .end local v26    # "pinode":Lmf/org/w3c/dom/ProcessingInstruction;
    .end local v28    # "target":Ljava/lang/String;
    .end local v32    # "wellformed":Z
    :cond_5cf
    move-object/from16 v0, p0

    iget-object v3, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_f

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-object/from16 v3, p1

    check-cast v3, Lmf/org/w3c/dom/ProcessingInstruction;

    invoke-interface {v3}, Lmf/org/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v3

    sget-object v5, EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v7, 0x0

    invoke-interface {v4, v3, v5, v7}, Lmf/org/apache/xerces/impl/RevalidationHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_f

    .line 649
    .restart local v26    # "pinode":Lmf/org/w3c/dom/ProcessingInstruction;
    .restart local v28    # "target":Ljava/lang/String;
    :cond_5e9
    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v32

    .restart local v32    # "wellformed":Z
    goto :goto_586

    .line 297
    :pswitch_data_5ee
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_473
        :pswitch_340
        :pswitch_2c7
        :pswitch_f
        :pswitch_55e
        :pswitch_23e
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1786
    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .registers 2
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .prologue
    .line 2080
    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2053
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 5
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "namespaceContext"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1716
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 19
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1800
    iget-object v4, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v4, Lmf/org/w3c/dom/Element;

    .line 1801
    .local v4, "currentElement":Lmf/org/w3c/dom/Element;
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v2

    .line 1807
    .local v2, "attrCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_9
    if-lt v6, v2, :cond_c

    .line 1876
    return-void

    .line 1808
    :cond_c
    iget-object v12, p0, fAttrQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 1809
    const/4 v1, 0x0

    .line 1811
    .local v1, "attr":Lmf/org/w3c/dom/Attr;
    iget-object v12, p0, fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v13, p0, fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v13, v13, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {v4, v12, v13}, Lmf/org/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    .line 1812
    if-nez v1, :cond_2a

    .line 1814
    iget-object v12, p0, fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v4, v12}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    .line 1817
    :cond_2a
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v12

    const-string v13, "ATTRIBUTE_PSVI"

    invoke-interface {v12, v13}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/AttributePSVI;

    .line 1819
    .local v3, "attrPSVI":Lmf/org/apache/xerces/xs/AttributePSVI;
    if-eqz v3, :cond_8e

    .line 1822
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v5

    .line 1823
    .local v5, "decl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    const/4 v7, 0x0

    .line 1824
    .local v7, "id":Z
    if-eqz v5, :cond_80

    move-object v12, v5

    .line 1825
    check-cast v12, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v12}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v7

    .line 1833
    :cond_48
    :goto_48
    if-eqz v7, :cond_51

    move-object v12, v4

    .line 1834
    check-cast v12, Lmf/org/apache/xerces/dom/ElementImpl;

    const/4 v13, 0x1

    invoke-virtual {v12, v1, v13}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    .line 1837
    :cond_51
    iget-boolean v12, p0, fPSVI:Z

    if-eqz v12, :cond_5b

    move-object v12, v1

    .line 1838
    check-cast v12, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;

    invoke-virtual {v12, v3}, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/AttributePSVI;)V

    :cond_5b
    move-object v12, v1

    .line 1842
    check-cast v12, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v12, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    .line 1844
    iget-object v12, p0, fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v12, v12, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_7d

    .line 1850
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v9

    .line 1851
    .local v9, "normalizedValue":Ljava/lang/String;
    if-eqz v9, :cond_7d

    .line 1852
    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v10

    .line 1853
    .local v10, "specified":Z
    invoke-interface {v1, v9}, Lmf/org/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 1854
    if-nez v10, :cond_7d

    .line 1855
    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    .end local v1    # "attr":Lmf/org/w3c/dom/Attr;
    invoke-virtual {v1, v10}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    .line 1807
    .end local v5    # "decl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .end local v7    # "id":Z
    .end local v9    # "normalizedValue":Ljava/lang/String;
    .end local v10    # "specified":Z
    :cond_7d
    :goto_7d
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1828
    .restart local v1    # "attr":Lmf/org/w3c/dom/Attr;
    .restart local v5    # "decl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .restart local v7    # "id":Z
    :cond_80
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    .line 1829
    if-eqz v5, :cond_48

    move-object v12, v5

    .line 1830
    check-cast v12, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v12}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v7

    goto :goto_48

    .line 1861
    .end local v5    # "decl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .end local v7    # "id":Z
    :cond_8e
    const/4 v11, 0x0

    .line 1862
    .local v11, "type":Ljava/lang/String;
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v13

    const-string v14, "ATTRIBUTE_DECLARED"

    invoke-interface {v13, v14}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1866
    .local v8, "isDeclared":Z
    if-eqz v8, :cond_b8

    .line 1867
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v11

    .line 1868
    const-string v12, "ID"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b8

    move-object v12, v4

    .line 1869
    check-cast v12, Lmf/org/apache/xerces/dom/ElementImpl;

    const/4 v13, 0x1

    invoke-virtual {v12, v1, v13}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    .line 1873
    :cond_b8
    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    .end local v1    # "attr":Lmf/org/w3c/dom/Attr;
    invoke-virtual {v1, v11}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    goto :goto_7d
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1920
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 4
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1941
    return-void
.end method

.method protected final updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V
    .registers 9
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "qname"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    const/4 v4, 0x0

    .line 1374
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 1375
    .local v2, "prefix":Ljava/lang/String;
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 1376
    .local v1, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 1379
    .local v0, "localName":Ljava/lang/String;
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1b
    iput-object v3, p2, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1380
    if-eqz v0, :cond_40

    iget-object v3, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_25
    iput-object v3, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 1381
    iget-object v3, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 1382
    if-eqz v1, :cond_3b

    iget-object v3, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3b
    iput-object v4, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 1383
    return-void

    :cond_3e
    move-object v3, v4

    .line 1379
    goto :goto_1b

    :cond_40
    move-object v3, v4

    .line 1380
    goto :goto_25
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .registers 5
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "standalone"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1734
    return-void
.end method
