.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
.super Ljava/lang/Object;
.source "XMLHandler.java"


# static fields
.field public static sInstance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, sInstance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
    .registers 2

    .prologue
    .line 30
    const-class v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    monitor-enter v1

    :try_start_3
    const-string v0, "OtpDbHelper::getInstance Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 31
    sget-object v0, sInstance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    if-nez v0, :cond_13

    .line 32
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    .line 34
    :cond_13
    sget-object v0, sInstance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createKeyProvClientHelloXML(Landroid/content/Context;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mKeyProvClientHello"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 164
    monitor-enter p0

    const/4 v1, 0x0

    .line 165
    .local v1, "xmlBuffer":Ljava/lang/String;
    :try_start_2
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;-><init>()V

    .line 166
    .local v0, "mXmlCreator":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createKeyProvClientHelloXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_d

    move-result-object v1

    .line 167
    monitor-exit p0

    return-object v1

    .line 164
    .end local v0    # "mXmlCreator":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
    :catchall_d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createKeyProvServerFinishedXML(Landroid/content/Context;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mKeyProvServerFinished"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 171
    monitor-enter p0

    const/4 v1, 0x0

    .line 172
    .local v1, "xmlBuffer":Ljava/lang/String;
    :try_start_2
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;-><init>()V

    .line 173
    .local v0, "mXmlCreator":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createKeyProvServerFinishedXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_d

    move-result-object v1

    .line 174
    monitor-exit p0

    return-object v1

    .line 171
    .end local v0    # "mXmlCreator":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
    :catchall_d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createKeyProvTriggerXML(Landroid/content/Context;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mKeyProvTrigger"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 157
    monitor-enter p0

    const/4 v1, 0x0

    .line 158
    .local v1, "xmlBuffer":Ljava/lang/String;
    :try_start_2
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;-><init>()V

    .line 159
    .local v0, "mXmlCreator":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createKeyProvTriggerXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_d

    move-result-object v1

    .line 160
    monitor-exit p0

    return-object v1

    .line 157
    .end local v0    # "mXmlCreator":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
    :catchall_d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppBuffer"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 75
    monitor-enter p0

    :try_start_2
    const-string v3, "XMLHandler::parseDskppXMLBuffer: ENTER"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;-><init>()V

    invoke-virtual {v3, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->isDskppValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 78
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->setKeyPin(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 83
    .local v0, "inStream":Ljava/io/InputStream;
    new-instance v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    invoke-direct {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;-><init>()V

    .line 84
    .restart local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v0, :cond_34

    .line 85
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parse(Ljava/io/InputStream;)V
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_3d

    :cond_34
    move-object v2, v1

    .line 91
    .end local v0    # "inStream":Ljava/io/InputStream;
    :goto_35
    monitor-exit p0

    return-object v2

    .line 88
    :cond_37
    :try_start_37
    const-string v3, "XMLHandler::parseDskppXMLBuffer: XML is not valid"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3d

    goto :goto_35

    .line 75
    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    :catchall_3d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseDskppXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppXMLFilePath"    # Ljava/lang/String;

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    const-string v4, "XMLHandler::parseDskppXMLFile: ENTER"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_36

    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    const/4 v0, 0x0

    .line 98
    .local v0, "dskppBuffer":Ljava/lang/String;
    :try_start_8
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0, p1, v0}, parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v3

    .line 101
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_1a
    .catchall {:try_start_8 .. :try_end_18} :catchall_36

    .line 105
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_18
    monitor-exit p0

    return-object v3

    .line 102
    :catch_1a
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    :try_start_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XMLHandler::parseDskppXMLFile: IO Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_36

    goto :goto_18

    .line 94
    .end local v0    # "dskppBuffer":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    :catchall_36
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized parseKeyProvClientHelloXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppBuffer"    # Ljava/lang/String;

    .prologue
    .line 109
    monitor-enter p0

    const/4 v0, 0x0

    .line 110
    .local v0, "mKeyProvClientHello":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :try_start_2
    invoke-virtual {p0, p1, p2}, parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    .line 111
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v1, :cond_c

    .line 112
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvClientHello()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    move-result-object v0

    .line 113
    :cond_c
    monitor-exit p0

    return-object v0

    .line 109
    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    :catchall_e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvClientHelloXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppXMLFilePath"    # Ljava/lang/String;

    .prologue
    .line 117
    monitor-enter p0

    const/4 v0, 0x0

    .line 118
    .local v0, "mKeyProvClientHello":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :try_start_2
    invoke-virtual {p0, p1, p2}, parseDskppXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    .line 119
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v1, :cond_c

    .line 120
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvClientHello()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    move-result-object v0

    .line 121
    :cond_c
    monitor-exit p0

    return-object v0

    .line 117
    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    :catchall_e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvServerFinishedXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppBuffer"    # Ljava/lang/String;

    .prologue
    .line 141
    monitor-enter p0

    const/4 v0, 0x0

    .line 142
    .local v0, "mKeyServerFinished":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :try_start_2
    invoke-virtual {p0, p1, p2}, parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    .line 143
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v1, :cond_c

    .line 144
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvServerFinished()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    move-result-object v0

    .line 145
    :cond_c
    monitor-exit p0

    return-object v0

    .line 141
    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    :catchall_e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvServerFinishedXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppXMLFilePath"    # Ljava/lang/String;

    .prologue
    .line 149
    monitor-enter p0

    const/4 v0, 0x0

    .line 150
    .local v0, "mKeyServerFinished":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :try_start_2
    invoke-virtual {p0, p1, p2}, parseDskppXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    .line 151
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v1, :cond_c

    .line 152
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvServerFinished()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    move-result-object v0

    .line 153
    :cond_c
    monitor-exit p0

    return-object v0

    .line 149
    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    :catchall_e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvTriggerXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppBuffer"    # Ljava/lang/String;

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x0

    .line 126
    .local v0, "mKeyProvTrigger":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :try_start_2
    invoke-virtual {p0, p1, p2}, parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    .line 127
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v1, :cond_c

    .line 128
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvTrigger()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    move-result-object v0

    .line 129
    :cond_c
    monitor-exit p0

    return-object v0

    .line 125
    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    :catchall_e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvTriggerXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppXMLFilePath"    # Ljava/lang/String;

    .prologue
    .line 133
    monitor-enter p0

    const/4 v0, 0x0

    .line 134
    .local v0, "mKeyProvTrigger":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :try_start_2
    invoke-virtual {p0, p1, p2}, parseDskppXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    .line 135
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v1, :cond_c

    .line 136
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvTrigger()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    move-result-object v0

    .line 137
    :cond_c
    monitor-exit p0

    return-object v0

    .line 133
    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    :catchall_e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parsePskc(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pskcBuffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 38
    monitor-enter p0

    :try_start_2
    const-string v6, "XMLHandler::parsePskc: ENTER"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 39
    const/4 v4, 0x0

    .line 40
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;>;"
    const/4 v2, 0x0

    .line 42
    .local v2, "keyContainer":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    new-instance v6, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;-><init>()V

    invoke-virtual {v6, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->isPskcValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 43
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->setKeyPin(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_80

    .line 47
    :try_start_1c
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 49
    .local v1, "inStream":Ljava/io/InputStream;
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;-><init>()V

    .line 50
    .local v3, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;
    if-eqz v1, :cond_35

    .line 51
    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;->parse(Ljava/io/InputStream;)V

    .line 52
    :cond_35
    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_38} :catch_64
    .catchall {:try_start_1c .. :try_end_38} :catchall_80

    move-result-object v2

    .line 63
    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v3    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;
    :goto_39
    if-eqz v2, :cond_3f

    .line 64
    :try_start_3b
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v4

    .line 66
    :cond_3f
    if-eqz v4, :cond_89

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XMLHandler::parsePskc: EXIT [KeyPackage count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_3b .. :try_end_61} :catchall_80

    :goto_61
    move-object v5, v4

    .line 71
    :goto_62
    monitor-exit p0

    return-object v5

    .line 54
    :catch_64
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    :try_start_65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XMLHandler::parsePskc: Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_65 .. :try_end_7f} :catchall_80

    goto :goto_39

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "keyContainer":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;>;"
    :catchall_80
    move-exception v5

    monitor-exit p0

    throw v5

    .line 59
    .restart local v2    # "keyContainer":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;>;"
    :cond_83
    :try_start_83
    const-string v6, "XMLHandler::parsePskc: XML is not valid"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_62

    .line 69
    :cond_89
    const-string v5, "XMLHandler::parsePskc: EXIT [KeyPackage List is null]"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_80

    goto :goto_61
.end method
