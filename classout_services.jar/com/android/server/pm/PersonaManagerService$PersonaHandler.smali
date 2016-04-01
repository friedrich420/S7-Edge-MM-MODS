.class Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"

.field public static final WAKE_LOCK_FLAG:Ljava/lang/String; = "flag"

.field public static final WAKE_LOCK_PACKAGE:Ljava/lang/String; = "package"

.field public static final WAKE_LOCK_PID:Ljava/lang/String; = "pid"

.field public static final WAKE_LOCK_TYPE:Ljava/lang/String; = "type"

.field public static final WAKE_LOCK_UID:Ljava/lang/String; = "uid"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4618
    iput-object p1, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 4619
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4620
    const-string v0, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Ljava/lang/String;)I

    .line 4622
    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/pm/PersonaManagerService$PersonaHandler;I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    .param p1, "x1"    # I

    .prologue
    .line 4609
    invoke-direct {p0, p1}, filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    return-object v0
.end method

.method private filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 5887
    iget-object v5, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_13

    .line 5888
    :cond_10
    invoke-direct {p0}, parseEnterprisedataXml()V

    .line 5891
    :cond_13
    iget-object v5, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 5892
    .local v3, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v4

    .line 5893
    .local v4, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5894
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_31

    .line 5899
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v4    # "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_43
    return-object v3

    :cond_44
    const/4 v3, 0x0

    goto :goto_43
.end method

