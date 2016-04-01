.class Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineInfoXmlHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;
    }
.end annotation


# static fields
.field private static final ENGINE_XML:Ljava/lang/String; = "SdpUser"


# instance fields
.field private final ATTR_ALIAS:Ljava/lang/String;

.field private final ATTR_CHAMBER_PATH:Ljava/lang/String;

.field private final ATTR_FLAGS:Ljava/lang/String;

.field private final ATTR_ID:Ljava/lang/String;

.field private final ATTR_IS_MIGRATING:Ljava/lang/String;

.field private final ATTR_PKG_NAME:Ljava/lang/String;

.field private final ATTR_USERID:Ljava/lang/String;

.field private final ATTR_VAL_FALSE:Ljava/lang/String;

.field private final ATTR_VAL_TRUE:Ljava/lang/String;

.field private final ATTR_VERSION:Ljava/lang/String;

.field private final ELEMENT_USER:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V
    .registers 3

    .prologue
    .line 1893
    iput-object p1, p0, this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1896
    const-string/jumbo v0, "user"

    iput-object v0, p0, ELEMENT_USER:Ljava/lang/String;

    .line 1898
    const-string v0, "alias"

    iput-object v0, p0, ATTR_ALIAS:Ljava/lang/String;

    .line 1899
    const-string/jumbo v0, "id"

    iput-object v0, p0, ATTR_ID:Ljava/lang/String;

    .line 1900
    const-string/jumbo v0, "userid"

    iput-object v0, p0, ATTR_USERID:Ljava/lang/String;

    .line 1901
    const-string/jumbo v0, "flags"

    iput-object v0, p0, ATTR_FLAGS:Ljava/lang/String;

    .line 1902
    const-string/jumbo v0, "version"

    iput-object v0, p0, ATTR_VERSION:Ljava/lang/String;

    .line 1903
    const-string/jumbo v0, "isMigrating"

    iput-object v0, p0, ATTR_IS_MIGRATING:Ljava/lang/String;

    .line 1904
    const-string v0, "chamberPath"

    iput-object v0, p0, ATTR_CHAMBER_PATH:Ljava/lang/String;

    .line 1905
    const-string/jumbo v0, "pkgName"

    iput-object v0, p0, ATTR_PKG_NAME:Ljava/lang/String;

    .line 1907
    const-string/jumbo v0, "true"

    iput-object v0, p0, ATTR_VAL_TRUE:Ljava/lang/String;

    .line 1908
    const-string/jumbo v0, "false"

    iput-object v0, p0, ATTR_VAL_FALSE:Ljava/lang/String;

    .line 1932
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p2, "x1"    # Lcom/android/server/SdpManagerService$1;

    .prologue
    .line 1893
    invoke-direct {p0, p1}, <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
    .param p1, "x1"    # I

    .prologue
    .line 1893
    invoke-direct {p0, p1}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1893
    invoke-direct {p0, p1}, updateEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1893
    invoke-direct {p0, p1}, removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    return-void
.end method

