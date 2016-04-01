.class public Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
.super Ljava/lang/Object;
.source "UcmAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    }
.end annotation


# static fields
.field private static final AGENT_META_DATA:Ljava/lang/String; = "com.samsung.ucm.agent"

.field private static final AGENT_XML_TAG:Ljava/lang/String; = "cred-agent"

.field private static final MSG_RESTART_TIMEOUT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "UcmAgentWrapper"


# instance fields
.field private RESTART_TIMEOUT_MILLIS:J

.field componentName:Landroid/content/ComponentName;

.field info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

.field private mBound:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

.field private mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p3, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, RESTART_TIMEOUT_MILLIS:J

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, mBound:Z

    .line 46
    new-instance v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;-><init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;-><init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    iput-object v0, p0, mConnection:Landroid/content/ServiceConnection;

    .line 75
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, mService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 77
    iput-object p3, p0, componentName:Landroid/content/ComponentName;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 32
    iget-object v0, p0, mService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 32
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;)Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    .prologue
    .line 32
    iput-object p1, p0, mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 32
    iget-boolean v0, p0, mBound:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 32
    invoke-direct {p0}, scheduleRestart()V

    return-void
.end method

.method public static getAgentInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    .registers 27
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 167
    if-nez p1, :cond_b

    .line 168
    const-string v21, "UcmAgentWrapper"

    const-string v22, "Context is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v3, 0x0

    .line 338
    :cond_a
    :goto_a
    return-object v3

    .line 172
    :cond_b
    if-eqz p0, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    if-nez v21, :cond_2d

    .line 174
    :cond_23
    const-string v21, "UcmAgentWrapper"

    const-string/jumbo v22, "resolveInfo null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v3, 0x0

    goto :goto_a

    .line 177
    :cond_2d
    const/4 v7, 0x0

    .line 178
    .local v7, "cn":Ljava/lang/String;
    new-instance v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    invoke-direct {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;-><init>()V

    .line 179
    .local v3, "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 180
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 181
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v6, 0x0

    .line 183
    .local v6, "caughtException":Ljava/lang/Exception;
    :try_start_39
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    const-string v22, "com.samsung.ucm.agent"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 184
    if-nez v12, :cond_59

    .line 185
    const-string v21, "UcmAgentWrapper"

    const-string v22, "Can\'t find com.samsung.ucm.agent meta-data"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_52} :catch_424
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_52} :catch_43c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_52} :catch_454
    .catchall {:try_start_39 .. :try_end_52} :catchall_46c

    .line 186
    const/4 v3, 0x0

    .line 330
    .end local v3    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v12, :cond_a

    .line 331
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_a

    .line 188
    .restart local v3    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    :cond_59
    :try_start_59
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v19

    .line 192
    .local v19, "res":Landroid/content/res/Resources;
    :cond_6b
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, "type":I
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7f

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6b

    .line 194
    :cond_7f
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, "nodeName":Ljava/lang/String;
    const-string/jumbo v21, "cred-agent"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9d

    .line 196
    const-string v21, "UcmAgentWrapper"

    const-string v22, "Meta-data does not start with tag cred-agent"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_95} :catch_424
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59 .. :try_end_95} :catch_43c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_59 .. :try_end_95} :catch_454
    .catchall {:try_start_59 .. :try_end_95} :catchall_46c

    .line 197
    const/4 v3, 0x0

    .line 330
    .end local v3    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v12, :cond_a

    .line 331
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_a

    .line 200
    .restart local v3    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    :cond_9d
    const/16 v21, 0x0

    :try_start_9f
    const-string/jumbo v22, "id"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    .line 201
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_40d

    .line 203
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    .line 208
    const/16 v21, 0x0

    const-string/jumbo v22, "summary"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    .line 209
    const/16 v21, 0x0

    const-string/jumbo v22, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    .line 210
    const/16 v21, 0x0

    const-string/jumbo v22, "vendorId"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    .line 211
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "isDetachable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isDetachable:Z

    .line 212
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "reqUserVerification"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->reqUserVerification:Z

    .line 213
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "isHardwareBacked"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isHardwareBacked:Z

    .line 214
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "isReadOnly"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    .line 216
    const-string v21, "UcmAgentWrapper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "DETAILED agentInfo information : isDetachable = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    const-string/jumbo v24, "isDetachable"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " requireUserVerification = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    const-string/jumbo v24, "reqUserVerification"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " isHardwareBacked = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    const-string/jumbo v24, "isHardwareBacked"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " isReadOnly = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    const-string/jumbo v24, "isReadOnly"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " packageName = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/16 v21, 0x0

    const-string v22, "configuratorList"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    .line 221
    const/16 v21, 0x0

    const-string/jumbo v22, "isManageable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 222
    .local v10, "isManageable":Ljava/lang/String;
    if-eqz v10, :cond_41c

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_41c

    const-string/jumbo v21, "false"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_41c

    .line 223
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    .line 227
    :goto_228
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "enforceManagement"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_264

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    .line 231
    :cond_264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    .line 233
    const/16 v21, 0x0

    const-string/jumbo v22, "pinMinimum"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 234
    .local v14, "pinMinLength":Ljava/lang/String;
    if-eqz v14, :cond_42c

    .line 235
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 241
    :goto_28b
    const/16 v21, 0x0

    const-string/jumbo v22, "pinMaximum"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 242
    .local v13, "pinMaxLength":Ljava/lang/String;
    if-eqz v13, :cond_444

    .line 243
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 249
    :goto_2a2
    const/16 v21, 0x0

    const-string/jumbo v22, "pukMinimum"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 250
    .local v18, "pukMinLength":Ljava/lang/String;
    if-eqz v18, :cond_45c

    .line 251
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .line 257
    :goto_2b9
    const/16 v21, 0x0

    const-string/jumbo v22, "pukMaximum"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 258
    .local v17, "pukMaxLength":Ljava/lang/String;
    if-eqz v17, :cond_473

    .line 259
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 265
    :goto_2d0
    const/16 v21, 0x0

    const-string/jumbo v22, "pinRetrycount"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, "authMaxCnt":Ljava/lang/String;
    if-eqz v4, :cond_483

    .line 267
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 273
    :goto_2e7
    const/16 v21, 0x0

    const-string v22, "checkMode"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "authMode":Ljava/lang/String;
    if-eqz v5, :cond_492

    .line 275
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 281
    :goto_2fd
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "isGeneratePasswordSupport"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    .line 284
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "isODESupport"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isODESupport:Z

    .line 287
    const/16 v21, 0x0

    const-string/jumbo v22, "settingsActivity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 288
    if-eqz v7, :cond_36b

    const/16 v21, 0x2f

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    if-gez v21, :cond_36b

    .line 289
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 291
    :cond_36b
    if-nez v7, :cond_4a1

    const/16 v21, 0x0

    :goto_36f
    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->settingsComponentName:Landroid/content/ComponentName;

    .line 295
    const/16 v21, 0x0

    const-string/jumbo v22, "storageType"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    .line 298
    const/16 v21, 0x0

    const-string/jumbo v22, "enabledSCP"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    .line 301
    const/16 v21, 0x0

    const-string/jumbo v22, "enabledWrap"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 302
    .local v9, "enabledWrap":Ljava/lang/String;
    if-eqz v9, :cond_4a7

    .line 303
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    .line 310
    :goto_3ac
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->toString()Ljava/lang/String;

    move-result-object v16

    .line 311
    .local v16, "print":Ljava/lang/String;
    const-string v21, "UcmAgentWrapper"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/16 v21, 0x0

    const-string v22, "AID"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "AID":Ljava/lang/String;
    if-eqz v2, :cond_4b7

    const/16 v21, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4b7

    .line 316
    invoke-static {v2}, hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B
    :try_end_3db
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_3db} :catch_424
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9f .. :try_end_3db} :catch_43c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9f .. :try_end_3db} :catch_454
    .catchall {:try_start_9f .. :try_end_3db} :catchall_46c

    .line 330
    :goto_3db
    if-eqz v12, :cond_3e0

    .line 331
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 333
    .end local v2    # "AID":Ljava/lang/String;
    .end local v4    # "authMaxCnt":Ljava/lang/String;
    .end local v5    # "authMode":Ljava/lang/String;
    .end local v9    # "enabledWrap":Ljava/lang/String;
    .end local v10    # "isManageable":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v13    # "pinMaxLength":Ljava/lang/String;
    .end local v14    # "pinMinLength":Ljava/lang/String;
    .end local v16    # "print":Ljava/lang/String;
    .end local v17    # "pukMaxLength":Ljava/lang/String;
    .end local v18    # "pukMinLength":Ljava/lang/String;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "type":I
    :cond_3e0
    :goto_3e0
    if-eqz v6, :cond_4c6

    .line 334
    const-string v21, "UcmAgentWrapper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error parsing : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 205
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "type":I
    :cond_40d
    :try_start_40d
    const-string v21, "UcmAgentWrapper"

    const-string v22, "Agent Id can\'t be null.."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_414
    .catch Ljava/io/IOException; {:try_start_40d .. :try_end_414} :catch_424
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40d .. :try_end_414} :catch_43c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40d .. :try_end_414} :catch_454
    .catchall {:try_start_40d .. :try_end_414} :catchall_46c

    .line 206
    const/4 v3, 0x0

    .line 330
    .end local v3    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v12, :cond_a

    .line 331
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_a

    .line 225
    .restart local v3    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    .restart local v10    # "isManageable":Ljava/lang/String;
    :cond_41c
    const/16 v21, 0x1

    :try_start_41e
    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z
    :try_end_422
    .catch Ljava/io/IOException; {:try_start_41e .. :try_end_422} :catch_424
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41e .. :try_end_422} :catch_43c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41e .. :try_end_422} :catch_454
    .catchall {:try_start_41e .. :try_end_422} :catchall_46c

    goto/16 :goto_228

    .line 323
    .end local v10    # "isManageable":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "type":I
    :catch_424
    move-exception v8

    .line 324
    .local v8, "e":Ljava/io/IOException;
    move-object v6, v8

    .line 330
    if-eqz v12, :cond_3e0

    .line 331
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3e0

    .line 237
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v10    # "isManageable":Ljava/lang/String;
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v14    # "pinMinLength":Ljava/lang/String;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "type":I
    :cond_42c
    :try_start_42c
    const-string v21, "UcmAgentWrapper"

    const-string/jumbo v22, "pinMinLength in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/16 v21, 0x4

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I
    :try_end_43a
    .catch Ljava/io/IOException; {:try_start_42c .. :try_end_43a} :catch_424
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42c .. :try_end_43a} :catch_43c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_42c .. :try_end_43a} :catch_454
    .catchall {:try_start_42c .. :try_end_43a} :catchall_46c

    goto/16 :goto_28b

    .line 325
    .end local v10    # "isManageable":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v14    # "pinMinLength":Ljava/lang/String;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "type":I
    :catch_43c
    move-exception v8

    .line 326
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v6, v8

    .line 330
    if-eqz v12, :cond_3e0

    .line 331
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3e0

    .line 245
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10    # "isManageable":Ljava/lang/String;
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v13    # "pinMaxLength":Ljava/lang/String;
    .restart local v14    # "pinMinLength":Ljava/lang/String;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "type":I
    :cond_444
    :try_start_444
    const-string v21, "UcmAgentWrapper"

    const-string/jumbo v22, "pinMaxLength in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v21, 0x6

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I
    :try_end_452
    .catch Ljava/io/IOException; {:try_start_444 .. :try_end_452} :catch_424
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_444 .. :try_end_452} :catch_43c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_444 .. :try_end_452} :catch_454
    .catchall {:try_start_444 .. :try_end_452} :catchall_46c

    goto/16 :goto_2a2

    .line 327
    .end local v10    # "isManageable":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v13    # "pinMaxLength":Ljava/lang/String;
    .end local v14    # "pinMinLength":Ljava/lang/String;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "type":I
    :catch_454
    move-exception v8

    .line 328
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v6, v8

    .line 330
    if-eqz v12, :cond_3e0

    .line 331
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3e0

    .line 253
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10    # "isManageable":Ljava/lang/String;
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v13    # "pinMaxLength":Ljava/lang/String;
    .restart local v14    # "pinMinLength":Ljava/lang/String;
    .restart local v18    # "pukMinLength":Ljava/lang/String;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "type":I
    :cond_45c
    :try_start_45c
    const-string v21, "UcmAgentWrapper"

    const-string/jumbo v22, "pukMinLength in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v21, 0x8

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I
    :try_end_46a
    .catch Ljava/io/IOException; {:try_start_45c .. :try_end_46a} :catch_424
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45c .. :try_end_46a} :catch_43c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45c .. :try_end_46a} :catch_454
    .catchall {:try_start_45c .. :try_end_46a} :catchall_46c

    goto/16 :goto_2b9

    .line 330
    .end local v10    # "isManageable":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v13    # "pinMaxLength":Ljava/lang/String;
    .end local v14    # "pinMinLength":Ljava/lang/String;
    .end local v18    # "pukMinLength":Ljava/lang/String;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "type":I
    :catchall_46c
    move-exception v21

    if-eqz v12, :cond_472

    .line 331
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_472
    throw v21

    .line 261
    .restart local v10    # "isManageable":Ljava/lang/String;
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v13    # "pinMaxLength":Ljava/lang/String;
    .restart local v14    # "pinMinLength":Ljava/lang/String;
    .restart local v17    # "pukMaxLength":Ljava/lang/String;
    .restart local v18    # "pukMinLength":Ljava/lang/String;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "type":I
    :cond_473
    :try_start_473
    const-string v21, "UcmAgentWrapper"

    const-string/jumbo v22, "pukMaxLength in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/16 v21, 0x14

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    goto/16 :goto_2d0

    .line 269
    .restart local v4    # "authMaxCnt":Ljava/lang/String;
    :cond_483
    const-string v21, "UcmAgentWrapper"

    const-string v22, "authMaxCnt in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/16 v21, 0x5

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    goto/16 :goto_2e7

    .line 277
    .restart local v5    # "authMode":Ljava/lang/String;
    :cond_492
    const-string v21, "UcmAgentWrapper"

    const-string v22, "authMode in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    goto/16 :goto_2fd

    .line 291
    :cond_4a1
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    goto/16 :goto_36f

    .line 305
    .restart local v9    # "enabledWrap":Ljava/lang/String;
    :cond_4a7
    const-string v21, "UcmAgentWrapper"

    const-string/jumbo v22, "enabledWrap in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    goto/16 :goto_3ac

    .line 318
    .restart local v2    # "AID":Ljava/lang/String;
    .restart local v16    # "print":Ljava/lang/String;
    :cond_4b7
    const-string v21, "UcmAgentWrapper"

    const-string v22, "AID in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B
    :try_end_4c4
    .catch Ljava/io/IOException; {:try_start_473 .. :try_end_4c4} :catch_424
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_473 .. :try_end_4c4} :catch_43c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_473 .. :try_end_4c4} :catch_454
    .catchall {:try_start_473 .. :try_end_4c4} :catchall_46c

    goto/16 :goto_3db

    .line 337
    .end local v2    # "AID":Ljava/lang/String;
    .end local v4    # "authMaxCnt":Ljava/lang/String;
    .end local v5    # "authMode":Ljava/lang/String;
    .end local v9    # "enabledWrap":Ljava/lang/String;
    .end local v10    # "isManageable":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v13    # "pinMaxLength":Ljava/lang/String;
    .end local v14    # "pinMinLength":Ljava/lang/String;
    .end local v16    # "print":Ljava/lang/String;
    .end local v17    # "pukMaxLength":Ljava/lang/String;
    .end local v18    # "pukMinLength":Ljava/lang/String;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "type":I
    :cond_4c6
    const-string v21, "UcmAgentWrapper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "agentInfo: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a