.method private parseEnterprisedataXml()V
    .registers 10

    .prologue
    .line 5855
    iget-object v6, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 5856
    const/4 v3, 0x0

    .line 5858
    .local v3, "in":Ljava/io/InputStream;
    :try_start_9
    const-string v6, "PersonaManagerService"

    const-string/jumbo v7, "reading from xml resource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5859
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$4300()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "enterprisedata.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5861
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 5862
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_39} :catch_67
    .catchall {:try_start_9 .. :try_end_39} :catchall_8b

    .line 5863
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_39
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 5864
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5865
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5866
    .local v1, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 5867
    iget-object v6, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v7

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$4402(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    .line 5868
    iget-object v6, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$4202(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_58} :catch_99
    .catchall {:try_start_39 .. :try_end_58} :catchall_96

    move-object v3, v4

    .line 5876
    .end local v1    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_59
    if-eqz v3, :cond_5e

    .line 5878
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_92

    .line 5884
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_5e
    :goto_5e
    return-void

    .line 5870
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_5f
    :try_start_5f
    const-string v6, "PersonaManagerService"

    const-string v7, "Failed to find enterprisedata.xml in system container"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_66} :catch_67
    .catchall {:try_start_5f .. :try_end_66} :catchall_8b

    goto :goto_59

    .line 5872
    .end local v2    # "file":Ljava/io/File;
    :catch_67
    move-exception v0

    .line 5873
    .local v0, "e":Ljava/lang/Exception;
    :goto_68
    :try_start_68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5874
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_68 .. :try_end_83} :catchall_8b

    .line 5876
    if-eqz v3, :cond_5e

    .line 5878
    :try_start_85
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_5e

    .line 5879
    :catch_89
    move-exception v6

    goto :goto_5e

    .line 5876
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_8b
    move-exception v6

    :goto_8c
    if-eqz v3, :cond_91

    .line 5878
    :try_start_8e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_94

    .line 5880
    :cond_91
    :goto_91
    throw v6

    .line 5879
    .restart local v2    # "file":Ljava/io/File;
    :catch_92
    move-exception v6

    goto :goto_5e

    .end local v2    # "file":Ljava/io/File;
    :catch_94
    move-exception v7

    goto :goto_91

    .line 5876
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_96
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_8c

    .line 5872
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_99
    move-exception v0

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_68
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 121
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4625
    const-string v4, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Ljava/lang/String;)I

    .line 4626
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_1e7e

    .line 5833
    :cond_c
    :goto_c
    :pswitch_c
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    and-int/lit16 v4, v4, 0x1388

    const/16 v5, 0x1388

    if-ne v4, v5, :cond_73

    .line 5835
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    add-int/lit16 v10, v4, -0x1388

    .line 5840
    .local v10, "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->propagateOnSessionExpired(I)V

    .line 5842
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v84

    .line 5843
    .local v84, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v84, :cond_73

    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_73

    .line 5844
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 5845
    .local v28, "currentUser":Ljava/lang/Integer;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v5, :cond_73

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 5846
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "locking persona due to session expiry."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5847
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 5848
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v5, 0x2648

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;II)V

    .line 5852
    .end local v10    # "personaId":I
    .end local v28    # "currentUser":Ljava/lang/Integer;
    .end local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_73
    :goto_73
    return-void

    .line 4629
    :pswitch_74
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v40, v0

    .line 4630
    .local v40, "event":I
    if-eqz v40, :cond_c

    .line 4631
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v83

    .line 4632
    .local v83, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .local v48, "i$":Ljava/util/Iterator;
    :cond_89
    :goto_89
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/pm/PersonaInfo;

    .line 4633
    .local v72, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v72, :cond_89

    .line 4634
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v72

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/Long;

    .line 4635
    .local v47, "i":Ljava/lang/Long;
    if-eqz v47, :cond_89

    .line 4636
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CANCEL_TIMER_IN_USER_ACTIVITY called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v72

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto :goto_89

    .line 4645
    .end local v40    # "event":I
    .end local v47    # "i":Ljava/lang/Long;
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_d8
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CALL_KNOX_HELP_POPUP called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4646
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 4647
    .restart local v10    # "personaId":I
    new-instance v55, Landroid/content/Intent;

    invoke-direct/range {v55 .. v55}, Landroid/content/Intent;-><init>()V

    .line 4648
    .local v55, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.knox.containeragent2"

    const-string v6, "com.sec.knox.containeragent2.ui.help.KnoxHelpLauncher"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4650
    const/high16 v4, 0x10000000

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4652
    :try_start_112
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_124} :catch_126

    goto/16 :goto_c

    .line 4653
    :catch_126
    move-exception v31

    .line 4654
    .local v31, "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersonaHandler > MSG_CALL_KNOX_HELP_POPUP Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4659
    .end local v10    # "personaId":I
    .end local v31    # "e":Ljava/lang/Exception;
    .end local v55    # "intent":Landroid/content/Intent;
    :pswitch_145
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_SCHEDULE_TIMER_IN_HANDLER called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 4661
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_c

    .line 4665
    .end local v10    # "personaId":I
    :pswitch_16f
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_STOP_TIMER called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4666
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 4667
    .restart local v10    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v45, v0

    .line 4668
    .local v45, "force":I
    const/4 v4, 0x1

    move/from16 v0, v45

    if-eq v0, v4, :cond_1b2

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4669
    :cond_1b2
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 4674
    .end local v10    # "personaId":I
    .end local v45    # "force":I
    :pswitch_1bb
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_LOCK_TIME_EXPIRED called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 4676
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 4677
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4678
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 4683
    .end local v10    # "personaId":I
    :pswitch_1f6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Bundle;

    .line 4684
    .local v21, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "type"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v112

    .line 4685
    .local v112, "type":Z
    const-string/jumbo v4, "flag"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v44

    .line 4686
    .local v44, "flag":I
    const-string/jumbo v4, "uid"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v113

    .line 4687
    .local v113, "uid":I
    const-string/jumbo v4, "pid"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v85

    .line 4688
    .local v85, "pid":I
    invoke-static/range {v113 .. v113}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v115

    .line 4689
    .local v115, "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v112

    move/from16 v1, v44

    move/from16 v2, v113

    move/from16 v3, v115

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->handleWakeLockChange(ZIII)V

    goto/16 :goto_c

    .line 4693
    .end local v21    # "b":Landroid/os/Bundle;
    .end local v44    # "flag":I
    .end local v85    # "pid":I
    .end local v112    # "type":Z
    .end local v113    # "uid":I
    .end local v115    # "userId":I
    :pswitch_23b
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_ACTION_SCREEN_OFF called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4695
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 4696
    :try_start_24b
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mScreenOff:Z
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$2002(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 4697
    new-instance v55, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.kss.screenOff"

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4698
    .restart local v55    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v6, "com.samsung.knox.kss"

    const-string v7, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4699
    const-string/jumbo v4, "screenOff"

    const/4 v6, 0x1

    move-object/from16 v0, v55

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4702
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v83

    .line 4703
    .restart local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .restart local v48    # "i$":Ljava/util/Iterator;
    :cond_280
    :goto_280
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3ad

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/pm/PersonaInfo;

    .line 4704
    .restart local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v72, :cond_280

    .line 4705
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v72

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4706
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguard:Lcom/android/server/pm/KnoxKeyguardDelegate;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getVisibleKeyguardOwner()I

    move-result v115

    .line 4707
    .restart local v115    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move/from16 v0, v115

    if-ne v0, v4, :cond_2e6

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-ne v4, v6, :cond_2e6

    .line 4708
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v6, Landroid/os/UserHandle;

    move-object/from16 v0, v72

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4710
    :cond_2e6
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v104

    .line 4711
    .local v104, "sessionLength":J
    const-wide/16 v6, 0x0

    cmp-long v4, v104, v6

    if-nez v4, :cond_326

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_326

    .line 4712
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_319

    .line 4713
    const-string v4, "PersonaManagerServiceHandler"

    const-string v6, "Screen Off Reason Check, OFF_BECAUSE_OF_PROX_SENSOR!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_280

    .line 4735
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v55    # "intent":Landroid/content/Intent;
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v104    # "sessionLength":J
    .end local v115    # "userId":I
    :catchall_316
    move-exception v4

    monitor-exit v5
    :try_end_318
    .catchall {:try_start_24b .. :try_end_318} :catchall_316

    throw v4

    .line 4715
    .restart local v48    # "i$":Ljava/util/Iterator;
    .restart local v55    # "intent":Landroid/content/Intent;
    .restart local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v104    # "sessionLength":J
    .restart local v115    # "userId":I
    :cond_319
    :try_start_319
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_280

    .line 4717
    :cond_326
    move-object/from16 v0, v72

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v4, :cond_35a

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_35a

    .line 4719
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "knox.power_button_instantly_locks"

    const/4 v7, 0x0

    move-object/from16 v0, v72

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v63

    .line 4722
    .local v63, "lockinstantly":I
    if-lez v63, :cond_280

    .line 4723
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_280

    .line 4724
    .end local v63    # "lockinstantly":I
    :cond_35a
    move-object/from16 v0, v72

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_280

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v72

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_280

    const-wide/16 v6, 0x0

    cmp-long v4, v104, v6

    if-lez v4, :cond_280

    .line 4726
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 4727
    .restart local v28    # "currentUser":Ljava/lang/Integer;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v6, :cond_280

    .line 4728
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v6, 0x16

    invoke-virtual {v4, v6}, obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    .line 4729
    .local v64, "message":Landroid/os/Message;
    move-object/from16 v0, v72

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v64

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 4730
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-virtual {v4, v0}, sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_280

    .line 4735
    .end local v28    # "currentUser":Ljava/lang/Integer;
    .end local v64    # "message":Landroid/os/Message;
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v104    # "sessionLength":J
    .end local v115    # "userId":I
    :cond_3ad
    monitor-exit v5
    :try_end_3ae
    .catchall {:try_start_319 .. :try_end_3ae} :catchall_316

    goto/16 :goto_c

    .line 4739
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v55    # "intent":Landroid/content/Intent;
    .end local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_3b0
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_ACTION_SCREEN_ON called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4740
    new-instance v55, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.kss.screenOn"

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4741
    .restart local v55    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.knox.kss"

    const-string v6, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4742
    const-string/jumbo v4, "screenOn"

    const/4 v5, 0x1

    move-object/from16 v0, v55

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4743
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mScreenOff:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$2002(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 4744
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 4745
    :try_start_3e8
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v83

    .line 4746
    .restart local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .restart local v48    # "i$":Ljava/util/Iterator;
    :cond_3f5
    :goto_3f5
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_551

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/pm/PersonaInfo;

    .line 4747
    .restart local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v72, :cond_3f5

    .line 4748
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v72

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4749
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguard:Lcom/android/server/pm/KnoxKeyguardDelegate;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getVisibleKeyguardOwner()I

    move-result v115

    .line 4750
    .restart local v115    # "userId":I
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v115

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4751
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move/from16 v0, v115

    if-ne v0, v4, :cond_4b4

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-ne v4, v6, :cond_4b4

    .line 4752
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v6, Landroid/os/UserHandle;

    move-object/from16 v0, v72

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4754
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v115

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->isUserHasTrust(I)Z

    move-result v4

    if-eqz v4, :cond_4b4

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    move/from16 v0, v115

    invoke-virtual {v4, v6, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_4b4

    .line 4755
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "when screen on, dismiss keyguard for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v115

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4756
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v115

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->dismissPersonaKeyGuard(I)V

    .line 4760
    :cond_4b4
    move-object/from16 v0, v72

    iget v10, v0, Landroid/content/pm/PersonaInfo;->id:I

    .line 4761
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v104

    .line 4762
    .restart local v104    # "sessionLength":J
    move-object/from16 v0, v72

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_4df

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v72

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_4df

    .line 4763
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v6, 0x2648

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v10, v6}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;II)V

    .line 4766
    :cond_4df
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->isSessionExpired(I)Z

    move-result v4

    if-nez v4, :cond_3f5

    const-wide/16 v6, 0x0

    cmp-long v4, v104, v6

    if-lez v4, :cond_3f5

    .line 4767
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v70

    .line 4768
    .local v70, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v58

    .line 4769
    .local v58, "lastTime":J
    sub-long v32, v70, v58

    .line 4771
    .local v32, "duration":J
    sub-long v110, v104, v32

    .line 4772
    .local v110, "timeRemaining":J
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "timeRemaining: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v110

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4774
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    or-int/lit16 v6, v10, 0x1388

    invoke-virtual {v4, v6}, obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    .line 4775
    .restart local v64    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    or-int/lit16 v6, v10, 0x1388

    invoke-virtual {v4, v6}, removeMessages(I)V

    .line 4776
    const-wide/16 v6, 0x1

    cmp-long v4, v110, v6

    if-gez v4, :cond_53d

    const-wide/16 v110, 0x0

    .line 4777
    :cond_53d
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v64

    move-wide/from16 v1, v110

    invoke-virtual {v4, v0, v1, v2}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3f5

    .line 4782
    .end local v10    # "personaId":I
    .end local v32    # "duration":J
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v58    # "lastTime":J
    .end local v64    # "message":Landroid/os/Message;
    .end local v70    # "now":J
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v104    # "sessionLength":J
    .end local v110    # "timeRemaining":J
    .end local v115    # "userId":I
    :catchall_54e
    move-exception v4

    monitor-exit v5
    :try_end_550
    .catchall {:try_start_3e8 .. :try_end_550} :catchall_54e

    throw v4

    .restart local v48    # "i$":Ljava/util/Iterator;
    .restart local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_551
    :try_start_551
    monitor-exit v5
    :try_end_552
    .catchall {:try_start_551 .. :try_end_552} :catchall_54e

    goto/16 :goto_c

    .line 4786
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v55    # "intent":Landroid/content/Intent;
    .end local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_554
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SETTINGS_OBSERVER_TRIGGERED called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 4788
    .restart local v28    # "currentUser":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v83

    .line 4789
    .restart local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .restart local v48    # "i$":Ljava/util/Iterator;
    :cond_570
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/pm/PersonaInfo;

    .line 4790
    .restart local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v72, :cond_570

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v72

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-ne v4, v5, :cond_570

    .line 4791
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v72

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_c

    .line 4799
    .end local v28    # "currentUser":Ljava/lang/Integer;
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_596
    :try_start_596
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v116, v0

    .line 4800
    .local v116, "userid":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v116

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkIfAdminHasBeenRemoved(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_5a5
    .catch Ljava/lang/Exception; {:try_start_596 .. :try_end_5a5} :catch_5a7

    goto/16 :goto_c

    .line 4801
    .end local v116    # "userid":I
    :catch_5a7
    move-exception v31

    .line 4802
    .restart local v31    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot process DPM state change broadcast :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4807
    .end local v31    # "e":Ljava/lang/Exception;
    :pswitch_5c6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v114, v0

    .line 4808
    .local v114, "userHandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v47

    .line 4809
    .local v47, "i":I
    :goto_5d8
    if-lez v47, :cond_617

    .line 4810
    add-int/lit8 v47, v47, -0x1

    .line 4812
    :try_start_5dc
    const-string v4, "PersonaManagerService"

    const-string v5, " sending remove persona event to system observers "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4813
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ISystemPersonaObserver;

    move/from16 v0, v114

    invoke-interface {v4, v0}, Landroid/content/pm/ISystemPersonaObserver;->onRemovePersona(I)V
    :try_end_5f8
    .catch Ljava/lang/Exception; {:try_start_5dc .. :try_end_5f8} :catch_5f9

    goto :goto_5d8

    .line 4814
    :catch_5f9
    move-exception v34

    .line 4817
    .local v34, "e2":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Caught:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d8

    .line 4820
    .end local v34    # "e2":Ljava/lang/Exception;
    :cond_617
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_c

    .line 4824
    .end local v47    # "i":I
    .end local v114    # "userHandle":I
    :pswitch_624
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    if-eqz v4, :cond_63d

    .line 4825
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadKnoxWallpaperSettings(I)V

    .line 4827
    :cond_63d
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOKnoxContainerLaunch(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2600(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_c

    .line 4831
    :pswitch_648
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOPersonaActive(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_c

    .line 4835
    :pswitch_653
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOResetPersona(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_c

    .line 4839
    :pswitch_65e
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOStateChange(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_c

    .line 4843
    :pswitch_669
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_BROADCAST_KNOX_MODE_CHANGE_OBSERVER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4844
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v114, v0

    .line 4845
    .restart local v114    # "userHandle":I
    new-instance v55, Landroid/content/Intent;

    const-string v4, "com.sec.knox.container.INTENT_KNOX_USER_CHANGED"

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4846
    .restart local v55    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v55

    move/from16 v1, v114

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4847
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4848
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v47

    .line 4849
    .restart local v47    # "i":I
    :goto_6a4
    if-lez v47, :cond_6f6

    .line 4850
    add-int/lit8 v47, v47, -0x1

    .line 4852
    :try_start_6a8
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " sending onKnoxModeChange persona event to knox observers during switch #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4853
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IKnoxModeChangeObserver;

    move/from16 v0, v114

    invoke-interface {v4, v0}, Landroid/content/pm/IKnoxModeChangeObserver;->onKnoxModeChange(I)V
    :try_end_6d7
    .catch Ljava/lang/Exception; {:try_start_6a8 .. :try_end_6d7} :catch_6d8

    goto :goto_6a4

    .line 4854
    :catch_6d8
    move-exception v41

    .line 4857
    .local v41, "exK":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Caught during onKnoxModeChange:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v41 .. v41}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a4

    .line 4860
    .end local v41    # "exK":Ljava/lang/Exception;
    :cond_6f6
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_c

    .line 4865
    .end local v47    # "i":I
    .end local v55    # "intent":Landroid/content/Intent;
    .end local v114    # "userHandle":I
    :pswitch_703
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_PROCESS_FOCUSED_USER_CHANGE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4866
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 4867
    .local v27, "currentFocusedUser":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->disableNonCoreServices:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3100(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 4868
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getServiceEx()Lcom/android/server/clipboardex/ClipboardExService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3200(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/clipboardex/ClipboardExService;

    move-result-object v4

    const-string v5, "SWITCHED"

    move/from16 v0, v27

    invoke-virtual {v4, v0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->multiUserMode(ILjava/lang/String;)V

    goto/16 :goto_c

    .line 4874
    .end local v27    # "currentFocusedUser":I
    :pswitch_72b
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_BROADCAST_KNOX_MODE_STATE_NOT_ACTIVE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4875
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v114, v0

    .line 4876
    .restart local v114    # "userHandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v114

    # invokes: Lcom/android/server/pm/PersonaManagerService;->broadcastKnoxModeChangeIntent(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$3300(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 4880
    .end local v114    # "userHandle":I
    :pswitch_743
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$3400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePartialContainer(Ljava/util/ArrayList;)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3500(Lcom/android/server/pm/PersonaManagerService;Ljava/util/ArrayList;)V

    goto/16 :goto_c

    .line 4884
    :pswitch_754
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 4885
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    if-ne v4, v10, :cond_c

    .line 4886
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateCurrentUserPolicy(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$3600(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 4893
    .end local v10    # "personaId":I
    :pswitch_76b
    :try_start_76b
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3800(Lcom/android/server/pm/PersonaManagerService;)Landroid/service/tima/ITimaService;

    move-result-object v4

    invoke-interface {v4}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    # setter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3702(Z)Z

    .line 4894
    const-string v4, "PersonaManagerService.Tima"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check Tima 2.0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3700()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v5

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3902(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;
    :try_end_7a7
    .catch Ljava/lang/Exception; {:try_start_76b .. :try_end_7a7} :catch_b5a

    .line 4905
    :goto_7a7
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v81

    .line 4906
    .local v81, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v81 .. v81}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    :cond_7b4
    :goto_7b4
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/content/pm/PersonaInfo;

    .line 4908
    .restart local v84    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v84, :cond_7b4

    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7b4

    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7b4

    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    if-eqz v4, :cond_7b4

    .line 4911
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_90a

    .line 4912
    move-object/from16 v0, v84

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    if-eqz v4, :cond_7f0

    move-object/from16 v0, v84

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7fb

    .line 4913
    :cond_7f0
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4000(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4915
    :cond_7fb
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_90a

    .line 4916
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4918
    const/4 v4, 0x1

    :try_start_817
    move-object/from16 v0, v84

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 4919
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PMS systemReady: setting upgradeInProgress for ContainerId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; pi.upgradeInProgress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v84

    iget-boolean v7, v0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4920
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v84

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4921
    monitor-exit v5
    :try_end_857
    .catchall {:try_start_817 .. :try_end_857} :catchall_b7a

    .line 4923
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_8cb

    .line 4924
    const/16 v52, 0x0

    .line 4926
    .local v52, "in":Ljava/io/InputStream;
    :try_start_863
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "reading from xml resource for fota"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4927
    new-instance v43, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$4300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "enterprisedata.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4929
    .local v43, "file":Ljava/io/File;
    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b7d

    .line 4930
    new-instance v53, Ljava/io/FileInputStream;

    move-object/from16 v0, v53

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_899
    .catch Ljava/lang/Exception; {:try_start_863 .. :try_end_899} :catch_b86
    .catchall {:try_start_863 .. :try_end_899} :catchall_bae

    .line 4931
    .end local v52    # "in":Ljava/io/InputStream;
    .local v53, "in":Ljava/io/InputStream;
    :try_start_899
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v76

    .line 4932
    .local v76, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    move-object/from16 v0, v76

    move-object/from16 v1, v53

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4933
    new-instance v39, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    move-object/from16 v0, v39

    move-object/from16 v1, v76

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4934
    .local v39, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 4935
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v5

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4402(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    .line 4936
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4202(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_8c4
    .catch Ljava/lang/Exception; {:try_start_899 .. :try_end_8c4} :catch_1e79
    .catchall {:try_start_899 .. :try_end_8c4} :catchall_1e74

    move-object/from16 v52, v53

    .line 4944
    .end local v39    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v53    # "in":Ljava/io/InputStream;
    .end local v76    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v52    # "in":Ljava/io/InputStream;
    :goto_8c6
    if-eqz v52, :cond_8cb

    .line 4946
    :try_start_8c8
    invoke-virtual/range {v52 .. v52}, Ljava/io/InputStream;->close()V
    :try_end_8cb
    .catch Ljava/lang/Exception; {:try_start_8c8 .. :try_end_8cb} :catch_1e6e

    .line 4953
    .end local v43    # "file":Ljava/io/File;
    .end local v52    # "in":Ljava/io/InputStream;
    :cond_8cb
    :goto_8cb
    const/16 v42, 0x1

    .line 4955
    .local v42, "exist":Z
    :try_start_8cd
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    const-string v5, "com.google.android.webview"

    const/4 v6, 0x0

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 4956
    .local v16, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v16, :cond_8e4

    .line 4957
    const/16 v42, 0x0

    .line 4959
    :cond_8e4
    const-string v4, "PersonaManagerService"

    const-string v5, "Webview package is in Knox container"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8eb
    .catch Ljava/lang/Exception; {:try_start_8cd .. :try_end_8eb} :catch_bb5

    .line 4964
    .end local v16    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_8eb
    if-nez v42, :cond_901

    .line 4965
    const-string v4, "PersonaManagerService"

    const-string v5, "Webview package is not in Knox container, hence install that package"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4966
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const-string v6, "com.google.android.webview"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I

    .line 4968
    :cond_901
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleFOTAUpgrade(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4600(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 4971
    .end local v42    # "exist":Z
    :cond_90a
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_a04

    .line 4973
    :try_start_910
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calling SDP onBoot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4974
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 4975
    .local v50, "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/SdpManagerService;->onBoot(I)I

    move-result v4

    if-nez v4, :cond_bba

    const/16 v22, 0x1

    .line 4976
    .local v22, "bootres":Z
    :goto_944
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4977
    if-nez v22, :cond_965

    .line 4978
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDP on-boot failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_965
    .catch Lcom/android/sdp/exception/SdpVersionException; {:try_start_910 .. :try_end_965} :catch_bbe

    .line 5029
    .end local v22    # "bootres":Z
    .end local v50    # "ident":J
    :cond_965
    :goto_965
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_ca3

    .line 5031
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_985

    .line 5032
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5035
    :cond_985
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-nez v4, :cond_a04

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_a04

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-nez v4, :cond_a04

    .line 5037
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_9c8

    .line 5038
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 5040
    :cond_9c8
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_9e6

    .line 5041
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v6, 0x0

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 5043
    :cond_9e6
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_a04

    .line 5044
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    const/4 v6, 0x0

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 5097
    :cond_a04
    :goto_a04
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v4, :cond_a46

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_a46

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsAdminLock:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5500(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_a46

    .line 5098
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " resetPersonaOnReboot:  resetting persona :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5099
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startResetPersona(IZ)I
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$5600(Lcom/android/server/pm/PersonaManagerService;IZ)I

    .line 5102
    :cond_a46
    invoke-virtual/range {v84 .. v84}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_ab1

    .line 5103
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_f8d

    .line 5105
    const/16 v65, 0x1

    .line 5106
    .local v65, "mountStatus":Z
    :try_start_a5e
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->isMounted(I)Z

    move-result v4

    if-nez v4, :cond_a8d

    .line 5107
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    invoke-virtual/range {v84 .. v84}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v7

    invoke-virtual/range {v84 .. v84}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v8

    move-object/from16 v0, v84

    iget-boolean v9, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    invoke-virtual/range {v4 .. v9}, Lcom/sec/knox/container/util/KnoxFileHandler;->mountFS(ILjava/lang/String;ZIZ)Z

    move-result v65

    .line 5110
    :cond_a8d
    if-nez v65, :cond_d4a

    .line 5111
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File system not mounted successfully for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab1
    .catch Ljava/lang/Exception; {:try_start_a5e .. :try_end_ab1} :catch_e91

    .line 5169
    .end local v65    # "mountStatus":Z
    :cond_ab1
    :goto_ab1
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "systemReady: getDeviceFirmwareVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; pi.fwversion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget-object v6, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5170
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7b4

    .line 5171
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b4

    .line 5173
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pi.removePersona = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget-boolean v6, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; pi.state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5174
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_7b4

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_7b4

    .line 5176
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    # invokes: Lcom/android/server/pm/PersonaManagerService;->upgradeContainer(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5800(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    goto/16 :goto_7b4

    .line 4900
    .end local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :catch_b5a
    move-exception v31

    .line 4901
    .restart local v31    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->printStackTrace()V

    .line 4902
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get Tima instance - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7a7

    .line 4921
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :catchall_b7a
    move-exception v4

    :try_start_b7b
    monitor-exit v5
    :try_end_b7c
    .catchall {:try_start_b7b .. :try_end_b7c} :catchall_b7a

    throw v4

    .line 4938
    .restart local v43    # "file":Ljava/io/File;
    .restart local v52    # "in":Ljava/io/InputStream;
    :cond_b7d
    :try_start_b7d
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to find enterprisedata.xml in system container"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b84
    .catch Ljava/lang/Exception; {:try_start_b7d .. :try_end_b84} :catch_b86
    .catchall {:try_start_b7d .. :try_end_b84} :catchall_bae

    goto/16 :goto_8c6

    .line 4940
    .end local v43    # "file":Ljava/io/File;
    :catch_b86
    move-exception v31

    .line 4941
    .restart local v31    # "e":Ljava/lang/Exception;
    :goto_b87
    :try_start_b87
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->printStackTrace()V

    .line 4942
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba4
    .catchall {:try_start_b87 .. :try_end_ba4} :catchall_bae

    .line 4944
    if-eqz v52, :cond_8cb

    .line 4946
    :try_start_ba6
    invoke-virtual/range {v52 .. v52}, Ljava/io/InputStream;->close()V
    :try_end_ba9
    .catch Ljava/lang/Exception; {:try_start_ba6 .. :try_end_ba9} :catch_bab

    goto/16 :goto_8cb

    .line 4947
    :catch_bab
    move-exception v4

    goto/16 :goto_8cb

    .line 4944
    .end local v31    # "e":Ljava/lang/Exception;
    :catchall_bae
    move-exception v4

    :goto_baf
    if-eqz v52, :cond_bb4

    .line 4946
    :try_start_bb1
    invoke-virtual/range {v52 .. v52}, Ljava/io/InputStream;->close()V
    :try_end_bb4
    .catch Ljava/lang/Exception; {:try_start_bb1 .. :try_end_bb4} :catch_1e71

    .line 4948
    :cond_bb4
    :goto_bb4
    throw v4

    .line 4960
    .end local v52    # "in":Ljava/io/InputStream;
    .restart local v42    # "exist":Z
    :catch_bb5
    move-exception v31

    .line 4961
    .restart local v31    # "e":Ljava/lang/Exception;
    const/16 v42, 0x0

    goto/16 :goto_8eb

    .line 4975
    .end local v31    # "e":Ljava/lang/Exception;
    .end local v42    # "exist":Z
    .restart local v50    # "ident":J
    :cond_bba
    const/16 v22, 0x0

    goto/16 :goto_944

    .line 4980
    .end local v50    # "ident":J
    :catch_bbe
    move-exception v101

    .line 4981
    .local v101, "se":Lcom/android/sdp/exception/SdpVersionException;
    const-string v4, "PersonaManagerService"

    const-string v5, "SDP version mismatch. migration detected"

    move-object/from16 v0, v101

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4983
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_c8a

    .line 4987
    const/16 v100, 0x0

    .line 4989
    .local v100, "rstToken":Ljava/lang/String;
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3700()Z

    move-result v4

    if-eqz v4, :cond_c73

    .line 4990
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v100

    .line 4994
    :goto_be2
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x2

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    move-object/from16 v0, v100

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v4, v5, v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v23

    .line 4996
    .local v23, "cmk":Ljava/lang/String;
    if-eqz v23, :cond_c1e

    .line 4997
    const/16 v29, 0x0

    .line 4998
    .local v29, "decodedCMK":[B
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_c81

    .line 4999
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    .line 5003
    :goto_c05
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5004
    .restart local v50    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/SdpManagerService;->onMigration(IZ[B)Z

    .line 5005
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5007
    .end local v29    # "decodedCMK":[B
    .end local v50    # "ident":J
    :cond_c1e
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v100

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 5008
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v23

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 5019
    .end local v23    # "cmk":Ljava/lang/String;
    .end local v100    # "rstToken":Ljava/lang/String;
    :goto_c30
    :try_start_c30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5020
    .restart local v50    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/SdpManagerService;->onBoot(I)I

    move-result v4

    if-eqz v4, :cond_c62

    .line 5021
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDP on-boot failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5023
    :cond_c62
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c65
    .catch Ljava/lang/Exception; {:try_start_c30 .. :try_end_c65} :catch_c67

    goto/16 :goto_965

    .line 5024
    .end local v50    # "ident":J
    :catch_c67
    move-exception v31

    .line 5025
    .restart local v31    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    const-string v5, "SDP on-boot failed"

    move-object/from16 v0, v101

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_965

    .line 4992
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v100    # "rstToken":Ljava/lang/String;
    :cond_c73
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v100

    goto/16 :goto_be2

    .line 5001
    .restart local v23    # "cmk":Ljava/lang/String;
    .restart local v29    # "decodedCMK":[B
    :cond_c81
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v29

    goto/16 :goto_c05

    .line 5013
    .end local v23    # "cmk":Ljava/lang/String;
    .end local v29    # "decodedCMK":[B
    .end local v100    # "rstToken":Ljava/lang/String;
    :cond_c8a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5014
    .restart local v50    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/SdpManagerService;->onMigration(IZ[B)Z

    .line 5015
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c30

    .line 5048
    .end local v50    # "ident":J
    .end local v101    # "se":Lcom/android/sdp/exception/SdpVersionException;
    :cond_ca3
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_a04

    .line 5057
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "inside systemReady keyguard is disabled sdp minor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5060
    const/16 v91, 0x0

    .line 5061
    .local v91, "pwdResetToken":Ljava/lang/String;
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3700()Z

    move-result v4

    if-eqz v4, :cond_d2c

    .line 5062
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v91

    .line 5067
    :goto_cd1
    if-eqz v91, :cond_a04

    .line 5068
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x2

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    move-object/from16 v0, v91

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v4, v5, v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v26

    .line 5070
    .local v26, "containerMasterKey":Ljava/lang/String;
    if-eqz v26, :cond_d41

    .line 5072
    const/16 v29, 0x0

    .line 5073
    .restart local v29    # "decodedCMK":[B
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_d39

    .line 5074
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    .line 5078
    :goto_cf6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5079
    .restart local v50    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0}, Lcom/android/server/SdpManagerService;->onDeviceUnlocked(I[B)Z

    move-result v4

    if-nez v4, :cond_d15

    .line 5080
    const-string v4, "PersonaManagerService.KeyMgnt"

    const-string v5, "Failed to unlock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5082
    :cond_d15
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5083
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut([B)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5300(Lcom/android/server/pm/PersonaManagerService;[B)V

    .line 5084
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    goto/16 :goto_a04

    .line 5064
    .end local v26    # "containerMasterKey":Ljava/lang/String;
    .end local v29    # "decodedCMK":[B
    .end local v50    # "ident":J
    :cond_d2c
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v91

    goto :goto_cd1

    .line 5076
    .restart local v26    # "containerMasterKey":Ljava/lang/String;
    .restart local v29    # "decodedCMK":[B
    :cond_d39
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v29

    goto :goto_cf6

    .line 5090
    .end local v29    # "decodedCMK":[B
    :cond_d41
    const-string v4, "PersonaManagerService"

    const-string v5, "CMK is NULL : can\'t unlock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a04

    .line 5113
    .end local v26    # "containerMasterKey":Ljava/lang/String;
    .end local v91    # "pwdResetToken":Ljava/lang/String;
    .restart local v65    # "mountStatus":Z
    :cond_d4a
    :try_start_d4a
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File system successfully mounted for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5115
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_ab1

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_ab1

    .line 5116
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v25

    .line 5117
    .local v25, "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v25, :cond_ab1

    .line 5118
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v17

    .line 5119
    .local v17, "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v19

    .line 5120
    .local v19, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Positive Delta for Knox upgrade : Before"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5121
    if-eqz v17, :cond_ab1

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ab1

    .line 5122
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v74

    .line 5124
    .local v74, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App install list from PM for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v74

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5125
    if-eqz v74, :cond_eca

    invoke-interface/range {v74 .. v74}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_eca

    .line 5126
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App install list from PM for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v74 .. v74}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5127
    invoke-interface/range {v74 .. v74}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .local v49, "i$":Ljava/util/Iterator;
    :cond_e30
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_eae

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/content/pm/PackageInfo;

    .line 5128
    .local v78, "personaApp":Landroid/content/pm/PackageInfo;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App installed for persona"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v78

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5129
    :goto_e58
    move-object/from16 v0, v78

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e30

    .line 5130
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App installed for persona"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v78

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "present in Ent Install List;Remove"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5131
    move-object/from16 v0, v78

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_e90
    .catch Ljava/lang/Exception; {:try_start_d4a .. :try_end_e90} :catch_e91

    goto :goto_e58

    .line 5160
    .end local v17    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v74    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v78    # "personaApp":Landroid/content/pm/PackageInfo;
    :catch_e91
    move-exception v31

    .line 5161
    .restart local v31    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to mount file system. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ab1

    .line 5134
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v17    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v49    # "i$":Ljava/util/Iterator;
    .restart local v74    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_eae
    :try_start_eae
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Positive Delta for Knox upgrade:After"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5136
    .end local v49    # "i$":Ljava/util/Iterator;
    :cond_eca
    if-eqz v17, :cond_ab1

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ab1

    .line 5137
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persona firmware version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget-object v6, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5138
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ab1

    .line 5139
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab1

    .line 5141
    move-object/from16 v0, v84

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    if-nez v4, :cond_f2d

    .line 5142
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4000(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5145
    :cond_f2d
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .restart local v49    # "i$":Ljava/util/Iterator;
    :goto_f31
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ab1

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;
    :try_end_f3d
    .catch Ljava/lang/Exception; {:try_start_eae .. :try_end_f3d} :catch_e91

    .line 5147
    .local v18, "appName":Ljava/lang/String;
    :try_start_f3d
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application upgrade-Add : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5148
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    invoke-static {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    :try_end_f64
    .catch Ljava/lang/Exception; {:try_start_f3d .. :try_end_f64} :catch_f65

    goto :goto_f31

    .line 5149
    :catch_f65
    move-exception v31

    .line 5150
    .restart local v31    # "e":Ljava/lang/Exception;
    :try_start_f66
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to install "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for Persona "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8c
    .catch Ljava/lang/Exception; {:try_start_f66 .. :try_end_f8c} :catch_e91

    goto :goto_f31

    .line 5164
    .end local v17    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "appName":Ljava/lang/String;
    .end local v19    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v31    # "e":Ljava/lang/Exception;
    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v65    # "mountStatus":Z
    .end local v74    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_f8d
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Did not mount file system for superLocked persona "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or due to container state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ab1

    .line 5185
    .end local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :pswitch_fb1
    :try_start_fb1
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5188
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguardUpdateMonitor:Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;

    move-result-object v4

    if-eqz v4, :cond_fcd

    .line 5189
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguardUpdateMonitor:Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;->onBootComplete()V

    .line 5192
    :cond_fcd
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/PersonaManager;

    .line 5195
    .local v82, "personaManager":Landroid/os/PersonaManager;
    if-eqz v82, :cond_c

    .line 5196
    const/4 v4, 0x0

    move-object/from16 v0, v82

    invoke-virtual {v0, v4}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v81

    .line 5198
    .restart local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v81, :cond_c

    invoke-interface/range {v81 .. v81}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 5199
    invoke-interface/range {v81 .. v81}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v79, v0

    .line 5200
    .local v79, "personaIds":[I
    const/16 v67, 0x0

    .line 5201
    .local v67, "n":I
    invoke-interface/range {v81 .. v81}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .restart local v48    # "i$":Ljava/util/Iterator;
    move/from16 v68, v67

    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v67    # "n":I
    .local v68, "n":I
    :cond_fff
    :goto_fff
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12fd

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/content/pm/PersonaInfo;

    .line 5202
    .restart local v84    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v84, :cond_fff

    .line 5204
    add-int/lit8 v67, v68, 0x1

    .end local v68    # "n":I
    .restart local v67    # "n":I
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    aput v4, v79, v68

    .line 5206
    new-instance v35, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5207
    .local v35, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v69

    .line 5209
    .local v69, "ownerUid":I
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v36

    .line 5210
    .local v36, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v0, v69

    invoke-direct {v5, v0, v6}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v57

    .line 5211
    .local v57, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_122e

    .line 5212
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_122e

    .line 5213
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isVoiceCapable()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6000(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_1139

    .line 5214
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.PhoneShortcut"

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 5218
    :goto_1081
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isSMSCapable()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_114b

    .line 5219
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.SMSShortcut"

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 5224
    :goto_109b
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persona firmware version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget-object v6, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5225
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v25

    .line 5226
    .restart local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v57, :cond_120f

    if-eqz v25, :cond_120f

    .line 5227
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v11

    .line 5228
    .local v11, "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_1175

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1175

    .line 5229
    new-instance v89, Ljava/util/ArrayList;

    invoke-direct/range {v89 .. v89}, Ljava/util/ArrayList;-><init>()V

    .line 5230
    .local v89, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .restart local v49    # "i$":Ljava/util/Iterator;
    :goto_10ec
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_115d

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/String;

    .line 5231
    .local v54, "info":Ljava/lang/String;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver AppUpgradeInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5232
    move-object/from16 v0, v89

    move-object/from16 v1, v54

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1119
    .catch Ljava/lang/Exception; {:try_start_fb1 .. :try_end_1119} :catch_111a

    goto :goto_10ec

    .line 5302
    .end local v11    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v36    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v54    # "info":Ljava/lang/String;
    .end local v57    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v67    # "n":I
    .end local v69    # "ownerUid":I
    .end local v79    # "personaIds":[I
    .end local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v82    # "personaManager":Landroid/os/PersonaManager;
    .end local v84    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v89    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_111a
    move-exception v31

    .line 5303
    .restart local v31    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " BootReceiver : Exception while softStartPersona() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5216
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v36    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v57    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v67    # "n":I
    .restart local v69    # "ownerUid":I
    .restart local v79    # "personaIds":[I
    .restart local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v82    # "personaManager":Landroid/os/PersonaManager;
    .restart local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_1139
    :try_start_1139
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.PhoneShortcut"

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1081

    .line 5221
    :cond_114b
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.SMSShortcut"

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_109b

    .line 5234
    .restart local v11    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v49    # "i$":Ljava/util/Iterator;
    .restart local v89    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_115d
    invoke-interface/range {v89 .. v89}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v89

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/String;

    .line 5235
    .local v30, "disablePackages":[Ljava/lang/String;
    invoke-virtual/range {v57 .. v57}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v5}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 5238
    .end local v30    # "disablePackages":[Ljava/lang/String;
    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v89    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1175
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v12

    .line 5239
    .local v12, "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "PersonaManagerService"

    const-string v5, "FOTA Boot receiver re_enable: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5240
    if-eqz v12, :cond_120f

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_120f

    .line 5241
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver re_enable:Size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5242
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 5243
    .local v38, "enablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .restart local v49    # "i$":Ljava/util/Iterator;
    :goto_11ad
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11db

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Ljava/lang/String;

    .line 5244
    .local v86, "pkgInfo":Ljava/lang/String;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver AppUpgradeInfo for re_enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v86

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5245
    move-object/from16 v0, v38

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11ad

    .line 5247
    .end local v86    # "pkgInfo":Ljava/lang/String;
    :cond_11db
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver AppUpgradeInfo for re_enable:Enable pks size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5248
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Ljava/lang/String;

    .line 5249
    .local v37, "enablePackages":[Ljava/lang/String;
    invoke-virtual/range {v57 .. v57}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v4, v0, v5}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 5253
    .end local v11    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "enablePackages":[Ljava/lang/String;
    .end local v38    # "enablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v49    # "i$":Ljava/util/Iterator;
    :cond_120f
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1218
    .catch Ljava/lang/Exception; {:try_start_1139 .. :try_end_1218} :catch_111a

    .line 5254
    :try_start_1218
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    iput-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 5255
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 5256
    monitor-exit v5
    :try_end_122e
    .catchall {:try_start_1218 .. :try_end_122e} :catchall_12f2

    .line 5260
    .end local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_122e
    :try_start_122e
    invoke-virtual/range {v84 .. v84}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_12ba

    .line 5261
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_1254

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_12ba

    .line 5264
    :cond_1254
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v14

    .line 5265
    .local v14, "adminuid":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BOOT_COMPLETE - adminuid - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and personaId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v5, :cond_12f5

    .line 5267
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v99

    .line 5268
    .local v99, "retVal":Z
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BOOT_COMPLETE - persona is in SUPER_LOCKED state, hence unmounting the filesystem = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v99

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5275
    .end local v14    # "adminuid":I
    .end local v99    # "retVal":Z
    :cond_12ba
    :goto_12ba
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_12ee

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_12ee

    .line 5276
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.knox.action.CONTAINER_UPGRADE_COMPLETE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_12ee
    .catch Ljava/lang/Exception; {:try_start_122e .. :try_end_12ee} :catch_111a

    :cond_12ee
    move/from16 v68, v67

    .line 5278
    .end local v67    # "n":I
    .restart local v68    # "n":I
    goto/16 :goto_fff

    .line 5256
    .end local v68    # "n":I
    .restart local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v67    # "n":I
    :catchall_12f2
    move-exception v4

    :try_start_12f3
    monitor-exit v5
    :try_end_12f4
    .catchall {:try_start_12f3 .. :try_end_12f4} :catchall_12f2

    :try_start_12f4
    throw v4

    .line 5270
    .end local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v14    # "adminuid":I
    :cond_12f5
    const-string v4, "PersonaManagerService"

    const-string v5, "BOOT_COMPLETE - BYOD admin. Ignoring unmounting...."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12ba

    .line 5280
    .end local v14    # "adminuid":I
    .end local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v36    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v57    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v67    # "n":I
    .end local v69    # "ownerUid":I
    .end local v84    # "pi":Landroid/content/pm/PersonaInfo;
    .restart local v68    # "n":I
    :cond_12fd
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z
    :try_end_1304
    .catch Ljava/lang/Exception; {:try_start_12f4 .. :try_end_1304} :catch_111a

    move-result v4

    if-nez v4, :cond_13a1

    .line 5281
    const/16 v47, 0x0

    .line 5283
    .restart local v47    # "i":I
    const/16 v47, 0x0

    :goto_130b
    move/from16 v0, v47

    move/from16 v1, v68

    if-ge v0, v1, :cond_1370

    .line 5284
    :try_start_1311
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    aget v5, v79, v47

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    .line 5285
    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$6300()Z

    move-result v4

    if-eqz v4, :cond_1340

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting contaienr "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v79, v47

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in background after reboot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1340
    .catch Ljava/lang/Exception; {:try_start_1311 .. :try_end_1340} :catch_1343

    .line 5283
    :cond_1340
    add-int/lit8 v47, v47, 0x1

    goto :goto_130b

    .line 5287
    :catch_1343
    move-exception v31

    .line 5288
    .restart local v31    # "e":Ljava/lang/Exception;
    :try_start_1344
    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$6300()Z

    move-result v4

    if-eqz v4, :cond_1370

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v79, v47

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in background after reboot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5294
    .end local v31    # "e":Ljava/lang/Exception;
    .end local v47    # "i":I
    :cond_1370
    :goto_1370
    const-string v4, "PersonaManagerService"

    const-string v5, "BOOT_COMPLETE - Sending broadcast to start Knox Apps Update Process"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5295
    new-instance v103, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.appsupdateagent.intent.action.START_KNOX_APPS_UPDATE"

    move-object/from16 v0, v103

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5296
    .local v103, "startKnoxAppsUpdateIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.knox.appsupdateagent"

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5297
    const/16 v4, 0x20

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5298
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v6, "com.sec.knox.container.permission.RECEIVE_KNOX_APPS_UPDATE"

    move-object/from16 v0, v103

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 5291
    .end local v103    # "startKnoxAppsUpdateIntent":Landroid/content/Intent;
    :cond_13a1
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->setDefaultSettingsValueforCOM()V
    :try_end_13a8
    .catch Ljava/lang/Exception; {:try_start_1344 .. :try_end_13a8} :catch_111a

    goto :goto_1370

    .line 5312
    .end local v68    # "n":I
    .end local v79    # "personaIds":[I
    .end local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v82    # "personaManager":Landroid/os/PersonaManager;
    :pswitch_13a9
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersonaHandler.MSG_START_REMOVE_PERSONA_AFTER_SWITCH is called for personaId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5315
    :try_start_13c5
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5316
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/content/pm/PersonaInfo;

    .line 5317
    .local v80, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v80, :cond_13e8

    .line 5318
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler no personaInfo for this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e0
    .catch Ljava/lang/Exception; {:try_start_13c5 .. :try_end_13e0} :catch_13e2

    goto/16 :goto_73

    .line 5342
    .end local v10    # "personaId":I
    .end local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catch_13e2
    move-exception v31

    .line 5343
    .restart local v31    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 5322
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v10    # "personaId":I
    .restart local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_13e8
    :try_start_13e8
    invoke-virtual/range {v80 .. v80}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v75

    .line 5324
    .local v75, "parentUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1405

    .line 5326
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v4, :cond_1405

    .line 5327
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "isKnoxKioskMode"

    const-string/jumbo v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5332
    :cond_1405
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v75

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    move-result v97

    .line 5333
    .local v97, "result":Z
    if-eqz v97, :cond_1436

    .line 5334
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->startRemovingPersona(I)I

    move-result v24

    .line 5335
    .local v24, "code":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRemovingPersona return code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5338
    .end local v24    # "code":I
    :cond_1436
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Failed to switch persona. Aborted removing of persona..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143d
    .catch Ljava/lang/Exception; {:try_start_13e8 .. :try_end_143d} :catch_13e2

    goto/16 :goto_c

    .line 5349
    .end local v10    # "personaId":I
    .end local v75    # "parentUserId":I
    .end local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v97    # "result":Z
    :pswitch_143f
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5350
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler:: UnInstalling of Thirdparty apps for reset persona is done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5352
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v54

    .line 5353
    .local v54, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v54, :cond_1478

    move-object/from16 v0, v54

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v4, :cond_1478

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_1478

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsAdminLock:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5500(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_1478

    .line 5354
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "resetPartition is skipped. It\'s already done in AMS.SystemReady"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_73

    .line 5358
    :cond_1478
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->cleanPartition(I)Z
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$6400(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v98

    .line 5359
    .local v98, "ret":Z
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " resetPersona: ret value of EPM resetPartition():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5373
    .end local v10    # "personaId":I
    .end local v54    # "info":Landroid/content/pm/PersonaInfo;
    .end local v98    # "ret":Z
    :pswitch_149c
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "resetPerson is not called from anywhere now. So disalbed. Please contacts container team!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5378
    :pswitch_14a6
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5379
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v106

    .line 5380
    .local v106, "state":Landroid/content/pm/PersonaState;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v13

    .line 5381
    .local v13, "adminUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v28

    .line 5382
    .local v28, "currentUser":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyKeyguardShow(false) on MSG_SUPER_LOCK_PERSONA for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5383
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardShow(IZ)V

    .line 5384
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/content/pm/PersonaInfo;

    .line 5385
    .restart local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v80, :cond_14f8

    .line 5386
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler no personaInfo for this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_73

    .line 5390
    :cond_14f8
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_SUPER_LOCK_PERSONA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current user from AMS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " adminUid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    const/16 v97, 0x1

    .line 5393
    .restart local v97    # "result":Z
    move/from16 v0, v28

    if-ne v10, v0, :cond_1535

    .line 5394
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: current user from AMS is the one being super-locked, not stopping persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5395
    const/16 v97, 0x0

    .line 5398
    :cond_1535
    move-object/from16 v0, v80

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-nez v4, :cond_154a

    .line 5399
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 5400
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: switching to owner"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5403
    :cond_154a
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_1565

    .line 5404
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, v10, :cond_1565

    .line 5405
    const/16 v97, 0x0

    .line 5406
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: BYOD case, don\'t stop Persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5409
    :cond_1565
    const/16 v96, -0x1

    .line 5410
    .local v96, "res":I
    if-eqz v97, :cond_15ac

    .line 5411
    move-object/from16 v0, v80

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-nez v4, :cond_1590

    .line 5412
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopping persona for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5413
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->stopPersona(I)I

    move-result v96

    .line 5415
    :cond_1590
    if-eqz v96, :cond_15ac

    .line 5416
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityManagerNative.getDefault().stopUser failed to execure with error code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5420
    :cond_15ac
    if-nez v97, :cond_15ba

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_15bc

    :cond_15ba
    if-eqz v96, :cond_1613

    .line 5423
    :cond_15bc
    new-instance v35, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5424
    .restart local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v69

    .line 5425
    .restart local v69    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v69

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v88

    .line 5426
    .local v88, "pkgNames":[Ljava/lang/String;
    if-eqz v88, :cond_1604

    .line 5427
    move-object/from16 v20, v88

    .local v20, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v62, v0

    .local v62, "len$":I
    const/16 v48, 0x0

    .local v48, "i$":I
    :goto_15ee
    move/from16 v0, v48

    move/from16 v1, v62

    if-ge v0, v1, :cond_160e

    aget-object v87, v20, v48

    .line 5428
    .local v87, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v87

    move/from16 v1, v69

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v0, v10, v1}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5427
    add-int/lit8 v48, v48, 0x1

    goto :goto_15ee

    .line 5431
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v48    # "i$":I
    .end local v62    # "len$":I
    .end local v87    # "pkgName":Ljava/lang/String;
    :cond_1604
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v69

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v5, v10, v0}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5433
    :cond_160e
    const/4 v4, 0x0

    move-object/from16 v0, v80

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 5437
    .end local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v69    # "ownerUid":I
    .end local v88    # "pkgNames":[Ljava/lang/String;
    :cond_1613
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, v80

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v4, :cond_c

    .line 5439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5441
    .restart local v50    # "ident":J
    :try_start_1629
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v90

    .line 5442
    .local v90, "pm":Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    const-string v5, "com.sec.knox.home.crossprofilefilter"

    move-object/from16 v0, v90

    invoke-interface {v0, v4, v5}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_1635
    .catch Landroid/os/RemoteException; {:try_start_1629 .. :try_end_1635} :catch_1646
    .catchall {:try_start_1629 .. :try_end_1635} :catchall_164e

    .line 5446
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5449
    .end local v90    # "pm":Landroid/content/pm/IPackageManager;
    :goto_1638
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v80 .. v80}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v5

    const/4 v6, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startActivityAdminLocked(III)V
    invoke-static {v4, v5, v10, v6}, Lcom/android/server/pm/PersonaManagerService;->access$6600(Lcom/android/server/pm/PersonaManagerService;III)V

    goto/16 :goto_c

    .line 5443
    :catch_1646
    move-exception v93

    .line 5444
    .local v93, "re":Landroid/os/RemoteException;
    :try_start_1647
    invoke-virtual/range {v93 .. v93}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_164a
    .catchall {:try_start_1647 .. :try_end_164a} :catchall_164e

    .line 5446
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1638

    .end local v93    # "re":Landroid/os/RemoteException;
    :catchall_164e
    move-exception v4

    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 5455
    .end local v10    # "personaId":I
    .end local v13    # "adminUid":I
    .end local v28    # "currentUser":I
    .end local v50    # "ident":J
    .end local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v96    # "res":I
    .end local v97    # "result":Z
    .end local v106    # "state":Landroid/content/pm/PersonaState;
    :pswitch_1653
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5460
    .restart local v10    # "personaId":I
    :try_start_1657
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v4, v10, v5}, Landroid/app/IActivityManager;->updateKnoxContainerRuntimeState(II)V

    .line 5461
    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityManagerService;

    .line 5462
    .local v15, "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v15, :cond_166c

    .line 5463
    invoke-virtual {v15, v10}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z
    :try_end_166c
    .catch Landroid/os/RemoteException; {:try_start_1657 .. :try_end_166c} :catch_16c4

    .line 5470
    .end local v15    # "ams":Lcom/android/server/am/ActivityManagerService;
    :cond_166c
    :goto_166c
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16ce

    const/16 v94, 0x1

    .line 5471
    .local v94, "removePersona":Z
    :goto_1675
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/pm/PersonaInfo;

    .line 5472
    .restart local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v94, :cond_16d1

    .line 5473
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "userStopped triggered removal process..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5474
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v73

    .line 5476
    .local v73, "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v73, :cond_16bb

    invoke-interface/range {v73 .. v73}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_16bb

    .line 5477
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5480
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "handleMessage(MSG_PERSONA_STOPPED) no more Containers, M-Permission roll back on critical apps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5481
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/16 v7, -0x11

    const/4 v8, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->applyPermissionStatesAndFlags(IIII)Z
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6700(Lcom/android/server/pm/PersonaManagerService;IIII)Z

    .line 5487
    :cond_16bb
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$6800(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 5465
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v73    # "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v94    # "removePersona":Z
    :catch_16c4
    move-exception v93

    .line 5466
    .restart local v93    # "re":Landroid/os/RemoteException;
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "handleMessage() MSG_PERSONA_STOPPED remote exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_166c

    .line 5470
    .end local v93    # "re":Landroid/os/RemoteException;
    :cond_16ce
    const/16 v94, 0x0

    goto :goto_1675

    .line 5488
    .restart local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v94    # "removePersona":Z
    :cond_16d1
    if-eqz v72, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {v72 .. v72}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5490
    :try_start_16e5
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v99

    .line 5491
    .restart local v99    # "retVal":Z
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unmounting file system due to super lock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v99

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5493
    new-instance v35, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5494
    .restart local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v69

    .line 5495
    .restart local v69    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v69

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v88

    .line 5496
    .restart local v88    # "pkgNames":[Ljava/lang/String;
    if-eqz v88, :cond_1754

    .line 5497
    move-object/from16 v20, v88

    .restart local v20    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v62, v0

    .restart local v62    # "len$":I
    const/16 v48, 0x0

    .restart local v48    # "i$":I
    :goto_173e
    move/from16 v0, v48

    move/from16 v1, v62

    if-ge v0, v1, :cond_175e

    aget-object v87, v20, v48

    .line 5498
    .restart local v87    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v87

    move/from16 v1, v69

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v0, v10, v1}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5497
    add-int/lit8 v48, v48, 0x1

    goto :goto_173e

    .line 5501
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v48    # "i$":I
    .end local v62    # "len$":I
    .end local v87    # "pkgName":Ljava/lang/String;
    :cond_1754
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v69

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v5, v10, v0}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V
    :try_end_175e
    .catch Landroid/os/RemoteException; {:try_start_16e5 .. :try_end_175e} :catch_1765
    .catchall {:try_start_16e5 .. :try_end_175e} :catchall_1774

    .line 5506
    :cond_175e
    const/4 v4, 0x0

    move-object/from16 v0, v72

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    goto/16 :goto_c

    .line 5503
    .end local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v69    # "ownerUid":I
    .end local v88    # "pkgNames":[Ljava/lang/String;
    .end local v99    # "retVal":Z
    :catch_1765
    move-exception v93

    .line 5504
    .restart local v93    # "re":Landroid/os/RemoteException;
    :try_start_1766
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to unmount file system on super lock."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176d
    .catchall {:try_start_1766 .. :try_end_176d} :catchall_1774

    .line 5506
    const/4 v4, 0x0

    move-object/from16 v0, v72

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    goto/16 :goto_c

    .end local v93    # "re":Landroid/os/RemoteException;
    :catchall_1774
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, v72

    iput-boolean v5, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    throw v4

    .line 5513
    .end local v10    # "personaId":I
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v94    # "removePersona":Z
    :pswitch_177b
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Start lock timer: persona is in background."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5514
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5515
    .restart local v10    # "personaId":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v70

    .line 5516
    .restart local v70    # "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v60

    .line 5517
    .local v60, "lastTimeToBackground":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v108

    .line 5518
    .local v108, "timeOutValue":J
    sub-long v4, v70, v60

    sub-long v110, v108, v4

    .line 5519
    .restart local v110    # "timeRemaining":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v5, 0x2648

    move-wide/from16 v0, v110

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IIJ)V
    invoke-static {v4, v10, v5, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$6900(Lcom/android/server/pm/PersonaManagerService;IIJ)V

    goto/16 :goto_c

    .line 5524
    .end local v10    # "personaId":I
    .end local v60    # "lastTimeToBackground":J
    .end local v70    # "now":J
    .end local v108    # "timeOutValue":J
    .end local v110    # "timeRemaining":J
    :pswitch_17ab
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5525
    .restart local v10    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v95, v0

    .line 5526
    .local v95, "requestId":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop timer with request id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v95

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " persona Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5527
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v95

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v10, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;II)V

    goto/16 :goto_c

    .line 5532
    .end local v10    # "personaId":I
    .end local v95    # "requestId":I
    :pswitch_17e4
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5533
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v54

    .line 5534
    .restart local v54    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v54, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 5535
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "locking persona due to lock timeout."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5536
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->lockPersona(I)V

    goto/16 :goto_c

    .line 5542
    .end local v10    # "personaId":I
    .end local v54    # "info":Landroid/content/pm/PersonaInfo;
    :pswitch_180f
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "locking persona due to reset timeout.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5543
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5544
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearResetPasswordKey(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7000(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5545
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v54

    .line 5546
    .restart local v54    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v54, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v54

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 5548
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_185d

    .line 5549
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 5550
    :cond_185d
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v10}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 5551
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 5552
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguard(I)V

    goto/16 :goto_c

    .line 5569
    .end local v10    # "personaId":I
    .end local v54    # "info":Landroid/content/pm/PersonaInfo;
    :pswitch_1878
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "received MSG_ACTIVATE_SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5571
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5572
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killSdpTimer(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7100(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5574
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v54

    .line 5575
    .restart local v54    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v54, :cond_18c6

    move-object/from16 v0, v54

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_18c6

    .line 5576
    const-string v4, "PersonaManagerService"

    const-string v5, "activating sdp.."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5577
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5578
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5579
    .restart local v50    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/server/SdpManagerService;->onDeviceLocked(I)Z

    move-result v4

    if-nez v4, :cond_18c3

    .line 5580
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to lock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5581
    :cond_18c3
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5585
    .end local v50    # "ident":J
    :cond_18c6
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7200(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5596
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7300(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5597
    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityManagerService;

    .line 5598
    .restart local v15    # "ams":Lcom/android/server/am/ActivityManagerService;
    const-string v4, "com.android.settings"

    invoke-virtual {v15, v4, v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 5604
    .end local v10    # "personaId":I
    .end local v15    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v54    # "info":Landroid/content/pm/PersonaInfo;
    :pswitch_18ee
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5605
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "received MSG_CALM_SDP... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5607
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v84

    .line 5608
    .restart local v84    # "pi":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killSdpTimer(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7100(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5609
    if-nez v84, :cond_1937

    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5610
    :cond_1937
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_1965

    .line 5611
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sdp not-active (skip calming)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5612
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7200(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 5616
    :cond_1965
    const/16 v26, 0x0

    .line 5618
    .restart local v26    # "containerMasterKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mEncodedPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a03

    .line 5622
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside MSG_CALM_SDP 1 found encoded pwd. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5623
    new-instance v26, Ljava/lang/String;

    .end local v26    # "containerMasterKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mEncodedPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5660
    .restart local v26    # "containerMasterKey":Ljava/lang/String;
    :cond_19ab
    :goto_19ab
    if-eqz v26, :cond_1b14

    .line 5661
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5664
    const/16 v29, 0x0

    .line 5665
    .restart local v29    # "decodedCMK":[B
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_1b0b

    .line 5666
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    .line 5670
    :goto_19c3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5671
    .restart local v50    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v10, v0}, Lcom/android/server/SdpManagerService;->onDeviceUnlocked(I[B)Z

    move-result v4

    if-nez v4, :cond_19de

    .line 5672
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to SDP unlock"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5674
    :cond_19de
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5675
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut([B)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5300(Lcom/android/server/pm/PersonaManagerService;[B)V

    .line 5676
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 5682
    .end local v29    # "decodedCMK":[B
    .end local v50    # "ident":J
    :goto_19f3
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7200(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5683
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearResetPasswordKey(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7000(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 5624
    :cond_1a03
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7300(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a4f

    .line 5625
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside MSG_CALM_SDP 2 found pwd. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5626
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7300(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v5, v10, v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_19ab

    .line 5628
    :cond_1a4f
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_19ab

    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_19ab

    .line 5629
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(SDP-MINOR) check if finger print"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    const-string/jumbo v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v102

    check-cast v102, Lcom/android/server/LockSettingsService;

    .line 5632
    .local v102, "service":Lcom/android/server/LockSettingsService;
    if-eqz v102, :cond_19ab

    .line 5633
    const/16 v107, 0x0

    .line 5635
    .local v107, "token":Ljava/lang/String;
    :try_start_1a87
    const-string/jumbo v4, "lockscreen.password_type"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v102

    invoke-virtual {v0, v4, v6, v7, v10}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v92, v0

    .line 5637
    .local v92, "quality":I
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "password is not present in map CMK generating form pwd token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v92

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v10}, Lcom/android/server/pm/PersonaManagerService;->getIsFingerAsSupplement(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5640
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3700()Z

    move-result v4

    if-eqz v4, :cond_1aee

    .line 5641
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v107

    .line 5644
    :goto_1adb
    if-eqz v107, :cond_1af7

    .line 5645
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x2

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    move-object/from16 v0, v107

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v4, v10, v0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_19ab

    .line 5643
    :cond_1aee
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v107

    goto :goto_1adb

    .line 5648
    :cond_1af7
    const-string v4, "PersonaManagerService"

    const-string v5, "No token from TIMA"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1afe
    .catch Landroid/os/RemoteException; {:try_start_1a87 .. :try_end_1afe} :catch_1b00

    goto/16 :goto_19ab

    .line 5651
    .end local v92    # "quality":I
    :catch_1b00
    move-exception v93

    .line 5652
    .restart local v93    # "re":Landroid/os/RemoteException;
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "error in MSG_CALM_SDP while getting password quality"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19ab

    .line 5668
    .end local v93    # "re":Landroid/os/RemoteException;
    .end local v102    # "service":Lcom/android/server/LockSettingsService;
    .end local v107    # "token":Ljava/lang/String;
    .restart local v29    # "decodedCMK":[B
    :cond_1b0b
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v29

    goto/16 :goto_19c3

    .line 5678
    .end local v29    # "decodedCMK":[B
    :cond_1b14
    const-string v4, "PersonaManagerService.KeyMgnt"

    const-string v5, "In CALM_SDP: Container master key is NULL!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19f3

    .line 5689
    .end local v10    # "personaId":I
    .end local v26    # "containerMasterKey":Ljava/lang/String;
    .end local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :pswitch_1b1d
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleRestart(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$7500(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 5695
    :pswitch_1b2a
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5696
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PROCESS_ACTIVE_USER_CHANGE is called for personaId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5697
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateCurrentUserPolicy(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$3600(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5700
    const/16 v4, 0x64

    if-lt v10, v4, :cond_1bfa

    .line 5701
    :try_start_1b51
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v117

    .line 5702
    .local v117, "value":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PROCESS_ACTIVE_USER_CHANGE Owner accessability value->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v117

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5703
    const/4 v4, 0x1

    move/from16 v0, v117

    if-ne v0, v4, :cond_1baf

    .line 5704
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isSamsunAccessibilityServiceRunning()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7600(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_1bed

    .line 5705
    const-string v4, "PersonaManagerService"

    const-string v5, "MSG_PROCESS_ACTIVE_USER_CHANGE stopping owner accessibility..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5706
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5707
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$7702(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 5713
    :cond_1baf
    :goto_1baf
    new-instance v55, Landroid/content/Intent;

    invoke-direct/range {v55 .. v55}, Landroid/content/Intent;-><init>()V

    .line 5714
    .restart local v55    # "intent":Landroid/content/Intent;
    const-string v4, "com.sec.app.accesscontrol.ACTION_STOP_SELF"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5715
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1bca
    .catch Ljava/lang/Exception; {:try_start_1b51 .. :try_end_1bca} :catch_1bf5

    .line 5728
    .end local v55    # "intent":Landroid/content/Intent;
    .end local v117    # "value":I
    :cond_1bca
    :goto_1bca
    if-eqz v10, :cond_c

    .line 5729
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, obtainMessage(I)Landroid/os/Message;

    move-result-object v66

    .line 5730
    .local v66, "msg1":Landroid/os/Message;
    move-object/from16 v0, v66

    iput v10, v0, Landroid/os/Message;->arg1:I

    .line 5731
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_c

    .line 5709
    .end local v66    # "msg1":Landroid/os/Message;
    .restart local v117    # "value":I
    :cond_1bed
    :try_start_1bed
    const-string v4, "PersonaManagerService"

    const-string v5, "MSG_PROCESS_ACTIVE_USER_CHANGE not stopping owner accessibility..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bf4
    .catch Ljava/lang/Exception; {:try_start_1bed .. :try_end_1bf4} :catch_1bf5

    goto :goto_1baf

    .line 5724
    .end local v117    # "value":I
    :catch_1bf5
    move-exception v31

    .line 5725
    .restart local v31    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1bca

    .line 5717
    .end local v31    # "e":Ljava/lang/Exception;
    :cond_1bfa
    :try_start_1bfa
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PROCESS_ACTIVE_USER_CHANGE restartAccessibilityServiceForOwner -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$7700(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5718
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7700(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_1bca

    .line 5719
    const-string v4, "PersonaManagerService"

    const-string v5, "MSG_PROCESS_ACTIVE_USER_CHANGE starting owner accessibility"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5720
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5721
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$7702(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_1c46
    .catch Ljava/lang/Exception; {:try_start_1bfa .. :try_end_1c46} :catch_1bf5

    goto :goto_1bca

    .line 5738
    .end local v10    # "personaId":I
    :pswitch_1c47
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_NOTIFY_EXT_SDCARD_UPDATE is called for persona - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5739
    const/16 v80, 0x0

    .line 5740
    .restart local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5741
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v80

    .line 5742
    if-eqz v80, :cond_1cfb

    move-object/from16 v0, v80

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    if-eqz v4, :cond_1cfb

    .line 5743
    const/16 v56, 0x0

    .line 5744
    .local v56, "isSdcardAlertAlreadyShown":Z
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mShownSdcardAlertMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ca3

    .line 5745
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mShownSdcardAlertMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v56

    .line 5747
    :cond_1ca3
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v10}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and needsRestart-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v80

    iget-boolean v6, v0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and isSdcardAlertAlreadyShown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5748
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez v56, :cond_c

    move-object/from16 v0, v80

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    if-nez v4, :cond_c

    .line 5749
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->notifyNeedRestartMsg(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 5752
    .end local v56    # "isSdcardAlertAlreadyShown":Z
    :cond_1cfb
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Sdcard policy has not been updated..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5758
    .end local v10    # "personaId":I
    .end local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :pswitch_1d04
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5759
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    const-string v5, "PersonaManagerService$PersonaHandler.handleMessage() launchPersonaHome for kioskModeEnabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5760
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 5763
    const/16 v4, 0x24

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v5}, obtainMessage(III)Landroid/os/Message;

    move-result-object v46

    .line 5764
    .local v46, "forceUpdateMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_c

    .line 5769
    .end local v10    # "personaId":I
    .end local v46    # "forceUpdateMsg":Landroid/os/Message;
    :pswitch_1d28
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5770
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "force update wallpaper for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v10, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchPersonaWallpaper(IZ)V

    goto/16 :goto_c

    .line 5777
    .end local v10    # "personaId":I
    :pswitch_1d53
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5778
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyKeyguardShow(false) on MSG_DELETING_PERSONA for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5779
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1d8c

    .line 5780
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    const-string v6, "container_adminlock"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->blockStatusbar(IZLjava/lang/String;)V
    invoke-static {v4, v10, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$7900(Lcom/android/server/pm/PersonaManagerService;IZLjava/lang/String;)V

    .line 5781
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->blockIncomingCall(Z)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$8000(Lcom/android/server/pm/PersonaManagerService;Z)V

    .line 5783
    :cond_1d8c
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardShow(IZ)V

    goto/16 :goto_c

    .line 5790
    .end local v10    # "personaId":I
    :pswitch_1d96
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5791
    .restart local v10    # "personaId":I
    const/16 v80, 0x0

    .line 5792
    .restart local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v80

    .line 5793
    if-eqz v80, :cond_73

    .line 5794
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persona is in Urgent Update State, So not switching from Recent tasks to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5795
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v80 .. v80}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startActivityKnoxAppsUpdate(IIIZ)V
    invoke-static {v4, v5, v10, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$8100(Lcom/android/server/pm/PersonaManagerService;IIIZ)V

    goto/16 :goto_73

    .line 5803
    .end local v10    # "personaId":I
    .end local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :pswitch_1dcd
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5804
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setup completed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5806
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 5807
    :try_start_1df2
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/content/pm/PersonaInfo;

    .line 5808
    .local v77, "persona":Landroid/content/pm/PersonaInfo;
    if-eqz v77, :cond_1e17

    .line 5809
    const/4 v4, 0x1

    move-object/from16 v0, v77

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 5810
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 5811
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$8200(Lcom/android/server/pm/PersonaManagerService;)V

    .line 5813
    :cond_1e17
    monitor-exit v5
    :try_end_1e18
    .catchall {:try_start_1df2 .. :try_end_1e18} :catchall_1e55

    .line 5814
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v118, "Admin "

    move-object/from16 v0, v118

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v118, v0

    move-object/from16 v0, v118

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(I)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/pm/PersonaManagerService;->access$8300(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v118

    move-object/from16 v0, v118

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v118, " has successfully created container "

    move-object/from16 v0, v118

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 5813
    .end local v77    # "persona":Landroid/content/pm/PersonaInfo;
    :catchall_1e55
    move-exception v4

    :try_start_1e56
    monitor-exit v5
    :try_end_1e57
    .catchall {:try_start_1e56 .. :try_end_1e57} :catchall_1e55

    throw v4

    .line 5822
    .end local v10    # "personaId":I
    :pswitch_1e58
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5823
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->drawKnoxbadge(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$8400(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 5829
    .end local v10    # "personaId":I
    :pswitch_1e65
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removeKnoxBadge()V
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$8500(Lcom/android/server/pm/PersonaManagerService;)V

    goto/16 :goto_c

    .line 4947
    .restart local v43    # "file":Ljava/io/File;
    .restart local v52    # "in":Ljava/io/InputStream;
    .restart local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :catch_1e6e
    move-exception v4

    goto/16 :goto_8cb

    .end local v43    # "file":Ljava/io/File;
    :catch_1e71
    move-exception v5

    goto/16 :goto_bb4

    .line 4944
    .end local v52    # "in":Ljava/io/InputStream;
    .restart local v43    # "file":Ljava/io/File;
    .restart local v53    # "in":Ljava/io/InputStream;
    :catchall_1e74
    move-exception v4

    move-object/from16 v52, v53

    .end local v53    # "in":Ljava/io/InputStream;
    .restart local v52    # "in":Ljava/io/InputStream;
    goto/16 :goto_baf

    .line 4940
    .end local v52    # "in":Ljava/io/InputStream;
    .restart local v53    # "in":Ljava/io/InputStream;
    :catch_1e79
    move-exception v31

    move-object/from16 v52, v53

    .end local v53    # "in":Ljava/io/InputStream;
    .restart local v52    # "in":Ljava/io/InputStream;
    goto/16 :goto_b87

    .line 4626
    :pswitch_data_1e7e
    .packed-switch 0x1
        :pswitch_13a9
        :pswitch_143f
        :pswitch_c
        :pswitch_149c
        :pswitch_14a6
        :pswitch_1bb
        :pswitch_145
        :pswitch_74
        :pswitch_554
        :pswitch_1f6
        :pswitch_23b
        :pswitch_16f
        :pswitch_fb1
        :pswitch_743
        :pswitch_76b
        :pswitch_596
        :pswitch_5c6
        :pswitch_1653
        :pswitch_3b0
        :pswitch_1878
        :pswitch_18ee
        :pswitch_177b
        :pswitch_17ab
        :pswitch_17e4
        :pswitch_180f
        :pswitch_1b1d
        :pswitch_669
        :pswitch_1c47
        :pswitch_72b
        :pswitch_624
        :pswitch_653
        :pswitch_65e
        :pswitch_648
        :pswitch_1b2a
        :pswitch_1d04
        :pswitch_1d28
        :pswitch_1d53
        :pswitch_703
        :pswitch_d8
        :pswitch_1dcd
        :pswitch_1d96
        :pswitch_1e58
        :pswitch_1e65
        :pswitch_754
    .end packed-switch
.end method