.method private getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .registers 7
    .param p1, "id"    # I

    .prologue
    .line 1920
    new-instance v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;

    invoke-direct {v1, p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;)V

    .line 1923
    .local v1, "handler":Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;
    :try_start_5
    iget-object v2, p0, this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, getEngineXmlFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_13} :catch_18

    .line 1929
    :goto_13
    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->getEngineInfoLocked()Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->access$1400(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v2

    return-object v2

    .line 1924
    :catch_18
    move-exception v0

    .line 1925
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1926
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t load engine "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private getEngineXmlFile(I)Ljava/io/File;
    .registers 7
    .param p1, "id"    # I

    .prologue
    .line 1911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SdpUser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1912
    .local v1, "xmlPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1913
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_59

    .line 1914
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cant make directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_59
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .registers 6
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 2085
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, getEngineXmlFile(I)Ljava/io/File;

    move-result-object v0

    .line 2087
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 2088
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t remove engine info xml file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    :cond_2a
    return-void
.end method

.method private updateEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    .registers 26
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 2019
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, getEngineXmlFile(I)Ljava/io/File;

    move-result-object v13

    .line 2022
    .local v13, "f":Ljava/io/File;
    :try_start_c
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 2023
    .local v12, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v11

    .line 2025
    .local v11, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v10

    .line 2026
    .local v10, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v21, "user"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 2027
    .local v16, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2029
    const-string v21, "SdpManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateEngine :: inserting \n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    const-string v21, "alias"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    .line 2032
    .local v3, "attrAlias":Lorg/w3c/dom/Attr;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 2033
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 2035
    const-string/jumbo v21, "pkgName"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v7

    .line 2036
    .local v7, "attrPkgName":Lorg/w3c/dom/Attr;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 2037
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 2039
    const-string/jumbo v21, "id"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v5

    .line 2040
    .local v5, "attrId":Lorg/w3c/dom/Attr;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 2041
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 2043
    const-string/jumbo v21, "userid"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    .line 2044
    .local v8, "attrUserId":Lorg/w3c/dom/Attr;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 2045
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 2047
    const-string/jumbo v21, "flags"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    .line 2048
    .local v4, "attrFlags":Lorg/w3c/dom/Attr;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getFlag()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 2049
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 2051
    const-string/jumbo v21, "version"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 2052
    .local v9, "attrVersion":Lorg/w3c/dom/Attr;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 2053
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 2055
    const-string/jumbo v21, "isMigrating"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v6

    .line 2056
    .local v6, "attrIsMigrating":Lorg/w3c/dom/Attr;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMigrating()Z

    move-result v21

    if-eqz v21, :cond_125

    .line 2057
    const-string/jumbo v21, "true"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 2060
    :goto_f3
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 2063
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v20

    .line 2064
    .local v20, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v20 .. v20}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v19

    .line 2065
    .local v19, "transformer":Ljavax/xml/transform/Transformer;
    const-string/jumbo v21, "indent"

    const-string/jumbo v22, "yes"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    new-instance v17, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 2067
    .local v17, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v15, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v15, v13}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 2069
    .local v15, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 2081
    const/16 v21, 0x0

    .end local v3    # "attrAlias":Lorg/w3c/dom/Attr;
    .end local v4    # "attrFlags":Lorg/w3c/dom/Attr;
    .end local v5    # "attrId":Lorg/w3c/dom/Attr;
    .end local v6    # "attrIsMigrating":Lorg/w3c/dom/Attr;
    .end local v7    # "attrPkgName":Lorg/w3c/dom/Attr;
    .end local v8    # "attrUserId":Lorg/w3c/dom/Attr;
    .end local v9    # "attrVersion":Lorg/w3c/dom/Attr;
    .end local v10    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v15    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "rootElement":Lorg/w3c/dom/Element;
    .end local v17    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v19    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v20    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_124
    return v21

    .line 2059
    .restart local v3    # "attrAlias":Lorg/w3c/dom/Attr;
    .restart local v4    # "attrFlags":Lorg/w3c/dom/Attr;
    .restart local v5    # "attrId":Lorg/w3c/dom/Attr;
    .restart local v6    # "attrIsMigrating":Lorg/w3c/dom/Attr;
    .restart local v7    # "attrPkgName":Lorg/w3c/dom/Attr;
    .restart local v8    # "attrUserId":Lorg/w3c/dom/Attr;
    .restart local v9    # "attrVersion":Lorg/w3c/dom/Attr;
    .restart local v10    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v12    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v16    # "rootElement":Lorg/w3c/dom/Element;
    :cond_125
    const-string/jumbo v21, "false"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V
    :try_end_12d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_12d} :catch_12e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_12d} :catch_13c

    goto :goto_f3

    .line 2071
    .end local v3    # "attrAlias":Lorg/w3c/dom/Attr;
    .end local v4    # "attrFlags":Lorg/w3c/dom/Attr;
    .end local v5    # "attrId":Lorg/w3c/dom/Attr;
    .end local v6    # "attrIsMigrating":Lorg/w3c/dom/Attr;
    .end local v7    # "attrPkgName":Lorg/w3c/dom/Attr;
    .end local v8    # "attrUserId":Lorg/w3c/dom/Attr;
    .end local v9    # "attrVersion":Lorg/w3c/dom/Attr;
    .end local v10    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v16    # "rootElement":Lorg/w3c/dom/Element;
    :catch_12e
    move-exception v14

    .line 2072
    .local v14, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v14}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 2073
    const-string v21, "SdpManagerService"

    const-string v22, " putPolicy failed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const/16 v21, -0x63

    goto :goto_124

    .line 2075
    .end local v14    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_13c
    move-exception v18

    .line 2076
    .local v18, "tfe":Ljavax/xml/transform/TransformerException;
    invoke-virtual/range {v18 .. v18}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 2077
    const-string v21, "SdpManagerService"

    const-string v22, " putPolicy failed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    const/16 v21, -0x63

    goto :goto_124
.end method
