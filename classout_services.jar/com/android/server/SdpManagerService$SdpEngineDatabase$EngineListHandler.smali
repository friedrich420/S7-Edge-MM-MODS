.class Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineListHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;
    }
.end annotation


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ELEMENT_ENGINE:Ljava/lang/String; = "engine"

.field private static final ELEMENT_ENGINE_LIST:Ljava/lang/String; = "engine_list"

.field private static final ENGINE_LIST_XML:Ljava/lang/String; = "sdp_engine_list.xml"


# instance fields
.field final synthetic this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V
    .registers 2

    .prologue
    .line 1732
    iput-object p1, p0, this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1826
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p2, "x1"    # Lcom/android/server/SdpManagerService$1;

    .prologue
    .line 1732
    invoke-direct {p0, p1}, <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    .prologue
    .line 1732
    invoke-direct {p0}, updateEngineListLocked()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    .prologue
    .line 1732
    invoke-direct {p0}, getEngineListLocked()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method private getEngineListLocked()Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1807
    new-instance v2, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;

    invoke-direct {v2, p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)V

    .line 1808
    .local v2, "handler":Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;
    const/4 v1, 0x0

    .line 1811
    .local v1, "f":Ljava/io/File;
    :try_start_7
    invoke-direct {p0}, getEngineListXmlFile()Ljava/io/File;

    move-result-object v1

    .line 1812
    iget-object v4, p0, this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    invoke-static {v4, v5, v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_27

    .line 1823
    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->getEngineList()Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;)Landroid/util/SparseArray;

    move-result-object v3

    :goto_19
    return-object v3

    .line 1813
    :catch_1a
    move-exception v0

    .line 1814
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1815
    const-string v4, "SdpManagerService"

    const-string/jumbo v5, "failed to get engine list"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 1817
    .end local v0    # "e":Ljava/io/IOException;
    :catch_27
    move-exception v0

    .line 1818
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1819
    const-string v4, "SdpManagerService"

    const-string/jumbo v5, "failed to get engine list"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method private getEngineListXmlFile()Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1740
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/users/sdp_engine_list.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private updateEngineListLocked()I
    .registers 26

    .prologue
    .line 1744
    const/4 v10, 0x0

    .line 1746
    .local v10, "f":Ljava/io/File;
    :try_start_1
    invoke-direct/range {p0 .. p0}, getEngineListXmlFile()Ljava/io/File;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_21

    move-result-object v10

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    if-nez v22, :cond_2f

    .line 1754
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1755
    const/16 v22, 0x0

    .line 1803
    :goto_20
    return v22

    .line 1747
    :catch_21
    move-exception v8

    .line 1748
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 1749
    const-string v22, "SdpManagerService"

    const-string v23, " putPolicy failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    const/16 v22, -0x63

    goto :goto_20

    .line 1759
    .end local v8    # "e":Ljava/io/IOException;
    :cond_2f
    :try_start_2f
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 1760
    .local v7, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 1762
    .local v6, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    .line 1763
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v22, "engine_list"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 1764
    .local v17, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1766
    const/4 v11, 0x0

    .local v11, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v14

    .local v14, "nsize":I
    :goto_5e
    if-ge v11, v14, :cond_f2

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1768
    .local v12, "id":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 1769
    .local v13, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    const-string/jumbo v22, "engine"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 1771
    .local v9, "engineElement":Lorg/w3c/dom/Element;
    const-string v22, "SdpManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "updateEngineListLocked :: inserting alias:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v13}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " id:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    const-string v22, "alias"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    .line 1775
    .local v3, "attrAlias":Lorg/w3c/dom/Attr;
    const-string/jumbo v22, "id"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    .line 1776
    .local v4, "attrId":Lorg/w3c/dom/Attr;
    invoke-virtual {v13}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 1777
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 1778
    invoke-interface {v9, v3}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 1779
    invoke-interface {v9, v4}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 1781
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1766
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5e

    .line 1785
    .end local v3    # "attrAlias":Lorg/w3c/dom/Attr;
    .end local v4    # "attrId":Lorg/w3c/dom/Attr;
    .end local v9    # "engineElement":Lorg/w3c/dom/Element;
    .end local v12    # "id":I
    .end local v13    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_f2
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    .line 1786
    .local v21, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .line 1787
    .local v20, "transformer":Ljavax/xml/transform/Transformer;
    const-string/jumbo v22, "indent"

    const-string/jumbo v23, "yes"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    new-instance v18, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1789
    .local v18, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v16, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1791
    .local v16, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_120
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2f .. :try_end_120} :catch_124
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2f .. :try_end_120} :catch_133

    .line 1803
    const/16 v22, 0x0

    goto/16 :goto_20

    .line 1793
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "i":I
    .end local v14    # "nsize":I
    .end local v16    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v17    # "rootElement":Lorg/w3c/dom/Element;
    .end local v18    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v20    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v21    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_124
    move-exception v15

    .line 1794
    .local v15, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v15}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 1795
    const-string v22, "SdpManagerService"

    const-string v23, " putPolicy failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/16 v22, -0x63

    goto/16 :goto_20

    .line 1797
    .end local v15    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_133
    move-exception v19

    .line 1798
    .local v19, "tfe":Ljavax/xml/transform/TransformerException;
    invoke-virtual/range {v19 .. v19}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 1799
    const-string v22, "SdpManagerService"

    const-string v23, " putPolicy failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    const/16 v22, -0x63

    goto/16 :goto_20
.end method