.end method

.method static getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 126
    if-eqz p0, :cond_6

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_8

    .line 127
    :cond_6
    const/4 v0, 0x0

    .line 128
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 343
    const-string v3, "UcmAgentWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hexStringToByteArray : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz p0, :cond_24

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    .line 345
    :cond_24
    const-string v3, "UcmAgentWrapper"

    const-string v4, "Input value is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x0

    .line 354
    :cond_2c
    return-object v0

    .line 348
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 349
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 350
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    if-ge v1, v2, :cond_2c

    .line 351
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 350
    add-int/lit8 v1, v1, 0x2

    goto :goto_36
.end method

.method private scheduleRestart()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 153
    const-string v0, "UcmAgentWrapper"

    const-string/jumbo v1, "scheduleRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-wide v2, p0, RESTART_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 156
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 62
    instance-of v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v1, :cond_6

    .line 63
    const/4 v1, 0x0

    .line 66
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 66
    .local v0, "o":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v1, p0, componentName:Landroid/content/ComponentName;

    iget-object v2, v0, componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method public getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V
    .registers 11
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    const-wide/32 v6, 0x1d4c0

    .line 85
    invoke-static {p1}, getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 86
    .local v1, "name":Landroid/content/ComponentName;
    const-string v2, "UcmAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initialize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {p1, v2}, getAgentInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-result-object v2

    iput-object v2, p0, info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    iget-object v2, p0, info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v2, :cond_60

    iget-object v2, p0, info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_60

    .line 92
    iget-object v2, p0, info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 93
    iput-wide v6, p0, RESTART_TIMEOUT_MILLIS:J

    .line 96
    :cond_52
    iget-object v2, p0, info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string v3, "com.samsung.ucs.agent.boot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 97
    iput-wide v6, p0, RESTART_TIMEOUT_MILLIS:J

    .line 101
    :cond_60
    invoke-direct {p0}, scheduleRestart()V

    .line 102
    iget-object v2, p0, mContext:Landroid/content/Context;

    if-eqz v2, :cond_72

    .line 103
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, mBound:Z

    .line 105
    :cond_72
    iget-boolean v2, p0, mBound:Z

    if-nez v2, :cond_8f

    .line 106
    const-string v2, "UcmAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not able to bind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_8f
    return-void
.end method

.method public unbind()V
    .registers 3

    .prologue
    .line 114
    iget-boolean v0, p0, mBound:Z

    if-nez v0, :cond_d

    .line 115
    const-string v0, "UcmAgentWrapper"

    const-string/jumbo v1, "it is not bound anymore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_c
    return-void

    .line 118
    :cond_d
    const-string v0, "UcmAgentWrapper"

    const-string/jumbo v1, "unbind "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, mBound:Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    goto :goto_c
.end method
