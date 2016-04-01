.class Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpEngineDatabase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;,
        Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

.field private mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1697
    iput-object p1, p0, this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1694
    iput-object v1, p0, mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    .line 1695
    iput-object v1, p0, mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    .line 1698
    new-instance v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$1;)V

    iput-object v0, p0, mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    .line 1699
    new-instance v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$1;)V

    iput-object v0, p0, mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    .line 1700
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/SdpManagerService;
    .param p2, "x1"    # Lcom/android/server/SdpManagerService$1;

    .prologue
    .line 1691
    invoke-direct {p0, p1}, <init>(Lcom/android/server/SdpManagerService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1691
    invoke-direct {p0, p1}, storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Lorg/xml/sax/helpers/DefaultHandler;

    .prologue
    .line 1691
    invoke-direct {p0, p1, p2}, parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p1, "x1"    # I

    .prologue
    .line 1691
    invoke-direct {p0, p1}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1691
    invoke-direct {p0, p1}, removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .prologue
    .line 1691
    invoke-direct {p0}, getEngineListLocked()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .prologue
    .line 1691
    invoke-direct {p0}, updateEngineListLocked()I

    move-result v0

    return v0
.end method

.method private getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 1728
    iget-object v0, p0, mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->access$1000(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEngineListLocked()Landroid/util/SparseArray;
    .registers 5
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
    const/4 v1, 0x0

    .line 1716
    iget-object v2, p0, mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListLocked()Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->access$900(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)Landroid/util/SparseArray;

    move-result-object v0

    .line 1717
    .local v0, "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-nez v0, :cond_b

    move-object v0, v1

    .line 1724
    .end local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_a
    :goto_a
    return-object v0

    .line 1720
    .restart local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_b
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 1721
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "getEngineListLocked :: no engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1722
    goto :goto_a
.end method

.method private parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    .registers 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;

    .prologue
    const/4 v4, 0x0

    .line 2094
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 2095
    .local v3, "saxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 2096
    .local v1, "newSAXParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 2098
    .local v2, "parser":Lorg/xml/sax/XMLReader;
    invoke-interface {v2, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 2099
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_18
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_18} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_18} :catch_1f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_18} :catch_24

    .line 2110
    .end local v1    # "newSAXParser":Ljavax/xml/parsers/SAXParser;
    .end local v2    # "parser":Lorg/xml/sax/XMLReader;
    .end local v3    # "saxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    :goto_18
    const/4 v4, 0x1

    :goto_19
    return v4

    .line 2100
    :catch_1a
    move-exception v0

    .line 2101
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_19

    .line 2103
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_1f
    move-exception v0

    .line 2104
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 2106
    .end local v0    # "e":Ljava/io/IOException;
    :catch_24
    move-exception v0

    .line 2107
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_18
.end method

.method private removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .registers 3
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1712
    iget-object v0, p0, mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->access$800(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 1713
    return-void
.end method

.method private storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    .registers 3
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1708
    iget-object v0, p0, mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->updateEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->access$700(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v0

    return v0
.end method

.method private updateEngineListLocked()I
    .registers 2

    .prologue
    .line 1704
    iget-object v0, p0, mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->updateEngineListLocked()I
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->access$600(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)I

    move-result v0

    return v0
.end method
