.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.super Lcom/samsung/android/contextaware/dataprovider/DataProvider;
.source "SensorHubProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubCmdProtocol;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;
    }
.end annotation


# static fields
.field public static final I2C_COMM_ERROR:I = -0x5

.field public static final NOT_RECEIVE_ACK:I = -0xb


# instance fields
.field private mFaultDetectionResult:I

.field private final mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 6
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    return-void
.end method


# virtual methods
.method protected final addRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .registers 3
    .param p1, "parser"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    .prologue
    .line 801
    iget-object v0, p0, mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 802
    iget-object v0, p0, mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_11
    return-void
.end method

.method protected final checkFaultDetectionResult()Z
    .registers 3

    .prologue
    .line 769
    iget v0, p0, mFaultDetectionResult:I

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x1

    iput v0, p0, mFaultDetectionResult:I

    .line 139
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->clear()V

    .line 140
    return-void
.end method

.method public disable()V
    .registers 4

    .prologue
    .line 120
    invoke-virtual {p0}, getDataPacketToUnregisterLib()[B

    move-result-object v0

    .line 121
    .local v0, "dataPacket":[B
    invoke-virtual {p0}, getInstLibType()B

    move-result v1

    if-ltz v1, :cond_15

    invoke-virtual {p0}, getInstructionForDisable()B

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    array-length v1, v0

    if-gtz v1, :cond_1e

    .line 123
    :cond_15
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, mFaultDetectionResult:I

    .line 129
    :goto_1d
    return-void

    .line 127
    :cond_1e
    invoke-virtual {p0}, getInstructionForDisable()B

    move-result v1

    invoke-virtual {p0}, getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, sendCmdToSensorHub(BB[B)V

    goto :goto_1d
.end method

.method protected final disableForRestore()V
    .registers 1

    .prologue
    .line 175
    return-void
.end method

.method public enable()V
    .registers 4

    .prologue
    .line 102
    invoke-virtual {p0}, getDataPacketToRegisterLib()[B

    move-result-object v0

    .line 103
    .local v0, "dataPacket":[B
    invoke-virtual {p0}, getInstLibType()B

    move-result v1

    if-ltz v1, :cond_f

    if-eqz v0, :cond_f

    array-length v1, v0

    if-gtz v1, :cond_18

    .line 105
    :cond_f
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, mFaultDetectionResult:I

    .line 111
    :goto_17
    return-void

    .line 109
    :cond_18
    invoke-virtual {p0}, getInstructionForEnable()B

    move-result v1

    invoke-virtual {p0}, getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, sendCmdToSensorHub(BB[B)V

    goto :goto_17
.end method

.method protected final enableForRestore()V
    .registers 1

    .prologue
    .line 164
    return-void
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 781
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Action"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getDataPacketToRegisterLib()[B
    .registers 2

    .prologue
    .line 597
    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method protected getDataPacketToUnregisterLib()[B
    .registers 2

    .prologue
    .line 606
    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 751
    const/4 v0, 0x1

    .line 753
    .local v0, "result":I
    invoke-virtual {p0}, checkFaultDetectionResult()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 754
    const/4 v0, 0x0

    .line 759
    :goto_8
    iget v1, p0, mFaultDetectionResult:I

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 756
    :cond_13
    const/4 v0, 0x1

    goto :goto_8
.end method

.method protected abstract getInstLibType()B
.end method

.method protected abstract getInstructionForDisable()B
.end method

.method protected abstract getInstructionForEnable()B
.end method

.method protected getParseSyntaxTable()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 791
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final initializeManager()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method public parse([BI)I
    .registers 35
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 204
    move/from16 v23, p2

    .line 206
    .local v23, "tmpNext":I
    invoke-virtual/range {p0 .. p0}, getParseSyntaxTable()Ljava/util/ArrayList;

    move-result-object v20

    .line 208
    .local v20, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    if-eqz v20, :cond_ac2

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-eqz v26, :cond_ac2

    .line 211
    const/16 v21, 0x0

    .line 214
    .local v21, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v26

    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->MESSAGE_TYPE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_cb

    .line 217
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    sub-int v26, v26, v23

    add-int/lit8 v26, v26, -0x1

    if-gez v26, :cond_47

    .line 218
    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 219
    const/16 v26, -0x1

    .line 581
    .end local v21    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    :goto_46
    return v26

    .line 222
    .restart local v21    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    :cond_47
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .local v24, "tmpNext":I
    aget-byte v15, p1, v23

    .line 224
    .local v15, "mType":I
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_88

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 225
    .local v13, "k":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->messageType()B

    move-result v26

    move/from16 v0, v26

    if-ne v0, v15, :cond_4f

    .line 226
    move-object/from16 v21, v13

    .line 227
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 232
    .end local v13    # "k":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    :cond_88
    if-nez v21, :cond_9a

    .line 233
    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 234
    const/16 v23, -0x1

    move/from16 v26, v23

    move/from16 v23, v24

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    goto :goto_46

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    :cond_9a
    move/from16 v23, v24

    .line 242
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "mType":I
    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    :goto_9c
    const/4 v4, 0x0

    .line 243
    .local v4, "arraySize":I
    const/16 v22, 0x0

    .line 244
    .local v22, "temp":I
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_af2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    .line 246
    .local v8, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    sub-int v26, v26, v23

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->size()B

    move-result v27

    sub-int v26, v26, v27

    if-gez v26, :cond_d8

    .line 247
    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 248
    const/16 v26, -0x1

    goto/16 :goto_46

    .line 238
    .end local v4    # "arraySize":I
    .end local v8    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .end local v22    # "temp":I
    :cond_cb
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    check-cast v21, Ljava/util/ArrayList;

    .restart local v21    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    goto :goto_9c

    .line 251
    .restart local v4    # "arraySize":I
    .restart local v8    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .restart local v22    # "temp":I
    :cond_d8
    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_afa

    .line 353
    :goto_e7
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    const-string v27, "DataSize"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_ff

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    const-string v27, "DataCount"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_101

    .line 354
    :cond_ff
    move/from16 v4, v22

    .line 357
    :cond_101
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->repeatList()Ljava/util/ArrayList;

    move-result-object v19

    .line 358
    .local v19, "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    if-eqz v19, :cond_a3

    .line 359
    const/16 v25, 0x0

    .line 360
    .local v25, "totalSize":I
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 363
    .local v17, "objMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_112
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_541

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    .line 364
    .local v18, "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_b16

    .line 392
    :goto_12d
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->size()B

    move-result v26

    add-int v25, v25, v26

    .line 393
    goto :goto_112

    .line 254
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v17    # "objMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .end local v19    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v25    # "totalSize":I
    :pswitch_134
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v26, p1, v23

    if-nez v26, :cond_150

    const/16 v26, 0x0

    :goto_144
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    move/from16 v23, v24

    .line 257
    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    goto :goto_e7

    .line 254
    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    :cond_150
    const/16 v26, 0x1

    goto :goto_144

    .line 260
    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    :pswitch_153
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v22, p1, v23

    .line 261
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    div-int v28, v22, v28

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move/from16 v23, v24

    .line 262
    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    goto/16 :goto_e7

    .line 265
    :pswitch_171
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v22

    .line 269
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    div-int v28, v22, v28

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    goto/16 :goto_e7

    .line 273
    :pswitch_1b5
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    div-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move/from16 v23, v24

    .line 277
    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    goto/16 :goto_e7

    .line 280
    :pswitch_1fd
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    const-string v27, "TimeStamp"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_26a

    .line 281
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v28

    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x2

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x3

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x4

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v31, p1, v23

    aput-byte v31, v29, v30

    const/16 v30, 0x5

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v31, p1, v24

    aput-byte v31, v29, v30

    const/16 v30, 0x6

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v31, p1, v23

    aput-byte v31, v29, v30

    const/16 v30, 0x7

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v31, p1, v24

    aput-byte v31, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v28

    invoke-virtual/range {v26 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    goto/16 :goto_e7

    .line 294
    :cond_26a
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    div-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    goto/16 :goto_e7

    .line 302
    :pswitch_2b2
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x8

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x4

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x5

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x6

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x7

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v28

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    div-long v28, v28, v30

    invoke-virtual/range {v26 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    goto/16 :goto_e7

    .line 311
    :pswitch_31f
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    goto/16 :goto_e7

    .line 318
    :pswitch_368
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    move/from16 v23, v24

    .line 322
    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    goto/16 :goto_e7

    .line 325
    :pswitch_3b5
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    goto/16 :goto_e7

    .line 332
    :pswitch_402
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    div-double v28, v28, v30

    invoke-virtual/range {v26 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    goto/16 :goto_e7

    .line 339
    :pswitch_446
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    div-double v28, v28, v30

    invoke-virtual/range {v26 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move/from16 v23, v24

    .line 343
    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    goto/16 :goto_e7

    .line 346
    :pswitch_48e
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    div-double v28, v28, v30

    invoke-virtual/range {v26 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    goto/16 :goto_e7

    .line 369
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v17    # "objMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .restart local v19    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v25    # "totalSize":I
    :pswitch_4d6
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    const-string v27, "TimeStampArray"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4f5

    .line 370
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    new-array v0, v4, [J

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12d

    .line 372
    :cond_4f5
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    new-array v0, v4, [I

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12d

    .line 377
    :pswitch_508
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    new-array v0, v4, [J

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12d

    .line 383
    :pswitch_51b
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    new-array v0, v4, [F

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12d

    .line 389
    :pswitch_52e
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    new-array v0, v4, [D

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12d

    .line 397
    .end local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    :cond_541
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    sub-int v26, v26, v23

    mul-int v27, v25, v4

    sub-int v26, v26, v27

    if-gez v26, :cond_55b

    .line 398
    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 399
    const/16 v26, -0x1

    goto/16 :goto_46

    .line 402
    :cond_55b
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_55c
    if-ge v12, v4, :cond_9e9

    .line 404
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_562
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9e5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    .line 410
    .restart local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_b30

    goto :goto_562

    .line 413
    :pswitch_57e
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [I

    move-object/from16 v11, v26

    check-cast v11, [I

    .line 414
    .local v11, "intArray":[I
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v26, p1, v23

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    div-int v26, v26, v27

    aput v26, v11, v12

    .line 415
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v23, v24

    .line 416
    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    goto :goto_562

    .line 419
    .end local v11    # "intArray":[I
    :pswitch_5af
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [I

    move-object/from16 v11, v26

    check-cast v11, [I

    .line 420
    .restart local v11    # "intArray":[I
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    div-int v26, v26, v27

    aput v26, v11, v12

    .line 424
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_562

    .line 428
    .end local v11    # "intArray":[I
    :pswitch_607
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [I

    move-object/from16 v11, v26

    check-cast v11, [I

    .line 429
    .restart local v11    # "intArray":[I
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    div-int v26, v26, v27

    aput v26, v11, v12

    .line 433
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v23, v24

    .line 434
    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    goto/16 :goto_562

    .line 437
    .end local v11    # "intArray":[I
    :pswitch_663
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    const-string v27, "TimeStampArray"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6d9

    .line 438
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [J

    move-object/from16 v14, v26

    check-cast v14, [J

    .line 439
    .local v14, "longArray":[J
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v26

    const/16 v27, 0x8

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v29, v27, v28

    const/16 v28, 0x1

    const/16 v29, 0x0

    aput-byte v29, v27, v28

    const/16 v28, 0x2

    const/16 v29, 0x0

    aput-byte v29, v27, v28

    const/16 v28, 0x3

    const/16 v29, 0x0

    aput-byte v29, v27, v28

    const/16 v28, 0x4

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v29, p1, v23

    aput-byte v29, v27, v28

    const/16 v28, 0x5

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v29, p1, v24

    aput-byte v29, v27, v28

    const/16 v28, 0x6

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v29, p1, v23

    aput-byte v29, v27, v28

    const/16 v28, 0x7

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v29, p1, v24

    aput-byte v29, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v26

    aput-wide v26, v14, v12

    goto/16 :goto_562

    .line 449
    .end local v14    # "longArray":[J
    :cond_6d9
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [I

    move-object/from16 v11, v26

    check-cast v11, [I

    .line 450
    .restart local v11    # "intArray":[I
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    div-int v26, v26, v27

    aput v26, v11, v12

    .line 454
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_562

    .line 459
    .end local v11    # "intArray":[I
    :pswitch_735
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [J

    move-object/from16 v14, v26

    check-cast v14, [J

    .line 460
    .restart local v14    # "longArray":[J
    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x4

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x5

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x6

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x7

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v26

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    div-long v26, v26, v28

    aput-wide v26, v14, v12

    .line 466
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_562

    .line 470
    .end local v14    # "longArray":[J
    :pswitch_7b6
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [F

    move-object/from16 v7, v26

    check-cast v7, [F

    .line 471
    .local v7, "floatArray":[F
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    aput v26, v7, v12

    .line 475
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_562

    .line 479
    .end local v7    # "floatArray":[F
    :pswitch_813
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [F

    move-object/from16 v7, v26

    check-cast v7, [F

    .line 480
    .restart local v7    # "floatArray":[F
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    aput v26, v7, v12

    .line 484
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v23, v24

    .line 485
    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    goto/16 :goto_562

    .line 488
    .end local v7    # "floatArray":[F
    :pswitch_874
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [F

    move-object/from16 v7, v26

    check-cast v7, [F

    .line 489
    .restart local v7    # "floatArray":[F
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    aput v26, v7, v12

    .line 493
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_562

    .line 497
    .end local v7    # "floatArray":[F
    :pswitch_8d5
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [D

    move-object/from16 v6, v26

    check-cast v6, [D

    .line 498
    .local v6, "doubleArray":[D
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    div-double v26, v26, v28

    aput-wide v26, v6, v12

    .line 502
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_562

    .line 506
    .end local v6    # "doubleArray":[D
    :pswitch_92d
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [D

    move-object/from16 v6, v26

    check-cast v6, [D

    .line 507
    .restart local v6    # "doubleArray":[D
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    div-double v26, v26, v28

    aput-wide v26, v6, v12

    .line 511
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v23, v24

    .line 512
    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    goto/16 :goto_562

    .line 515
    .end local v6    # "doubleArray":[D
    :pswitch_989
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [D

    move-object/from16 v6, v26

    check-cast v6, [D

    .line 516
    .restart local v6    # "doubleArray":[D
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    div-double v26, v26, v28

    aput-wide v26, v6, v12

    .line 520
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_562

    .line 402
    .end local v6    # "doubleArray":[D
    .end local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    :cond_9e5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_55c

    .line 529
    :cond_9e9
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9ed
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    .line 531
    .restart local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_b4a

    goto :goto_9ed

    .line 536
    :pswitch_a09
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    const-string v27, "TimeStampArray"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a37

    .line 537
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [J

    check-cast v26, [J

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    goto :goto_9ed

    .line 539
    :cond_a37
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [I

    check-cast v26, [I

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    goto :goto_9ed

    .line 544
    :pswitch_a59
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [J

    check-cast v26, [J

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    goto/16 :goto_9ed

    .line 550
    :pswitch_a7c
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [F

    check-cast v26, [F

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    goto/16 :goto_9ed

    .line 556
    :pswitch_a9f
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [D

    check-cast v26, [D

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    goto/16 :goto_9ed

    .line 569
    .end local v4    # "arraySize":I
    .end local v8    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "j":I
    .end local v17    # "objMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .end local v19    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v21    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v22    # "temp":I
    .end local v25    # "totalSize":I
    :cond_ac2
    invoke-virtual/range {p0 .. p0}, getContextValueNames()[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v16, v26, v27

    .line 571
    .local v16, "name":Ljava/lang/String;
    if-eqz v16, :cond_add

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_add

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    sub-int v26, v26, v23

    add-int/lit8 v26, v26, -0x1

    if-gez v26, :cond_ae1

    .line 572
    :cond_add
    const/16 v26, -0x1

    goto/16 :goto_46

    .line 575
    :cond_ae1
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v5, p1, v23

    .line 576
    .local v5, "data":I
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move/from16 v23, v24

    .line 579
    .end local v5    # "data":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v24    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    :cond_af2
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->notifyObserver()V

    move/from16 v26, v23

    .line 581
    goto/16 :goto_46

    .line 251
    nop

    :pswitch_data_afa
    .packed-switch 0x1
        :pswitch_134
        :pswitch_153
        :pswitch_171
        :pswitch_1b5
        :pswitch_1fd
        :pswitch_2b2
        :pswitch_31f
        :pswitch_368
        :pswitch_3b5
        :pswitch_402
        :pswitch_446
        :pswitch_48e
    .end packed-switch

    .line 364
    :pswitch_data_b16
    .packed-switch 0x2
        :pswitch_4d6
        :pswitch_4d6
        :pswitch_4d6
        :pswitch_4d6
        :pswitch_508
        :pswitch_51b
        :pswitch_51b
        :pswitch_51b
        :pswitch_52e
        :pswitch_52e
        :pswitch_52e
    .end packed-switch

    .line 410
    :pswitch_data_b30
    .packed-switch 0x2
        :pswitch_57e
        :pswitch_5af
        :pswitch_607
        :pswitch_663
        :pswitch_735
        :pswitch_7b6
        :pswitch_813
        :pswitch_874
        :pswitch_8d5
        :pswitch_92d
        :pswitch_989
    .end packed-switch

    .line 531
    :pswitch_data_b4a
    .packed-switch 0x2
        :pswitch_a09
        :pswitch_a09
        :pswitch_a09
        :pswitch_a09
        :pswitch_a59
        :pswitch_a7c
        :pswitch_a7c
        :pswitch_a7c
        :pswitch_a9f
        :pswitch_a9f
        :pswitch_a9f
    .end packed-switch
.end method

.method public final parseForRequestType([BI)I
    .registers 10
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v5, -0x1

    .line 688
    move v3, p2

    .line 690
    .local v3, "tmpNext":I
    array-length v6, p1

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_12

    .line 691
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 711
    :goto_11
    return v5

    .line 695
    :cond_12
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v2, p1, v3

    .line 697
    .local v2, "requestType":I
    iget-object v6, p0, mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v6, :cond_22

    iget-object v6, p0, mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 698
    :cond_22
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v3, v4

    .line 701
    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    goto :goto_11

    .line 704
    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :cond_31
    iget-object v5, p0, mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    .line 705
    .local v1, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;
    invoke-interface {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->getRequestType()I

    move-result v5

    if-ne v2, v5, :cond_37

    .line 706
    invoke-interface {v1, p1, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->parse([BI)I

    move-result v3

    .end local v1    # "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;
    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :goto_4d
    move v5, v3

    .line 711
    goto :goto_11

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :cond_4f
    move v3, v4

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    goto :goto_4d
.end method

.method public final pause()V
    .registers 1

    .prologue
    .line 721
    return-void
.end method

.method protected final removeRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .registers 3
    .param p1, "parser"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    .prologue
    .line 814
    iget-object v0, p0, mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 815
    iget-object v0, p0, mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 817
    :cond_11
    return-void
.end method

.method protected final reset()V
    .registers 1

    .prologue
    .line 739
    invoke-virtual {p0}, enable()V

    .line 740
    return-void
.end method

.method public final resume()V
    .registers 1

    .prologue
    .line 730
    return-void
.end method

.method public final sendCmdToSensorHub(BB[B)V
    .registers 7
    .param p1, "inst"    # B
    .param p2, "type"    # B
    .param p3, "data"    # [B

    .prologue
    .line 191
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 v2, 0x1

    aput-byte p2, v1, v2

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    iput v0, p0, mFaultDetectionResult:I

    .line 193
    return-void
.end method

.method protected final sendCommonValueToSensorHub(B[B)Z
    .registers 9
    .param p1, "type"    # B
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 620
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [B

    const/16 v5, -0x3f

    aput-byte v5, v4, v1

    aput-byte p1, v4, v2

    invoke-virtual {v3, p2, v4}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 622
    .local v0, "result":I
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v0, v3, :cond_23

    .line 623
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 627
    :goto_22
    return v1

    :cond_23
    move v1, v2

    goto :goto_22
.end method

.method protected final sendPropertyValueToSensorHub(BBB[B)Z
    .registers 11
    .param p1, "category"    # B
    .param p2, "libType"    # B
    .param p3, "dataType"    # B
    .param p4, "data"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 669
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/16 v5, -0x3f

    aput-byte v5, v4, v1

    aput-byte p1, v4, v2

    const/4 v5, 0x2

    aput-byte p2, v4, v5

    const/4 v5, 0x3

    aput-byte p3, v4, v5

    invoke-virtual {v3, p4, v4}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 672
    .local v0, "result":I
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v0, v3, :cond_29

    .line 673
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 677
    :goto_28
    return v1

    :cond_29
    move v1, v2

    goto :goto_28
.end method

.method protected final sendPropertyValueToSensorHub(BB[B)Z
    .registers 10
    .param p1, "libType"    # B
    .param p2, "dataType"    # B
    .param p3, "data"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 643
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [B

    const/16 v5, -0x3f

    aput-byte v5, v4, v1

    aput-byte p1, v4, v2

    const/4 v5, 0x2

    aput-byte p2, v4, v5

    invoke-virtual {v3, p3, v4}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 646
    .local v0, "result":I
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v0, v3, :cond_26

    .line 647
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 651
    :goto_25
    return v1

    :cond_26
    move v1, v2

    goto :goto_25
.end method

.method protected final terminateManager()V
    .registers 1

    .prologue
    .line 92
    return-void
.end method
